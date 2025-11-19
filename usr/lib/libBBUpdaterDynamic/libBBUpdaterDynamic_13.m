uint64_t BBUEUR20Programmer::handleMaverickGetNonce_nl(BBUEUR20Programmer *this, int a2, void *a3)
{
  bzero(*(this + 544), 0x400uLL);
  BBUFeedback::handleComment(*(this + 1), "Starting Maverick Protocol (%s)", "handleMaverickGetNonce_nl");
  v5 = *(this + 2);
  v6 = *(this + 544);
  if (ETLSAHCommandReceive())
  {
    v7 = *(this + 544);
    if (ETLSAHCommandParseMaverickEraseQuery())
    {
      BBUFeedback::handleComment(*(this + 1), "Setting HSIC cookie? %d", *(this + 64));
      if (a2)
      {
        *(this + 4300) = 1;
      }

      v8 = *(this + 544);
      if (ETLSAHCommandCreateMaverickEraseResponse())
      {
        BBUFeedback::handleComment(*(this + 1), "Sending Erase Response: Length %u Type %u  Erase EFS %u", *(*(this + 544) + 4), **(this + 544), a2);
        v9 = *(this + 2);
        v10 = *(this + 544);
        ETLSAHCommandSend();
      }
    }
  }

  v11 = *(this + 2);
  v12 = *(this + 544);
  v13 = 3;
  if (ETLSAHCommandReceive())
  {
    BBUFeedback::handleComment(*(this + 1), "Checking Manifest Request: Length %u Type %u", *(*(this + 544) + 4), **(this + 544));
    v14 = *(this + 544);
    if (ETLSAHCommandParseMaverickRootManifestQuery())
    {
      return 0;
    }

    else
    {
      return 3;
    }
  }

  return v13;
}

uint64_t BBUEUR20Programmer::gatherPersonalizationParameters(BBUEUR20Programmer *this, int a2, char a3, unsigned int *a4, BBUPersonalizationParameters *a5)
{
  v39 = *MEMORY[0x1E69E9840];
  v32 = 256;
  v6 = *(this + 1);
  if ((a3 & 1) == 0)
  {
    BBUFeedback::handleComment(v6, "Not in restore mode - skipping gathering Personalization parameters...");
    Nonce_nl = 0;
    goto LABEL_6;
  }

  BBUFeedback::handleBeginPhase(v6, "Gathering Personalization parameters...");
  v10 = (*(*this + 184))(this, &v32);
  if (!v10)
  {
    if (v32 == 2)
    {
      Nonce_nl = 28;
      goto LABEL_4;
    }

    if (v32 != 256)
    {
      Nonce_nl = 12;
      goto LABEL_4;
    }

    if (capabilities::radio::mav25Plus(v10))
    {
      v38 = 0;
      v36 = 0u;
      v37 = 0u;
      *v34 = 0u;
      *v35 = 0u;
      *__p = 0u;
      Nonce_nl = BBUEUR20Programmer::handleMaverickGetNonce_nl(this, a2, __p);
      if (Nonce_nl)
      {
        goto LABEL_4;
      }

      v14 = operator new(0x10uLL);
      *v14 = &unk_1F5F04B68;
      v14[1] = 0;
      v15 = *MEMORY[0x1E695E480];
      v14[1] = CFDataCreate(*MEMORY[0x1E695E480], __p + 4, 20);
      v16 = BBUEURPersonalizationParameters::EURChipID::createFromChipID(LODWORD(v35[0]));
      v17 = BBUEURPersonalizationParameters::EURSerialNumber::createFromSerialNumber(&v34[1], 0x40);
      v18 = operator new(0x10uLL);
      *v18 = &unk_1F5F04C88;
      v18[1] = 0;
      v19 = v18 + 1;
      v20 = CFDataCreate(v15, v35 + 4, 48);
    }

    else
    {
      v36 = 0u;
      v37 = 0u;
      *v34 = 0u;
      *v35 = 0u;
      *__p = 0u;
      Nonce_nl = BBUEUR20Programmer::handleMaverickGetNonce_nl(this, a2, __p);
      if (Nonce_nl)
      {
        goto LABEL_4;
      }

      v14 = operator new(0x10uLL);
      *v14 = &unk_1F5F04B68;
      v14[1] = 0;
      v21 = *MEMORY[0x1E695E480];
      v14[1] = CFDataCreate(*MEMORY[0x1E695E480], __p + 4, 20);
      v16 = BBUEURPersonalizationParameters::EURChipID::createFromChipID(HIDWORD(v34[1]));
      v17 = BBUEURPersonalizationParameters::EURSerialNumber::createFromSerialNumber(&v34[1], 0x20);
      v18 = operator new(0x10uLL);
      *v18 = &unk_1F5F04C88;
      v18[1] = 0;
      v19 = v18 + 1;
      v20 = CFDataCreate(v21, v35, 48);
    }

    *v19 = v20;
    *a4 = __p[0];
    v22 = *(a5 + 1);
    if (v22)
    {
      (*(*v22 + 8))(v22);
    }

    *(a5 + 1) = v14;
    v23 = *(a5 + 2);
    if (v23)
    {
      (*(*v23 + 8))(v23);
    }

    *(a5 + 2) = v16;
    (*(*a5 + 16))(a5, v17);
    (*(*a5 + 24))(a5, v18);
    if (v17 && v16)
    {
      v24 = *(this + 1);
      v25 = (*(*v16 + 24))(v16);
      BBUFeedback::handleComment(v24, "   SNUM: %s / CHIPID: 0x%08x", "<< SNUM >>", v25);
    }

    v26 = *(this + 1);
    (*(*v14 + 24))(__p, v14);
    if (SHIBYTE(v34[0]) >= 0)
    {
      v27 = __p;
    }

    else
    {
      v27 = __p[0];
    }

    BBUFeedback::handleComment(v26, "   NONCE: %s", v27);
    if (SHIBYTE(v34[0]) < 0)
    {
      operator delete(__p[0]);
    }

    v28 = *(this + 1);
    (*(*v18 + 3))(__p, v18);
    if (SHIBYTE(v34[0]) >= 0)
    {
      v29 = __p;
    }

    else
    {
      v29 = __p[0];
    }

    BBUFeedback::handleComment(v28, "   PUBLIC_KEY_HASH: %s", v29);
    if (SHIBYTE(v34[0]) < 0)
    {
      operator delete(__p[0]);
    }

    v30 = *(this + 1);
    v31 = (*(**(a5 + 3) + 24))(*(a5 + 3));
    BBUFeedback::handleComment(v30, "   CertID: %u", v31);
    Nonce_nl = 0;
    goto LABEL_4;
  }

  Nonce_nl = 48;
LABEL_4:
  (*(**(this + 1) + 16))(*(this + 1), Nonce_nl);
LABEL_6:
  v12 = *MEMORY[0x1E69E9840];
  return Nonce_nl;
}

void sub_1E52E99F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BBUEUR20Programmer::handleSaharaMode_nl(BBUFeedback **a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2;
  v47 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v9 = a2 >= 2;
    if (a2 <= 2)
    {
LABEL_3:
      if (!v9)
      {
        result = (*(*a1 + 28))(a1, a1 + 5);
        if (result)
        {
          if (gBBULogMaskGet(void)::once == -1)
          {
            if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
            {
              goto LABEL_56;
            }
          }

          else
          {
            v33 = result;
            dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
            result = v33;
            if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
            {
              goto LABEL_56;
            }
          }

          if ((gBBULogVerbosity & 0x80000000) == 0)
          {
            v14 = "failed sending image\n";
LABEL_55:
            v31 = result;
            _BBULog(1, 0, "BBUProgrammer", "", v14, v11, v12, v13, v40);
            result = v31;
            goto LABEL_56;
          }
        }

        goto LABEL_56;
      }

      if (a2 == 2)
      {
        result = 28;
        goto LABEL_56;
      }

LABEL_25:
      if (gBBULogMaskGet(void)::once == -1)
      {
        result = 12;
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
        {
          goto LABEL_56;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        result = 12;
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
        {
          goto LABEL_56;
        }
      }

      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        ETLSAHModeAsString();
        _BBULog(1, 0, "BBUProgrammer", "", "unexpected start mode %u, %s\n", v26, v27, v28, v8);
        result = 12;
      }

      goto LABEL_56;
    }
  }

  else
  {
    a4 = (*(a1 + 1070) - 8);
    v9 = a2 >= 2;
    if (a2 <= 2)
    {
      goto LABEL_3;
    }
  }

  if (a2 == 3)
  {
    result = (*(*a1 + 32))(a1, 9);
    if (result)
    {
      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
        {
          goto LABEL_56;
        }
      }

      else
      {
        v34 = result;
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        result = v34;
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
        {
          goto LABEL_56;
        }
      }

      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        v14 = "failed handling command mode\n";
        goto LABEL_55;
      }
    }

    goto LABEL_56;
  }

  if (a2 != 256)
  {
    goto LABEL_25;
  }

  v15 = a4;
  if (capabilities::radio::mav25Plus(a1))
  {
    v46 = 0;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v41 = 0u;
    if ((a5 & 1) == 0)
    {
      result = BBUEUR20Programmer::handleMaverickGetNonce_nl(a1, 0, &v41);
      v22 = v41;
      if (result)
      {
        if (gBBULogMaskGet(void)::once == -1)
        {
          v23 = a7;
          v24 = a6;
          v25 = a3;
          if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
          {
            goto LABEL_32;
          }

LABEL_41:
          if ((gBBULogVerbosity & 0x80000000) == 0)
          {
            v29 = result;
            v30 = v22;
            _BBULog(1, 0, "BBUProgrammer", "", "failed getting nonce\n", v20, v23, v21, v40);
            v22 = v30;
            v25 = a3;
            v24 = a6;
            v23 = a7;
            result = v29;
          }

          goto LABEL_32;
        }

LABEL_63:
        v35 = result;
        v36 = v22;
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        v22 = v36;
        v25 = a3;
        v24 = a6;
        v23 = a7;
        result = v35;
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_41;
      }

      goto LABEL_31;
    }

    goto LABEL_30;
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v41 = 0u;
  if (a5)
  {
LABEL_30:
    v22 = v15;
    result = 0;
LABEL_31:
    v23 = a7;
    v24 = a6;
    v25 = a3;
    goto LABEL_32;
  }

  result = BBUEUR20Programmer::handleMaverickGetNonce_nl(a1, 0, &v41);
  v22 = v41;
  if (!result)
  {
    goto LABEL_31;
  }

  if (gBBULogMaskGet(void)::once != -1)
  {
    goto LABEL_63;
  }

  v23 = a7;
  v24 = a6;
  v25 = a3;
  if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
  {
    goto LABEL_41;
  }

LABEL_32:
  if (result)
  {
    goto LABEL_56;
  }

  result = (*(*a1 + 24))(a1, v25, v22, v24, 0, a5, v23);
  if (!result)
  {
    if (a5)
    {
      BBUFeedback::handleComment(a1[1], "Skipping sahara config command");
    }

    else
    {
      result = BBUEUR20Programmer::handleMaverickConfig_nl(a1);
      if (result)
      {
        if (gBBULogMaskGet(void)::once == -1)
        {
          if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
          {
            goto LABEL_56;
          }
        }

        else
        {
          v39 = result;
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          result = v39;
          if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
          {
            goto LABEL_56;
          }
        }

        if ((gBBULogVerbosity & 0x80000000) == 0)
        {
          v14 = "failed handling sahara config command\n";
          goto LABEL_55;
        }

        goto LABEL_56;
      }
    }

    result = (*(*a1 + 25))(a1);
    if (result)
    {
      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
        {
          goto LABEL_56;
        }
      }

      else
      {
        v38 = result;
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        result = v38;
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
        {
          goto LABEL_56;
        }
      }

      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        v14 = "failed handling maverick end\n";
        goto LABEL_55;
      }
    }

    goto LABEL_56;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v37 = result;
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    result = v37;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_56;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v14 = "failed handling sahara send hashes command\n";
    goto LABEL_55;
  }

LABEL_56:
  v32 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t BBUEUR20Programmer::handleMaverickConfig_nl(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = operator new[](0x400uLL);
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v26[14] = v3;
  v26[15] = v3;
  v26[12] = v3;
  v26[13] = v3;
  v26[10] = v3;
  v26[11] = v3;
  v26[8] = v3;
  v26[9] = v3;
  v26[6] = v3;
  v26[7] = v3;
  v26[4] = v3;
  v26[5] = v3;
  v26[2] = v3;
  v26[3] = v3;
  v26[0] = v3;
  v26[1] = v3;
  v25 = v3;
  BBUFeedback::handleComment(*(a1 + 8), "Receiving baseband config...");
  v4 = *(a1 + 16);
  if (ETLSAHCommandReceive())
  {
    v5 = ETLSAHCommandParseMaverickConfigQuery();
    v6 = *(a1 + 8);
    if (v5)
    {
      BBUFeedback::handleComment(v6, "Baseband config:");
      BBUFeedback::handleComment(*(a1 + 8), "    send_info_ver:        0x%04x", v25);
      BBUFeedback::handleComment(*(a1 + 8), "    sbl_sec_version:      0x%04x", DWORD1(v25));
      BBUFeedback::handleComment(*(a1 + 8), "    power_sequence_index: 0x%04x", DWORD2(v25));
      if (HIDWORD(v25))
      {
        v7 = "true";
      }

      else
      {
        v7 = "false";
      }

      BBUFeedback::handleComment(*(a1 + 8), "    coredump_supported:   %s", v7);
      BBUFeedback::handleComment(*(a1 + 8), "    bb_version_string:    %s", v26);
      v8 = *(&v25 | 0xC);
      v9 = *(a1 + 24);
      if (TelephonyBasebandSetBasebandProperty())
      {
        v13 = *(a1 + 24);
        if (TelephonyBasebandSetBasebandProperty())
        {
          StageContext = BBUFeedback::getStageContext(*(a1 + 8));
          if ((StageContext - 2) <= 6)
          {
            v15 = dword_1E5392980[StageContext - 2];
          }

          v20 = capabilities::pci::supportsPCIAudio(StageContext);
          BBUFeedback::handleComment(*(a1 + 8), "Sending flag to BB: 0x%llx", v20);
          bzero(v2, 0x400uLL);
          MaverickConfigResponse = ETLSAHCommandCreateMaverickConfigResponse();
          v22 = *(a1 + 8);
          if (MaverickConfigResponse)
          {
            BBUFeedback::handleComment(v22, "Sending config response...");
            v23 = *(a1 + 16);
            if (ETLSAHCommandSend())
            {
              v16 = 0;
              goto LABEL_23;
            }

            BBUFeedback::handleComment(*(a1 + 8), "failed sending maverick config response");
            goto LABEL_11;
          }

          BBUFeedback::handleComment(v22, "failed creating maverick config response");
LABEL_13:
          v16 = 11;
          goto LABEL_23;
        }

        if (gBBULogMaskGet(void)::once == -1)
        {
          v16 = 11;
          if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
          {
            goto LABEL_23;
          }
        }

        else
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          v16 = 11;
          if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
          {
            goto LABEL_23;
          }
        }

        if (gBBULogVerbosity < 0)
        {
          goto LABEL_23;
        }

        v17 = "Failed to send PowerSequenceIndex property to AppleBaseband Driver\n";
      }

      else
      {
        if (gBBULogMaskGet(void)::once == -1)
        {
          v16 = 11;
          if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
          {
            goto LABEL_23;
          }
        }

        else
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          v16 = 11;
          if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
          {
            goto LABEL_23;
          }
        }

        if (gBBULogVerbosity < 0)
        {
          goto LABEL_23;
        }

        v17 = "Failed to send CoredumpSupported property to AppleBaseband Driver\n";
      }

      _BBULog(1, 0, "BBUProgrammer", "", v17, v10, v11, v12, v24);
      goto LABEL_23;
    }

    BBUFeedback::handleComment(v6, "failed parsing baseband config");
    goto LABEL_13;
  }

  BBUFeedback::handleComment(*(a1 + 8), "failed receiving baseband config");
LABEL_11:
  v16 = 3;
LABEL_23:
  operator delete[](v2);
  v18 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t BBUEUR20Programmer::switchSaharaMode(uint64_t a1)
{
  bzero(*(a1 + 4352), 0x400uLL);
  v2 = *(a1 + 4352);
  if (ETLSAHCommandCreateSwitchMode())
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 4352);
    if (ETLSAHCommandSend())
    {
      return 0;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      result = 11;
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 2) == 0)
      {
        return result;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      result = 11;
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 2) == 0)
      {
        return result;
      }
    }

    if (gBBULogVerbosity >= 1)
    {
      _BBULog(9, 1, "BBUProgrammer", "", "failed sending mode switch command", v8, v9, v10, v12);
      return 11;
    }
  }

  else
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      result = 11;
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        return result;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      result = 11;
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        return result;
      }
    }

    if (gBBULogVerbosity >= 1)
    {
      _BBULog(1, 1, "BBUProgrammer", "", "failed creating mode switch command", v3, v4, v5, v12);
      return 11;
    }
  }

  return result;
}

uint64_t BBUEUR20Programmer::handleCommandMode(uint64_t a1, int a2)
{
  bzero(*(a1 + 4352), 0x400uLL);
  v4 = *(a1 + 16);
  v5 = *(a1 + 4352);
  if ((ETLSAHCommandReceive() & 1) == 0)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      result = 3;
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        return result;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      result = 3;
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        return result;
      }
    }

    if (gBBULogVerbosity >= 1)
    {
      _BBULog(1, 1, "BBUProgrammer", "", "no response from baseband when trying to receive next action\n", v6, v7, v8, v36);
      return 3;
    }

    return result;
  }

  v9 = *(a1 + 4352);
  if ((ETLSAHCommandParseCommandReady() & 1) == 0)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      result = 11;
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        return result;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      result = 11;
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        return result;
      }
    }

    if (gBBULogVerbosity >= 1)
    {
      _BBULog(1, 1, "BBUProgrammer", "", "failed to parse CommandReady\n", v10, v11, v12, v36);
      return 11;
    }

    return result;
  }

  v13 = *(a1 + 4352);
  v14 = *(a1 + 16);
  if (!ETLSAHCommandExecute())
  {
    if (a2 == -1431655766)
    {
      v16 = 0;
      v17 = 1;
      goto LABEL_25;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      v17 = 0;
      v16 = 12;
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      v17 = 0;
      v16 = 12;
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_25;
      }
    }

    if (gBBULogVerbosity < 1)
    {
      goto LABEL_25;
    }

    v21 = ETLSAHExecutionCommandIDAsString();
    ETLSAHExecutionCommandIDAsString();
    _BBULog(1, 1, "BBUProgrammer", "", "received unexpected command ID(expected: %s, received: %s\n", v22, v23, v24, v21);
    goto LABEL_23;
  }

  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  if (((gBBULogVerbosity > 0) & (*gBBULogMaskGet(void)::sBBULogMask >> 1)) != 0)
  {
    v37 = ETLSAHReturnAsString();
    v16 = 1;
    _BBULog(1, 1, "BBUProgrammer", "", "failed getting command ID with %s\n", v18, v19, v20, v37);
LABEL_23:
    v17 = 0;
    goto LABEL_25;
  }

  v17 = 0;
  v16 = 1;
LABEL_25:
  v25 = *(a1 + 8);
  v26 = ETLSAHExecutionCommandIDAsString();
  BBUFeedback::handleComment(v25, "Done executing kETLSAHGetCommandsID, received: %s", v26);
  result = v16;
  if (!v17)
  {
    return result;
  }

  if (a2 == 9)
  {
    result = (*(*a1 + 272))(a1);
    if (!result)
    {
      return result;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        return result;
      }
    }

    else
    {
      v35 = result;
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      result = v35;
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        return result;
      }
    }

    if (gBBULogVerbosity >= 1)
    {
      v30 = result;
      _BBULog(1, 1, "BBUProgrammer", "", "failed to handle kETLSAHGetDDRCalData\n", v27, v28, v29, v38);
      return v30;
    }
  }

  else
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      result = 12;
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        return result;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      result = 12;
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        return result;
      }
    }

    if (gBBULogVerbosity >= 1)
    {
      v31 = ETLSAHExecutionCommandIDAsString();
      _BBULog(1, 1, "BBUProgrammer", "", "received unexpected command: %s\n", v32, v33, v34, v31);
      return 12;
    }
  }

  return result;
}

uint64_t BBUEUR20Programmer::handleGetDDRCalData(BBUEUR20Programmer *this)
{
  v63 = 0;
  v2 = operator new(0x20000uLL);
  bzero(v2, 0x20000uLL);
  bzero(*(this + 544), 0x400uLL);
  BBUFeedback::handleComment(*(this + 1), "Receiving DDR Cal Data...\n");
  v3 = *(this + 544);
  v4 = *(this + 2);
  if (ETLSAHCommandExecute())
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      v16 = 1;
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_86;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      v16 = 1;
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_86;
      }
    }

    if (gBBULogVerbosity >= 1)
    {
      v17 = ETLSAHReturnAsString();
      _BBULog(1, 1, "BBUProgrammer", "", "failed getting getting DDR training data with %s\n", v18, v19, v20, v17);
    }

    goto LABEL_86;
  }

  v5 = CFDataCreate(*MEMORY[0x1E695E480], v2, v63);
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/Eureka/BBUEUR20Programmer.cpp", 0x247u, "Assertion failure(ddrDataRef)", v50, v51, v52, 232);
  }

  v6 = operator new(0x18uLL);
  v6[4] = 0;
  *v6 = &unk_1F5F04B00;
  *(v6 + 1) = v5;
  CFRetain(v5);
  memset(&v62, 170, sizeof(v62));
  pthread_mutex_lock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  v7 = off_1ED944170;
  if (!off_1ED944170)
  {
    v8 = operator new(0x18uLL);
    BBUPartitionManager::BBUPartitionManager(v8);
    v64 = v8;
    v9 = operator new(0x20uLL);
    *v9 = &unk_1F5F05A00;
    v9[1] = 0;
    v9[2] = 0;
    v9[3] = v8;
    v10 = off_1ED944178;
    off_1ED944170 = v8;
    off_1ED944178 = v9;
    if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }

    v7 = off_1ED944170;
  }

  v11 = off_1ED944178;
  if (off_1ED944178)
  {
    atomic_fetch_add_explicit(off_1ED944178 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  BBUPartitionManager::getBBUFSPath(v7, &__p);
  size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    p_p = &__p;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) == 22)
    {
      v14 = 22;
      v15 = 23;
LABEL_20:
      v22 = 2 * v14;
      if (v15 > 2 * v14)
      {
        v22 = v15;
      }

      if ((v22 | 7) == 0x17)
      {
        v23 = 25;
      }

      else
      {
        v23 = (v22 | 7) + 1;
      }

      if (v22 >= 0x17)
      {
        v21 = v23;
      }

      else
      {
        v21 = 23;
      }

      v24 = v14 == 22;
      goto LABEL_29;
    }

LABEL_35:
    p_p->__r_.__value_.__s.__data_[size] = 47;
    v28 = size + 1;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      __p.__r_.__value_.__l.__size_ = v28;
    }

    else
    {
      *(&__p.__r_.__value_.__s + 23) = v28 & 0x7F;
    }

    v27 = p_p + v28;
    goto LABEL_39;
  }

  size = __p.__r_.__value_.__l.__size_;
  v15 = __p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL;
  v14 = (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v14 != __p.__r_.__value_.__l.__size_)
  {
    p_p = __p.__r_.__value_.__r.__words[0];
    goto LABEL_35;
  }

  v21 = 0x7FFFFFFFFFFFFFF7;
  if (v15 == 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  p_p = __p.__r_.__value_.__r.__words[0];
  if (v14 < 0x3FFFFFFFFFFFFFF3)
  {
    goto LABEL_20;
  }

  v24 = 0;
LABEL_29:
  v25 = operator new(v21);
  v26 = v25;
  if (v14)
  {
    memmove(v25, p_p, v14);
  }

  *(v26 + v14) = 47;
  if (!v24)
  {
    operator delete(p_p);
  }

  __p.__r_.__value_.__l.__size_ = v15;
  __p.__r_.__value_.__r.__words[2] = v21 | 0x8000000000000000;
  __p.__r_.__value_.__r.__words[0] = v26;
  v27 = (v26 + v15);
LABEL_39:
  *v27 = 0;
  v61 = __p;
  memset(&__p, 0, sizeof(__p));
  v29 = SHIBYTE(v61.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v61.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if ((SHIBYTE(v61.__r_.__value_.__r.__words[2]) - 13) < 0xA)
    {
      v30 = SHIBYTE(v61.__r_.__value_.__r.__words[2]) + 10;
      v31 = &v61;
      v32 = 22;
LABEL_45:
      v34 = 2 * v32;
      if (v30 > 2 * v32)
      {
        v34 = v30;
      }

      if ((v34 | 7) == 0x17)
      {
        v35 = 25;
      }

      else
      {
        v35 = (v34 | 7) + 1;
      }

      if (v34 >= 0x17)
      {
        v33 = v35;
      }

      else
      {
        v33 = 23;
      }

      v36 = v32 == 22;
      goto LABEL_54;
    }

    v41 = &v61;
LABEL_61:
    v42 = v41 + v29;
    *v42 = *"mdmddr.mbn";
    *(v42 + 4) = 28258;
    v43 = v29 + 10;
    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      v61.__r_.__value_.__l.__size_ = v29 + 10;
    }

    else
    {
      *(&v61.__r_.__value_.__s + 23) = v43 & 0x7F;
    }

    v40 = v41 + v43;
    goto LABEL_65;
  }

  v29 = v61.__r_.__value_.__l.__size_;
  v32 = (v61.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v32 - v61.__r_.__value_.__l.__size_ >= 0xA)
  {
    v41 = v61.__r_.__value_.__r.__words[0];
    goto LABEL_61;
  }

  v33 = 0x7FFFFFFFFFFFFFF7;
  v30 = v61.__r_.__value_.__l.__size_ + 10;
  if (0x7FFFFFFFFFFFFFF7 - (v61.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < v61.__r_.__value_.__l.__size_ + 10 - v32)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v31 = v61.__r_.__value_.__r.__words[0];
  if (v32 < 0x3FFFFFFFFFFFFFF3)
  {
    goto LABEL_45;
  }

  v36 = 0;
LABEL_54:
  v37 = operator new(v33);
  v38 = v37;
  if (v29)
  {
    memmove(v37, v31, v29);
  }

  v39 = v38 + v29;
  *v39 = *"mdmddr.mbn";
  *(v39 + 8) = 28258;
  if (!v36)
  {
    operator delete(v31);
  }

  v61.__r_.__value_.__l.__size_ = v30;
  v61.__r_.__value_.__r.__words[2] = v33 | 0x8000000000000000;
  v61.__r_.__value_.__r.__words[0] = v38;
  v40 = (v38 + v30);
LABEL_65:
  *v40 = 0;
  v62 = v61;
  memset(&v61, 0, sizeof(v61));
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  if ((*(*v6 + 48))(v6, &v62, 1))
  {
    v53 = __cxa_allocate_exception(0x210uLL);
    v57 = v53;
    v58 = &v62;
    if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      LOBYTE(v58) = v62.__r_.__value_.__s.__data_[0];
    }

    _BBUException::_BBUException(v53, 104, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/Eureka/BBUEUR20Programmer.cpp", 0x24Cu, "failed to save %s(%d)", v54, v55, v56, v58);
  }

  (*(*v6 + 8))(v6);
  v44 = &v62;
  if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v44 = v62.__r_.__value_.__r.__words[0];
  }

  BBUFeedback::handleComment(*(this + 1), "Saved MDMDDR data to: %s\n", v44);
  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }

  v16 = (*(*this + 264))(this, 0);
  if (v16)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_86;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_86;
      }
    }

    if (gBBULogVerbosity >= 1)
    {
      _BBULog(1, 1, "BBUProgrammer", "", "failed to switch mode\n", v45, v46, v47, v59);
    }
  }

  else
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      v16 = 0;
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 2) == 0)
      {
        goto LABEL_86;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      v16 = 0;
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 2) == 0)
      {
        goto LABEL_86;
      }
    }

    if (gBBULogVerbosity >= 1)
    {
      _BBULog(9, 1, "BBUProgrammer", "", "successfully switched Sahara mode to ETLSAHModePending\n", v45, v46, v47, v59);
      v16 = 0;
    }
  }

LABEL_86:
  operator delete(v2);
  return v16;
}

void sub_1E52EB398(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  std::unique_ptr<BBUPartitionManager>::~unique_ptr[abi:ne200100]((v33 - 88));
  pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  operator delete(v32);
  _Unwind_Resume(a1);
}

uint64_t BBUEUR20Programmer::handleHashesQuery(BBUFeedback **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = *MEMORY[0x1E69E9840];
  v8 = capabilities::radio::mav25Plus(a1);
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  if (v8)
  {
    v48[1] = v12;
    v48[2] = v12;
    v47 = v12;
    v48[0] = v12;
    v45 = v12;
    v46 = v12;
    v43 = v12;
    v44 = v12;
    v41 = v12;
    v42 = v12;
    v39 = v12;
    v40 = v12;
    v37 = v12;
    v38 = v12;
    v36 = v12;
    if (a2)
    {
      if (ETLSAHCommandParseMaverickSendHashesQuery())
      {
        v16 = 0;
        if (!a3)
        {
          goto LABEL_33;
        }

LABEL_15:
        if (a4)
        {
          v17 = operator new(0xF8uLL);
          *v17 = &unk_1F5F01038;
          v18 = off_1F5F01058(v17);
          memcpy(v17 + 8, &v36, v18);
          v19 = (*(*v17 + 32))(v17);
          memcpy(v17 + 56, &v39, v19);
          v20 = (*(*v17 + 32))(v17);
          memcpy(v17 + 104, &v42, v20);
          v21 = (*(*v17 + 32))(v17);
          memcpy(v17 + 152, &v45, v21);
          v22 = (*(*v17 + 32))(v17);
          memcpy(v17 + 200, v48, v22);
          v24 = a1[1];
          v23 = a1 + 1;
          BBUFeedback::handleComment(v24, "rootManifestHashData:");
          (*(*v17 + 24))(v17, *v23);
          BBUFeedback::handleComment(*v23, "\nupdateSourceHashData:");
          (*(*a4 + 24))(a4, *v23);
          if (((*(*a4 + 16))(a4, *v23, v17) & 1) == 0)
          {
            if (gBBULogMaskGet(void)::once == -1)
            {
              v16 = 33;
              if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
              {
                goto LABEL_32;
              }
            }

            else
            {
              dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
              v16 = 33;
              if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
              {
                goto LABEL_32;
              }
            }

            if (gBBULogVerbosity >= 1)
            {
              goto LABEL_31;
            }
          }

LABEL_32:
          (*(*v17 + 8))(v17);
          goto LABEL_33;
        }

        goto LABEL_33;
      }

      if (gBBULogMaskGet(void)::once == -1)
      {
        v16 = 12;
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
        {
          goto LABEL_33;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        v16 = 12;
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
        {
          goto LABEL_33;
        }
      }

      if (gBBULogVerbosity < 1)
      {
        goto LABEL_33;
      }

LABEL_37:
      _BBULog(1, 1, "BBUProgrammer", "", "Failed parsing maverick hash query results\n", v13, v14, v15, v36);
      goto LABEL_33;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    if (gBBULogVerbosity >= 1)
    {
      _BBULog(1, 1, "BBUProgrammer", "", "bad arguments: header is NULL\n", v9, v10, v11, v36);
    }

LABEL_14:
    v16 = 2;
    if (!a3)
    {
      goto LABEL_33;
    }

    goto LABEL_15;
  }

  v46 = v12;
  v47 = v12;
  v44 = v12;
  v45 = v12;
  v42 = v12;
  v43 = v12;
  v40 = v12;
  v41 = v12;
  v38 = v12;
  v39 = v12;
  v36 = v12;
  v37 = v12;
  if (!a2)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_25;
      }
    }

    if (gBBULogVerbosity >= 1)
    {
      _BBULog(1, 1, "BBUProgrammer", "", "bad arguments: header is NULL\n", v9, v10, v11, v36);
    }

LABEL_25:
    v16 = 2;
    if (!a3)
    {
      goto LABEL_33;
    }

    goto LABEL_26;
  }

  if ((ETLSAHCommandParseMaverickSendHashesQuery() & 1) == 0)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      v16 = 12;
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      v16 = 12;
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_33;
      }
    }

    if (gBBULogVerbosity < 1)
    {
      goto LABEL_33;
    }

    goto LABEL_37;
  }

  v16 = 0;
  if (!a3)
  {
    goto LABEL_33;
  }

LABEL_26:
  if (a4)
  {
    v17 = operator new(0xC8uLL);
    *v17 = &unk_1F5F00F90;
    v28 = off_1F5F00FB0(v17);
    memcpy(v17 + 8, &v36, v28);
    v29 = (*(*v17 + 32))(v17);
    memcpy(v17 + 56, &v39, v29);
    v30 = (*(*v17 + 32))(v17);
    memcpy(v17 + 104, &v42, v30);
    v31 = (*(*v17 + 32))(v17);
    memcpy(v17 + 152, &v45, v31);
    v33 = a1[1];
    v32 = a1 + 1;
    BBUFeedback::handleComment(v33, "rootManifestHashData:");
    (*(*v17 + 24))(v17, *v32);
    BBUFeedback::handleComment(*v32, "\nupdateSourceHashData:");
    (*(*a4 + 24))(a4, *v32);
    if (((*(*a4 + 16))(a4, *v32, v17) & 1) == 0)
    {
      if (gBBULogMaskGet(void)::once == -1)
      {
        v16 = 33;
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
        {
          goto LABEL_32;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        v16 = 33;
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
        {
          goto LABEL_32;
        }
      }

      if (gBBULogVerbosity >= 1)
      {
LABEL_31:
        _BBULog(1, 1, "BBUProgrammer", "", "root manifest hash data mismatches baseband hash query\n", v25, v26, v27, v36);
        goto LABEL_32;
      }
    }

    goto LABEL_32;
  }

LABEL_33:
  v34 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t BBUEUR20Programmer::collectCoreDump(std::string::size_type a1, uint64_t a2, uint64_t a3)
{
  v22 = 0;
  *(a1 + 4284) = 0;
  BBUFeedback::handleBeginPhase(*(a1 + 8), "Sending images for CoreDump...");
  while (1)
  {
    v5 = (*(*a1 + 184))(a1, &v22);
    if (v5)
    {
      v10 = v5;
      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
        {
          goto LABEL_26;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
        {
          goto LABEL_26;
        }
      }

      if (gBBULogVerbosity < 0)
      {
        goto LABEL_26;
      }

      v11 = "failed connecting to sahara in CoreDump\n";
LABEL_19:
      _BBULog(1, 0, "BBUProgrammer", "", v11, v6, v7, v8, v20);
      goto LABEL_26;
    }

    if (v22)
    {
      v10 = 0;
      goto LABEL_26;
    }

    v9 = (*(*a1 + 224))(a1, a1 + 40);
    if (v9)
    {
      break;
    }

    v9 = (*(*a1 + 248))(a1, &v22);
    if (v9)
    {
      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v13 = v9;
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        v9 = v13;
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
        {
          goto LABEL_25;
        }
      }

      if (gBBULogVerbosity < 0)
      {
        goto LABEL_25;
      }

      v10 = v9;
      v11 = "failed disconnecting for image in CoreDump\n";
      goto LABEL_19;
    }
  }

  if (gBBULogMaskGet(void)::once != -1)
  {
    v12 = v9;
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    v9 = v12;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_25;
    }

LABEL_17:
    if (gBBULogVerbosity < 0)
    {
      goto LABEL_25;
    }

    v10 = v9;
    v11 = "failed sending image in CoreDump\n";
    goto LABEL_19;
  }

  if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
  {
    goto LABEL_17;
  }

LABEL_25:
  v10 = v9;
LABEL_26:
  (*(**(a1 + 8) + 16))(*(a1 + 8), v10);
  result = v10;
  if (!v10)
  {
    if (v22 == 2)
    {
      *(a1 + 4284) = 2;
      if (*(a3 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v21, *a3, *(a3 + 8));
      }

      else
      {
        v21 = *a3;
      }

      result = BBUEUR2Programmer::collectCoreDump(a1, &v21);
      if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
      {
        v19 = result;
        operator delete(v21.__r_.__value_.__l.__data_);
        return v19;
      }
    }

    else
    {
      if (gBBULogMaskGet(void)::once == -1)
      {
        result = 12;
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
        {
          return result;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        result = 12;
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
        {
          return result;
        }
      }

      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        v15 = ETLSAHModeAsString();
        _BBULog(1, 0, "BBUProgrammer", "", "unexpected mode: %s\n", v16, v17, v18, v15);
        return 12;
      }
    }
  }

  return result;
}

void sub_1E52EC064(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void BBUEUR20Programmer::postCrashReason(uint64_t a1, uint64_t a2)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v11, *a2, *(a2 + 8));
  }

  else
  {
    v11 = *a2;
  }

  v3 = ETLEFSearchBasebandCrashReasonM20();
  if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (v3)
    {
      goto LABEL_6;
    }

LABEL_10:
    BBUFeedback::handleComment(*(a1 + 8), "\tFailed: Looking for CoreDump reason");
    goto LABEL_11;
  }

  v6 = v3;
  operator delete(v11.__r_.__value_.__l.__data_);
  if (!v6)
  {
    goto LABEL_10;
  }

LABEL_6:
  v4 = v12;
  v5 = v13;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v8 = ___ZN18BBUEUR20Programmer15postCrashReasonENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke;
  v9 = &__block_descriptor_tmp_7;
  for (i = a1; v4 != v5; v4 += 388)
  {
    v8(v7, v4);
  }

LABEL_11:
  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }
}

void sub_1E52EC1A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  v22 = *(v20 - 56);
  if (v22)
  {
    *(v20 - 48) = v22;
    operator delete(v22);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void BBUEUR20Programmer::~BBUEUR20Programmer(BBUEUR20Programmer *this)
{
  *this = &unk_1F5F02F98;
  v2 = *(this + 541);
  if (v2)
  {
    *(this + 542) = v2;
    operator delete(v2);
  }

  *this = &unk_1F5F044E0;
  if (*(this + 4327) < 0)
  {
    operator delete(*(this + 538));
  }

  *this = &unk_1F5F042B0;
  pthread_mutex_destroy((this + 88));

  BBUProgrammer::~BBUProgrammer(this);
}

{
  *this = &unk_1F5F02F98;
  v2 = *(this + 541);
  if (v2)
  {
    *(this + 542) = v2;
    operator delete(v2);
  }

  *this = &unk_1F5F044E0;
  if (*(this + 4327) < 0)
  {
    operator delete(*(this + 538));
  }

  *this = &unk_1F5F042B0;
  pthread_mutex_destroy((this + 88));
  BBUProgrammer::~BBUProgrammer(this);

  operator delete(v3);
}

uint64_t __cxx_global_var_init_19()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<BBUPartitionManager>::~PthreadMutexGuardPolicy, &ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance, &dword_1E5234000);
  }

  return result;
}

void support::log::manager::~manager(support::log::manager *this)
{
  *this = &unk_1F5F030F0;
  if (*(this + 17))
  {
    v2 = this + 120;
    v3 = *(this + 16);
    v4 = *(*(this + 15) + 8);
    v5 = *v3;
    *(v5 + 8) = v4;
    *v4 = v5;
    *(this + 17) = 0;
    if (v3 != this + 120)
    {
      do
      {
        v7 = *(v3 + 1);
        v6 = *(v3 + 2);
        *(v3 + 2) = 0;
        if (v6)
        {
          (*(*v6 + 16))(v6);
        }

        operator delete(v3);
        v3 = v7;
      }

      while (v7 != v2);
    }
  }

  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  std::mutex::~mutex((this + 8));
}

{
  *this = &unk_1F5F030F0;
  if (*(this + 17))
  {
    v2 = this + 120;
    v3 = *(this + 16);
    v4 = *(*(this + 15) + 8);
    v5 = *v3;
    *(v5 + 8) = v4;
    *v4 = v5;
    *(this + 17) = 0;
    if (v3 != this + 120)
    {
      do
      {
        v7 = *(v3 + 1);
        v6 = *(v3 + 2);
        *(v3 + 2) = 0;
        if (v6)
        {
          (*(*v6 + 16))(v6);
        }

        operator delete(v3);
        v3 = v7;
      }

      while (v7 != v2);
    }
  }

  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  std::mutex::~mutex((this + 8));

  operator delete(this);
}

uint64_t support::log::buffer::borrow(support::log::buffer *this)
{
  pthread_mutex_lock(&ctu::Singleton<support::log::buffer,support::log::buffer,ctu::PthreadMutexGuardPolicy<support::log::buffer>>::sInstance);
  if (!qword_1ECFD4EF8)
  {
    v1 = operator new(0xA8uLL);
    *(v1 + 1) = 0;
    *(v1 + 2) = 0;
    *v1 = &unk_1F5F03218;
    v2 = (v1 + 24);
    *(v1 + 3) = &unk_1F5F03268;
    *(v1 + 4) = 850045863;
    *(v1 + 40) = 0u;
    *(v1 + 56) = 0u;
    *(v1 + 72) = 0u;
    *(v1 + 14) = 0;
    *(v1 + 13) = 0;
    *(v1 + 11) = 0;
    *(v1 + 12) = v1 + 104;
    *(v1 + 120) = 0u;
    *(v1 + 136) = 0u;
    *(v1 + 152) = 0u;
    v3 = off_1ECFD4F00;
    qword_1ECFD4EF8 = (v1 + 24);
    off_1ECFD4F00 = v1;
    if (!v3)
    {
      v18 = v1;
      goto LABEL_8;
    }

    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }
  }

  v2 = qword_1ECFD4EF8;
  v1 = off_1ECFD4F00;
  v18 = off_1ECFD4F00;
  if (off_1ECFD4F00)
  {
LABEL_8:
    atomic_fetch_add_explicit(v1 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<support::log::buffer,support::log::buffer,ctu::PthreadMutexGuardPolicy<support::log::buffer>>::sInstance);
  std::mutex::lock((v2 + 8));
  v4 = *(v2 + 136);
  if (v4)
  {
    v5 = (v2 + 128);
    v6 = *(v2 + 104);
    v7 = (*(v6 + ((*(v2 + 128) >> 6) & 0x3FFFFFFFFFFFFF8)))[*(v2 + 128) & 0x1FFLL];
    v8 = *(v2 + 128) + 1;
    *(v2 + 128) = v8;
    *(v2 + 136) = v4 - 1;
    if (v8 >= 0x400)
    {
      operator delete(*v6);
      *(v2 + 104) += 8;
      v9 = -512;
LABEL_23:
      *v5 += v9;
    }
  }

  else
  {
    v10 = malloc(0x400uLL);
    v7 = v10;
    if (v10)
    {
      v12 = (v2 + 80);
      v11 = *(v2 + 80);
      if (!v11)
      {
        v13 = (v2 + 80);
LABEL_20:
        v15 = operator new(0x28uLL);
        v15[4] = v7;
        *v15 = 0;
        v15[1] = 0;
        v15[2] = v13;
        *v12 = v15;
        v16 = **(v2 + 72);
        if (v16)
        {
          *(v2 + 72) = v16;
        }

        std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v2 + 80), v15);
        v5 = (v2 + 88);
        v9 = 1;
        goto LABEL_23;
      }

      while (1)
      {
        while (1)
        {
          v13 = v11;
          v14 = v11[4];
          if (v10 >= v14)
          {
            break;
          }

          v11 = *v13;
          v12 = v13;
          if (!*v13)
          {
            goto LABEL_20;
          }
        }

        if (v14 >= v10)
        {
          break;
        }

        v11 = v13[1];
        if (!v11)
        {
          v12 = v13 + 1;
          goto LABEL_20;
        }
      }
    }
  }

  std::mutex::unlock((v2 + 8));
  if (!v18 || atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return v7;
  }

  (v18->__on_zero_shared)(v18);
  std::__shared_weak_count::__release_weak(v18);
  return v7;
}

void sub_1E52EC778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::mutex::unlock((v9 + 8));
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void support::log::manager::release_log_buffer(support::log::manager *this, char *a2)
{
  pthread_mutex_lock(&ctu::Singleton<support::log::buffer,support::log::buffer,ctu::PthreadMutexGuardPolicy<support::log::buffer>>::sInstance);
  if (qword_1ECFD4EF8)
  {
    goto LABEL_2;
  }

  v3 = operator new(0xA8uLL);
  *(v3 + 1) = 0;
  *(v3 + 2) = 0;
  *v3 = &unk_1F5F03218;
  v4 = (v3 + 24);
  *(v3 + 3) = &unk_1F5F03268;
  *(v3 + 4) = 850045863;
  *(v3 + 40) = 0u;
  *(v3 + 56) = 0u;
  *(v3 + 72) = 0u;
  *(v3 + 14) = 0;
  *(v3 + 13) = 0;
  *(v3 + 11) = 0;
  *(v3 + 12) = v3 + 104;
  *(v3 + 120) = 0u;
  *(v3 + 136) = 0u;
  *(v3 + 152) = 0u;
  v5 = off_1ECFD4F00;
  qword_1ECFD4EF8 = (v3 + 24);
  off_1ECFD4F00 = v3;
  if (v5)
  {
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

LABEL_2:
    v4 = qword_1ECFD4EF8;
    v3 = off_1ECFD4F00;
    if (!off_1ECFD4F00)
    {
      goto LABEL_8;
    }
  }

  atomic_fetch_add_explicit(v3 + 1, 1uLL, memory_order_relaxed);
LABEL_8:
  pthread_mutex_unlock(&ctu::Singleton<support::log::buffer,support::log::buffer,ctu::PthreadMutexGuardPolicy<support::log::buffer>>::sInstance);
  v8 = *(v4 + 80);
  v7 = v4 + 80;
  v6 = v8;
  if (!v8)
  {
    goto LABEL_16;
  }

  v9 = v7;
  do
  {
    v10 = *(v6 + 32);
    v11 = v10 >= a2;
    v12 = v10 < a2;
    if (v11)
    {
      v9 = v6;
    }

    v6 = *(v6 + 8 * v12);
  }

  while (v6);
  if (v9 == v7 || *(v9 + 32) > a2)
  {
LABEL_16:
    v9 = v7;
  }

  if (!v3 || atomic_fetch_add(v3 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (v9 != v7)
    {
      goto LABEL_20;
    }

LABEL_24:

    free(a2);
    return;
  }

  (*(*v3 + 16))(v3);
  std::__shared_weak_count::__release_weak(v3);
  if (v9 == v7)
  {
    goto LABEL_24;
  }

LABEL_20:
  pthread_mutex_lock(&ctu::Singleton<support::log::buffer,support::log::buffer,ctu::PthreadMutexGuardPolicy<support::log::buffer>>::sInstance);
  if (!qword_1ECFD4EF8)
  {
    v13 = operator new(0xA8uLL);
    *(v13 + 1) = 0;
    *(v13 + 2) = 0;
    *v13 = &unk_1F5F03218;
    *(v13 + 3) = &unk_1F5F03268;
    *(v13 + 4) = 850045863;
    *(v13 + 40) = 0u;
    *(v13 + 56) = 0u;
    *(v13 + 72) = 0u;
    *(v13 + 14) = 0;
    *(v13 + 13) = 0;
    *(v13 + 11) = 0;
    *(v13 + 12) = v13 + 104;
    *(v13 + 120) = 0u;
    *(v13 + 136) = 0u;
    *(v13 + 152) = 0u;
    v14 = off_1ECFD4F00;
    qword_1ECFD4EF8 = (v13 + 24);
    off_1ECFD4F00 = v13;
    if (!v14)
    {
      v84 = v13;
      goto LABEL_31;
    }

    if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v14->__on_zero_shared)(v14);
      std::__shared_weak_count::__release_weak(v14);
    }
  }

  v13 = off_1ECFD4F00;
  v84 = off_1ECFD4F00;
  if (off_1ECFD4F00)
  {
LABEL_31:
    atomic_fetch_add_explicit(v13 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<support::log::buffer,support::log::buffer,ctu::PthreadMutexGuardPolicy<support::log::buffer>>::sInstance);
  pthread_mutex_lock(&ctu::Singleton<support::log::buffer,support::log::buffer,ctu::PthreadMutexGuardPolicy<support::log::buffer>>::sInstance);
  if (qword_1ECFD4EF8)
  {
    goto LABEL_33;
  }

  v15 = operator new(0xA8uLL);
  *(v15 + 1) = 0;
  *(v15 + 2) = 0;
  *v15 = &unk_1F5F03218;
  v16 = (v15 + 24);
  *(v15 + 3) = &unk_1F5F03268;
  *(v15 + 4) = 850045863;
  *(v15 + 40) = 0u;
  *(v15 + 56) = 0u;
  *(v15 + 72) = 0u;
  *(v15 + 14) = 0;
  *(v15 + 13) = 0;
  *(v15 + 11) = 0;
  *(v15 + 12) = v15 + 104;
  *(v15 + 120) = 0u;
  *(v15 + 136) = 0u;
  *(v15 + 152) = 0u;
  v17 = off_1ECFD4F00;
  qword_1ECFD4EF8 = (v15 + 24);
  off_1ECFD4F00 = v15;
  if (v17)
  {
    if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }

LABEL_33:
    v16 = qword_1ECFD4EF8;
    v15 = off_1ECFD4F00;
    v85 = off_1ECFD4F00;
    if (!off_1ECFD4F00)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  v85 = v15;
LABEL_39:
  atomic_fetch_add_explicit(v15 + 1, 1uLL, memory_order_relaxed);
LABEL_40:
  pthread_mutex_unlock(&ctu::Singleton<support::log::buffer,support::log::buffer,ctu::PthreadMutexGuardPolicy<support::log::buffer>>::sInstance);
  std::mutex::lock((v16 + 8));
  v18 = *(v16 + 80);
  if (!v18)
  {
    goto LABEL_120;
  }

  v19 = v16 + 80;
  do
  {
    v20 = *(v18 + 32);
    v11 = v20 >= a2;
    v21 = v20 < a2;
    if (v11)
    {
      v19 = v18;
    }

    v18 = *(v18 + 8 * v21);
  }

  while (v18);
  if (v19 == v16 + 80 || *(v19 + 32) > a2)
  {
LABEL_120:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "attempting to put back a buffer the instance does not own");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v22 = *(v16 + 104);
  v23 = *(v16 + 112);
  v24 = *(v16 + 104);
  v25 = v23 - v24;
  if (v23 == v24)
  {
    v26 = 0;
  }

  else
  {
    v26 = ((v23 - v24) << 6) - 1;
  }

  v28 = *(v16 + 128);
  v27 = *(v16 + 136);
  v29 = v27 + v28;
  if (v26 != v27 + v28)
  {
    goto LABEL_110;
  }

  if (v28 < 0x200)
  {
    v30 = *(v16 + 120);
    v31 = *(v16 + 96);
    if (v25 < (v30 - v31))
    {
      v32 = operator new(0x1000uLL);
      if (v30 != v23)
      {
        *v23 = v32;
        *(v16 + 112) = v23 + 8;
        goto LABEL_109;
      }

      if (v24 != v31)
      {
        v43 = v24;
LABEL_108:
        *(v43 - 1) = v32;
        v86 = v32;
        *(v16 + 104) = v43;
        std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>((v16 + 96), &v86);
        goto LABEL_109;
      }

      if (v23 == v24)
      {
        v66 = 1;
      }

      else
      {
        v66 = (v30 - v24) >> 2;
      }

      if (!(v66 >> 61))
      {
        v67 = v32;
        v68 = operator new(8 * v66);
        v32 = v67;
        v69 = (v66 + 3) >> 2;
        v43 = &v68[8 * v69];
        v70 = v43;
        if (v23 != v24)
        {
          v70 = &v43[v25];
          v71 = v23 - v24 - 8;
          v72 = &v68[8 * v69];
          v73 = v24;
          if (v71 < 0x38)
          {
            goto LABEL_126;
          }

          v74 = &v68[8 * v69];
          v72 = v74;
          v73 = v24;
          if ((v74 - v24) < 0x20)
          {
            goto LABEL_126;
          }

          v75 = (v71 >> 3) + 1;
          v76 = 8 * (v75 & 0x3FFFFFFFFFFFFFFCLL);
          v72 = &v43[v76];
          v73 = &v24[v76];
          v77 = (v24 + 16);
          v78 = v74 + 16;
          v79 = v75 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v80 = *v77;
            *(v78 - 1) = *(v77 - 1);
            *v78 = v80;
            v77 += 2;
            v78 += 2;
            v79 -= 4;
          }

          while (v79);
          if (v75 != (v75 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_126:
            do
            {
              v81 = *v73;
              v73 += 8;
              *v72 = v81;
              v72 += 8;
            }

            while (v72 != v70);
          }
        }

        *(v16 + 96) = v68;
        *(v16 + 104) = v43;
        *(v16 + 112) = v70;
        *(v16 + 120) = &v68[8 * v66];
        if (v24)
        {
          operator delete(v31);
          v32 = v67;
          v43 = *(v16 + 104);
        }

        goto LABEL_108;
      }

LABEL_122:
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v33 = (v30 - v31) >> 2;
    if (v30 == v31)
    {
      v33 = 1;
    }

    if (v33 >> 61)
    {
      goto LABEL_122;
    }

    v34 = 8 * v33;
    v35 = operator new(8 * v33);
    v36 = operator new(0x1000uLL);
    v37 = v36;
    v38 = &v35[v25];
    v39 = &v35[v34];
    if (v25 != v34)
    {
      goto LABEL_63;
    }

    if (v25 >= 1)
    {
      v38 -= ((v25 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8;
LABEL_63:
      *v38 = v36;
      v40 = v38 + 8;
      if (v23 != v24)
      {
        goto LABEL_77;
      }

LABEL_64:
      v41 = v38;
LABEL_65:
      v42 = *(v16 + 96);
      *(v16 + 96) = v35;
      *(v16 + 104) = v41;
      *(v16 + 112) = v40;
      *(v16 + 120) = v39;
      if (v42)
      {
        operator delete(v42);
      }

      goto LABEL_109;
    }

    if (v23 == v24)
    {
      v44 = 1;
    }

    else
    {
      v44 = v25 >> 2;
    }

    if (v44 >> 61)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v38 = operator new(8 * v44);
    v39 = &v38[8 * v44];
    operator delete(v35);
    v45 = *(v16 + 104);
    v23 = *(v16 + 112);
    v35 = v38;
    *v38 = v37;
    v40 = v38 + 8;
    if (v23 == v45)
    {
      goto LABEL_64;
    }

LABEL_77:
    while (v38 != v35)
    {
      v46 = v38;
LABEL_76:
      v47 = *(v23 - 1);
      v23 -= 8;
      *(v46 - 1) = v47;
      v41 = v46 - 8;
      v38 = v41;
      if (v23 == *(v16 + 104))
      {
        goto LABEL_65;
      }
    }

    if (v40 < v39)
    {
      v46 = &v35[8 * ((((v39 - v40) >> 3) + 1 + ((((v39 - v40) >> 3) + 1) >> 63)) >> 1)];
      v49 = v40 - v35;
      v48 = v40 == v35;
      v40 += 8 * ((((v39 - v40) >> 3) + 1 + ((((v39 - v40) >> 3) + 1) >> 63)) >> 1);
      if (!v48)
      {
        memmove(v46, v38, v49);
      }

      goto LABEL_76;
    }

    if (v39 == v35)
    {
      v50 = 1;
    }

    else
    {
      v50 = (v39 - v35) >> 2;
    }

    if (v50 >> 61)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v51 = operator new(8 * v50);
    v52 = v51;
    v53 = (v50 + 3) >> 2;
    v46 = &v51[8 * v53];
    v54 = v40 - v35;
    v48 = v40 == v35;
    v40 = v46;
    if (!v48)
    {
      v40 = &v46[v54];
      v55 = v54 - 8;
      if (v55 >= 0x18 && (v56 = 8 * v53, (&v51[8 * v53] - v38) >= 0x20))
      {
        v60 = (v55 >> 3) + 1;
        v61 = 8 * (v60 & 0x3FFFFFFFFFFFFFFCLL);
        v57 = &v46[v61];
        v58 = &v38[v61];
        v62 = (v38 + 16);
        v63 = &v51[v56 + 16];
        v64 = v60 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v65 = *v62;
          *(v63 - 1) = *(v62 - 1);
          *v63 = v65;
          v62 += 2;
          v63 += 32;
          v64 -= 4;
        }

        while (v64);
        if (v60 == (v60 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_90;
        }
      }

      else
      {
        v57 = &v51[8 * v53];
        v58 = v38;
      }

      do
      {
        v59 = *v58;
        v58 += 8;
        *v57 = v59;
        v57 += 8;
      }

      while (v57 != v40);
    }

LABEL_90:
    v39 = &v51[8 * v50];
    operator delete(v35);
    v35 = v52;
    goto LABEL_76;
  }

  *(v16 + 128) = v28 - 512;
  v86 = *v24;
  *(v16 + 104) = v24 + 8;
  std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>((v16 + 96), &v86);
LABEL_109:
  v24 = *(v16 + 104);
  v27 = *(v16 + 136);
  v29 = *(v16 + 128) + v27;
LABEL_110:
  *(*&v24[(v29 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v29 & 0x1FF)) = a2;
  *(v16 + 136) = v27 + 1;
  std::mutex::unlock((v16 + 8));
  if (v85 && !atomic_fetch_add(&v85->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v85->__on_zero_shared)(v85);
    std::__shared_weak_count::__release_weak(v85);
    v82 = v84;
    if (!v84)
    {
      return;
    }
  }

  else
  {
    v82 = v84;
    if (!v84)
    {
      return;
    }
  }

  if (!atomic_fetch_add(&v82->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v82->__on_zero_shared)(v82);

    std::__shared_weak_count::__release_weak(v82);
  }
}

void sub_1E52ED138(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12)
{
  operator delete(v13);
  operator delete(v12);
  std::mutex::unlock((v14 + 8));
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a12);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void support::log::manager::set_defaults(support::log::manager *this)
{
  std::mutex::lock((this + 8));
  *(this + 112) = 3;
  if (*(this + 17))
  {
    v2 = *(this + 16);
    v3 = *(*(this + 15) + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    *(this + 17) = 0;
    if (v2 != (this + 120))
    {
      do
      {
        v6 = *(v2 + 1);
        v5 = *(v2 + 2);
        *(v2 + 2) = 0;
        if (v5)
        {
          (*(*v5 + 16))(v5);
        }

        operator delete(v2);
        v2 = v6;
      }

      while (v6 != (this + 120));
    }
  }

  std::mutex::unlock((this + 8));
}

void support::log::manager::message_delegates(support::log::manager *this, const support::log::details *a2, char *a3)
{
  v4 = this + 120;
  v5 = *(this + 16);
  if (v5 != (this + 120))
  {
    do
    {
      this = (***(v5 + 16))(*(v5 + 16), a2, a3);
      v5 = *(v5 + 8);
    }

    while (v5 != v4);
  }

  support::log::manager::release_log_buffer(this, a3);
}

void *support::log::client::client(void *a1, std::string *a2, std::string *a3, uint64_t a4)
{
  v82 = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F5EFEF10;
  v77 = *a2;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  a2->__r_.__value_.__r.__words[0] = 0;
  v76 = *a3;
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  a1[1] = &unk_1F5F03150;
  if ((atomic_load_explicit(&_MergedGlobals_5, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_5))
  {
    *&qword_1ECFD5330 = 0u;
    *&qword_1ECFD5320 = 0u;
    dword_1ECFD5340 = 1065353216;
    __cxa_guard_release(&_MergedGlobals_5);
  }

  std::mutex::lock(&_MergedGlobals);
  memset(__p, 170, sizeof(__p));
  if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v77.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v77.__r_.__value_.__l.__size_;
  }

  v7 = size + 1;
  if (size + 1 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v7 < 0x17)
  {
    memset(&v80, 0, sizeof(v80));
    v9 = &v80;
    *(&v80.__r_.__value_.__s + 23) = size + 1;
    if (!size)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v7 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (v7 | 7) + 1;
    }

    v9 = operator new(v8);
    v80.__r_.__value_.__l.__size_ = size + 1;
    v80.__r_.__value_.__r.__words[2] = v8 | 0x8000000000000000;
    v80.__r_.__value_.__r.__words[0] = v9;
  }

  if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v77;
  }

  else
  {
    v10 = v77.__r_.__value_.__r.__words[0];
  }

  memmove(v9, v10, size);
LABEL_16:
  *&v9[size] = 44;
  if ((v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &v76;
  }

  else
  {
    v11 = v76.__r_.__value_.__r.__words[0];
  }

  if ((v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = HIBYTE(v76.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v12 = v76.__r_.__value_.__l.__size_;
  }

  v13 = std::string::append(&v80, v11, v12);
  v14 = *&v13->__r_.__value_.__l.__data_;
  __p[2] = v13->__r_.__value_.__r.__words[2];
  *__p = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v80.__r_.__value_.__l.__data_);
    if (std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<support::log::global_client_descriptor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<support::log::global_client_descriptor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<support::log::global_client_descriptor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<support::log::global_client_descriptor>>>>::find<std::string>(__p))
    {
      goto LABEL_95;
    }
  }

  else if (std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<support::log::global_client_descriptor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<support::log::global_client_descriptor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<support::log::global_client_descriptor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<support::log::global_client_descriptor>>>>::find<std::string>(__p))
  {
    goto LABEL_95;
  }

  v15 = operator new(0x40uLL);
  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v81, v77.__r_.__value_.__l.__data_, v77.__r_.__value_.__l.__size_);
  }

  else
  {
    v81 = v77;
  }

  if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v78, v76.__r_.__value_.__l.__data_, v76.__r_.__value_.__l.__size_);
  }

  else
  {
    v78 = v76;
  }

  *v15 = &unk_1F5F031E8;
  v16 = v15 + 8;
  *(v15 + 8) = v81;
  memset(&v81, 0, sizeof(v81));
  *(v15 + 32) = v78;
  memset(&v78, 0, sizeof(v78));
  if (v15[31] < 0)
  {
    v16 = *v16;
    v17 = v15 + 32;
    if ((v15[55] & 0x80000000) == 0)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v17 = v15 + 32;
    if ((v15[55] & 0x80000000) == 0)
    {
      goto LABEL_34;
    }
  }

  v17 = *v17;
LABEL_34:
  *(v15 + 7) = os_log_create(v16, v17);
  if (SHIBYTE(__p[2]) >= 0)
  {
    v18 = __p;
  }

  else
  {
    v18 = __p[0];
  }

  if (SHIBYTE(__p[2]) >= 0)
  {
    v19 = HIBYTE(__p[2]);
  }

  else
  {
    v19 = __p[1];
  }

  v20 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v80, v18, v19);
  v21 = v20;
  v22 = &unk_1ECFD5000;
  v23 = qword_1ECFD5328;
  v24 = &unk_1ECFD5000;
  if (!qword_1ECFD5328)
  {
    v26 = 0xAAAAAAAAAAAAAAAALL;
    goto LABEL_84;
  }

  v25 = vcnt_s8(qword_1ECFD5328);
  v25.i16[0] = vaddlv_u8(v25);
  if (v25.u32[0] > 1uLL)
  {
    v26 = v20;
    if (v20 >= qword_1ECFD5328)
    {
      v26 = v20 % qword_1ECFD5328;
    }
  }

  else
  {
    v26 = (qword_1ECFD5328 - 1) & v20;
  }

  v27 = *(qword_1ECFD5320 + 8 * v26);
  if (v27)
  {
    v28 = *v27;
    if (*v27)
    {
      if (SHIBYTE(__p[2]) >= 0)
      {
        v29 = HIBYTE(__p[2]);
      }

      else
      {
        v29 = __p[1];
      }

      if (SHIBYTE(__p[2]) >= 0)
      {
        v30 = __p;
      }

      else
      {
        v30 = __p[0];
      }

      if (v25.u32[0] < 2uLL)
      {
        while (1)
        {
          v35 = v28[1];
          if (v35 == v21)
          {
            v36 = *(v28 + 39);
            v37 = v36;
            if (v36 < 0)
            {
              v36 = v28[3];
            }

            if (v36 == v29)
            {
              v38 = v37 >= 0 ? (v28 + 2) : v28[2];
              if (!memcmp(v38, v30, v29))
              {
                goto LABEL_93;
              }
            }
          }

          else if ((v35 & (v23 - 1)) != v26)
          {
            goto LABEL_82;
          }

          v28 = *v28;
          if (!v28)
          {
            goto LABEL_82;
          }
        }
      }

      while (1)
      {
        v31 = v28[1];
        if (v31 == v21)
        {
          v32 = *(v28 + 39);
          v33 = v32;
          if (v32 < 0)
          {
            v32 = v28[3];
          }

          if (v32 == v29)
          {
            v34 = v33 >= 0 ? (v28 + 2) : v28[2];
            if (!memcmp(v34, v30, v29))
            {
              goto LABEL_93;
            }
          }
        }

        else
        {
          if (v31 >= v23)
          {
            v31 %= v23;
          }

          if (v31 != v26)
          {
LABEL_82:
            v24 = &unk_1ECFD5000;
            v22 = &unk_1ECFD5000;
            goto LABEL_84;
          }
        }

        v28 = *v28;
        if (!v28)
        {
          goto LABEL_82;
        }
      }
    }

    v24 = &unk_1ECFD5000;
  }

LABEL_84:
  v39 = operator new(0x30uLL);
  v80.__r_.__value_.__r.__words[0] = v39;
  v80.__r_.__value_.__l.__size_ = &qword_1ECFD5320;
  v80.__r_.__value_.__r.__words[2] = 0;
  *v39 = 0;
  *(v39 + 1) = v21;
  if (SHIBYTE(__p[2]) < 0)
  {
    v40 = v39;
    std::string::__init_copy_ctor_external((v39 + 16), __p[0], __p[1]);
    v39 = v40;
  }

  else
  {
    *(v39 + 1) = *__p;
    *(v39 + 4) = __p[2];
  }

  *(v39 + 5) = v15;
  v80.__r_.__value_.__s.__data_[16] = 1;
  v41 = (qword_1ECFD5338 + 1);
  if (!v23 || (*&dword_1ECFD5340 * v23) < v41)
  {
    v48 = 1;
    if (v23 >= 3)
    {
      v48 = (v23 & (v23 - 1)) != 0;
    }

    v49 = v48 | (2 * v23);
    v50 = vcvtps_u32_f32(v41 / *&dword_1ECFD5340);
    if (v49 <= v50)
    {
      prime = v50;
    }

    else
    {
      prime = v49;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
    }

    v23 = v22[101];
    if (prime > v23)
    {
LABEL_128:
      if (prime >> 61)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v60 = operator new(8 * prime);
      v61 = v24[100];
      v24[100] = v60;
      if (v61)
      {
        operator delete(v61);
        v60 = v24[100];
      }

      qword_1ECFD5328 = prime;
      bzero(v60, 8 * prime);
      v62 = qword_1ECFD5330;
      if (qword_1ECFD5330)
      {
        v63 = *(qword_1ECFD5330 + 8);
        v64 = prime - 1;
        if ((prime & (prime - 1)) == 0)
        {
          v65 = v63 & v64;
          *(v60 + v65) = &qword_1ECFD5330;
          for (i = *v62; *v62; i = *v62)
          {
            v67 = i[1] & v64;
            if (v67 == v65)
            {
              v62 = i;
            }

            else if (*(v60 + v67))
            {
              *v62 = *i;
              *i = **(v60 + v67);
              **(v60 + v67) = i;
            }

            else
            {
              *(v60 + v67) = v62;
              v62 = i;
              v65 = v67;
            }
          }

          goto LABEL_160;
        }

        if (v63 >= prime)
        {
          v63 %= prime;
        }

        *(v60 + v63) = &qword_1ECFD5330;
        v72 = *v62;
        if (!*v62)
        {
LABEL_160:
          v23 = prime;
          v71 = prime - 1;
          if ((prime & (prime - 1)) != 0)
          {
            goto LABEL_161;
          }

LABEL_176:
          v26 = v71 & v21;
          v42 = v24[100];
          v43 = *(v42 + 8 * (v71 & v21));
          v44 = v80.__r_.__value_.__r.__words[0];
          if (v43)
          {
            goto LABEL_90;
          }

          goto LABEL_177;
        }

        while (1)
        {
          v73 = v72[1];
          if (v73 >= prime)
          {
            v73 %= prime;
          }

          if (v73 == v63)
          {
            goto LABEL_154;
          }

          if (*(v60 + v73))
          {
            *v62 = *v72;
            *v72 = **(v60 + v73);
            **(v60 + v73) = v72;
            v72 = v62;
LABEL_154:
            v62 = v72;
            v72 = *v72;
            if (!v72)
            {
              goto LABEL_160;
            }
          }

          else
          {
            *(v60 + v73) = v62;
            v62 = v72;
            v72 = *v72;
            v63 = v73;
            if (!v72)
            {
              goto LABEL_160;
            }
          }
        }
      }

      v23 = prime;
      v71 = prime - 1;
      if ((prime & (prime - 1)) == 0)
      {
        goto LABEL_176;
      }

LABEL_161:
      if (v21 >= v23)
      {
        v26 = v21 % v23;
        v42 = v24[100];
        v43 = *(v42 + 8 * (v21 % v23));
        v44 = v80.__r_.__value_.__r.__words[0];
        if (v43)
        {
          goto LABEL_90;
        }
      }

      else
      {
        v26 = v21;
        v42 = v24[100];
        v43 = *(v42 + 8 * v21);
        v44 = v80.__r_.__value_.__r.__words[0];
        if (v43)
        {
          goto LABEL_90;
        }
      }

      goto LABEL_177;
    }

    if (prime < v23)
    {
      v68 = vcvtps_u32_f32(qword_1ECFD5338 / *&dword_1ECFD5340);
      if (v23 < 3 || (v69 = vcnt_s8(v23), v69.i16[0] = vaddlv_u8(v69), v69.u32[0] > 1uLL))
      {
        v68 = std::__next_prime(v68);
      }

      else
      {
        v70 = 1 << -__clz(v68 - 1);
        if (v68 >= 2)
        {
          v68 = v70;
        }
      }

      if (prime <= v68)
      {
        prime = v68;
      }

      if (prime < v23)
      {
        if (!prime)
        {
          v74 = v24[100];
          v24[100] = 0;
          if (v74)
          {
            operator delete(v74);
          }

          v23 = 0;
          v22[101] = 0;
          v71 = -1;
          goto LABEL_176;
        }

        goto LABEL_128;
      }

      v23 = v22[101];
    }

    v71 = v23 - 1;
    if ((v23 & (v23 - 1)) == 0)
    {
      goto LABEL_176;
    }

    goto LABEL_161;
  }

  v42 = v24[100];
  v43 = *(v42 + 8 * v26);
  v44 = v80.__r_.__value_.__r.__words[0];
  if (v43)
  {
LABEL_90:
    *v44 = *v43;
    goto LABEL_91;
  }

LABEL_177:
  *v44 = qword_1ECFD5330;
  qword_1ECFD5330 = v44;
  *(v42 + 8 * v26) = &qword_1ECFD5330;
  if (!*v44)
  {
    goto LABEL_92;
  }

  v75 = *(*v44 + 8);
  if ((v23 & (v23 - 1)) != 0)
  {
    if (v75 >= v23)
    {
      v75 %= v23;
    }

    v43 = (v42 + 8 * v75);
  }

  else
  {
    v43 = (v42 + 8 * (v75 & (v23 - 1)));
  }

LABEL_91:
  *v43 = v44;
LABEL_92:
  ++qword_1ECFD5338;
LABEL_93:
  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v78.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v81.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_95:
      v45 = std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<support::log::global_client_descriptor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<support::log::global_client_descriptor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<support::log::global_client_descriptor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<support::log::global_client_descriptor>>>>::find<std::string>(__p);
      if (v45)
      {
        goto LABEL_96;
      }

LABEL_124:
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }
  }

  else if ((SHIBYTE(v81.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_95;
  }

  operator delete(v81.__r_.__value_.__l.__data_);
  v45 = std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<support::log::global_client_descriptor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<support::log::global_client_descriptor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<support::log::global_client_descriptor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<support::log::global_client_descriptor>>>>::find<std::string>(__p);
  if (!v45)
  {
    goto LABEL_124;
  }

LABEL_96:
  v46 = v45[5];
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  std::mutex::unlock(&_MergedGlobals);
  a1[2] = v46;
  a1[3] = v46;
  a1[4] = v46 + 1;
  a1[5] = v46 + 4;
  a1[6] = v46 + 7;
  if ((SHIBYTE(v76.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v77.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_100;
    }

LABEL_103:
    operator delete(v77.__r_.__value_.__l.__data_);
    if (a4)
    {
      goto LABEL_101;
    }

LABEL_104:
    pthread_mutex_lock(&stru_1ED944238);
    if (!qword_1ED944278)
    {
      v47 = operator new(0xA8uLL);
      *(v47 + 1) = 0;
      *(v47 + 2) = 0;
      *v47 = &unk_1F5F032B0;
      a4 = (v47 + 24);
      __p[0] = &unk_1F5F030D8;
      LOBYTE(__p[1]) = 3;
      v80.__r_.__value_.__r.__words[0] = &v80;
      *&v80.__r_.__value_.__r.__words[1] = &v80;
      *(v47 + 3) = &unk_1F5F030F0;
      *(v47 + 4) = 850045863;
      *(v47 + 40) = 0u;
      *(v47 + 56) = 0u;
      *(v47 + 72) = 0u;
      *(v47 + 11) = 0;
      v81.__r_.__value_.__r.__words[0] = 0x6C61626F6C67;
      *(v81.__r_.__value_.__r.__words + 6) = 0x6E616D5F676F6C2ELL;
      *(v47 + 12) = v81.__r_.__value_.__r.__words[0];
      strcpy(v47 + 102, ".log_manager");
      *(v47 + 115) = 0;
      v47[119] = 18;
      *(v47 + 15) = os_log_create("com.apple.telephony.basebandservices", v47 + 96);
      *(v47 + 16) = &unk_1F5F030D8;
      v47[136] = __p[1];
      *(v47 + 18) = v47 + 144;
      *(v47 + 19) = v47 + 144;
      *(v47 + 20) = 0;
      v52 = v80.__r_.__value_.__r.__words[2];
      if (v80.__r_.__value_.__r.__words[2])
      {
        v53 = *&v80.__r_.__value_.__l.__data_;
        v54 = *(v80.__r_.__value_.__r.__words[0] + 8);
        v55 = *v80.__r_.__value_.__l.__size_;
        *(v55 + 8) = v54;
        *v54 = v55;
        v56 = *(v47 + 18);
        *(v56 + 8) = *(&v53 + 1);
        **(&v53 + 1) = v56;
        *(v47 + 18) = v53;
        *(v53 + 8) = v47 + 144;
        *(v47 + 20) = v52;
      }

      *(v47 + 3) = &unk_1F5F03120;
      v57 = off_1ED944280;
      qword_1ED944278 = (v47 + 24);
      off_1ED944280 = v47;
      if (!v57)
      {
LABEL_119:
        atomic_fetch_add_explicit(v47 + 1, 1uLL, memory_order_relaxed);
LABEL_120:
        pthread_mutex_unlock(&stru_1ED944238);
        a1[7] = a4;
        a1[8] = v47;
        goto LABEL_121;
      }

      if (!atomic_fetch_add(&v57->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v57->__on_zero_shared)(v57);
        std::__shared_weak_count::__release_weak(v57);
      }
    }

    a4 = qword_1ED944278;
    v47 = off_1ED944280;
    if (!off_1ED944280)
    {
      goto LABEL_120;
    }

    goto LABEL_119;
  }

  operator delete(v76.__r_.__value_.__l.__data_);
  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_103;
  }

LABEL_100:
  if (!a4)
  {
    goto LABEL_104;
  }

LABEL_101:
  a1[7] = 0;
  a1[8] = 0;
LABEL_121:
  a1[9] = a4;
  v58 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1E52EDEE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<support::log::global_client_descriptor>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<support::log::global_client_descriptor>>,void *>>>>::~unique_ptr[abi:ne200100](&a36);
  if (a28 < 0)
  {
    operator delete(__p);
    if ((*(v41 - 105) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((*(v41 - 105) & 0x80000000) == 0)
  {
LABEL_3:
    if ((a35 & 0x80000000) == 0)
    {
LABEL_8:
      std::mutex::unlock(&_MergedGlobals);
      if (a14 < 0)
      {
        operator delete(a9);
      }

      if (a21 < 0)
      {
        operator delete(a16);
      }

      _Unwind_Resume(a1);
    }

LABEL_7:
    operator delete(a30);
    goto LABEL_8;
  }

  operator delete(*(v41 - 128));
  if ((a35 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void *support::log::client::client(void *a1, std::string *a2, std::string *a3)
{
  v6 = *a2;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  a2->__r_.__value_.__r.__words[0] = 0;
  __p = *a3;
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  support::log::client::client(a1, &v6, &__p, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v6.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else if ((SHIBYTE(v6.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(v6.__r_.__value_.__l.__data_);
  return a1;
}

void sub_1E52EE0B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a16);
  _Unwind_Resume(exception_object);
}

uint64_t ctu::PthreadMutexGuardPolicy<support::log::buffer>::~PthreadMutexGuardPolicy(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v2 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  pthread_mutex_unlock(a1);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 72);
  if (!v3 || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return a1;
}

uint64_t ctu::PthreadMutexGuardPolicy<support::log::manager_global>::~PthreadMutexGuardPolicy(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v2 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  pthread_mutex_unlock(a1);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 72);
  if (!v3 || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return a1;
}

void support::log::manager_global::~manager_global(support::log::manager_global *this)
{
  *this = &unk_1F5F030F0;
  if (*(this + 17))
  {
    v2 = this + 120;
    v3 = *(this + 16);
    v4 = *(*(this + 15) + 8);
    v5 = *v3;
    *(v5 + 8) = v4;
    *v4 = v5;
    *(this + 17) = 0;
    if (v3 != this + 120)
    {
      do
      {
        v7 = *(v3 + 1);
        v6 = *(v3 + 2);
        *(v3 + 2) = 0;
        if (v6)
        {
          (*(*v6 + 16))(v6);
        }

        operator delete(v3);
        v3 = v7;
      }

      while (v7 != v2);
    }
  }

  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  std::mutex::~mutex((this + 8));
}

{
  *this = &unk_1F5F030F0;
  if (*(this + 17))
  {
    v2 = this + 120;
    v3 = *(this + 16);
    v4 = *(*(this + 15) + 8);
    v5 = *v3;
    *(v5 + 8) = v4;
    *v4 = v5;
    *(this + 17) = 0;
    if (v3 != this + 120)
    {
      do
      {
        v7 = *(v3 + 1);
        v6 = *(v3 + 2);
        *(v3 + 2) = 0;
        if (v6)
        {
          (*(*v6 + 16))(v6);
        }

        operator delete(v3);
        v3 = v7;
      }

      while (v7 != v2);
    }
  }

  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  std::mutex::~mutex((this + 8));

  operator delete(this);
}

uint64_t **std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<support::log::global_client_descriptor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<support::log::global_client_descriptor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<support::log::global_client_descriptor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<support::log::global_client_descriptor>>>>::find<std::string>(uint64_t *a1)
{
  v1 = a1;
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  if (v2 >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = a1[1];
  }

  v5 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v24, v3, v4);
  v6 = qword_1ECFD5328;
  if (!qword_1ECFD5328)
  {
    return 0;
  }

  v7 = v5;
  v8 = vcnt_s8(qword_1ECFD5328);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = v5;
    if (v5 >= qword_1ECFD5328)
    {
      v9 = v5 % qword_1ECFD5328;
    }
  }

  else
  {
    v9 = (qword_1ECFD5328 - 1) & v5;
  }

  v10 = *(qword_1ECFD5320 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    v12 = v1[23];
    if (v12 >= 0)
    {
      v13 = v1[23];
    }

    else
    {
      v13 = *(v1 + 1);
    }

    if (v12 < 0)
    {
      v1 = *v1;
    }

    if (v8.u32[0] < 2uLL)
    {
      v14 = qword_1ECFD5328 - 1;
      while (1)
      {
        v19 = v11[1];
        if (v19 == v7)
        {
          v20 = *(v11 + 39);
          v21 = v20;
          if (v20 < 0)
          {
            v20 = v11[3];
          }

          if (v20 == v13)
          {
            v22 = v21 >= 0 ? (v11 + 2) : v11[2];
            if (!memcmp(v22, v1, v13))
            {
              return v11;
            }
          }
        }

        else if ((v19 & v14) != v9)
        {
          return 0;
        }

        v11 = *v11;
        if (!v11)
        {
          return v11;
        }
      }
    }

    do
    {
      v15 = v11[1];
      if (v15 == v7)
      {
        v16 = *(v11 + 39);
        v17 = v16;
        if (v16 < 0)
        {
          v16 = v11[3];
        }

        if (v16 == v13)
        {
          v18 = v17 >= 0 ? (v11 + 2) : v11[2];
          if (!memcmp(v18, v1, v13))
          {
            return v11;
          }
        }
      }

      else
      {
        if (v15 >= v6)
        {
          v15 %= v6;
        }

        if (v15 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v23 = *(a2 + a3 - 48);
      v24 = *(a2 + a3 - 40);
      v25 = *(a2 + a3 - 24);
      v26 = *(a2 + a3 - 56);
      v27 = *(a2 + a3 - 16);
      v28 = *(a2 + a3 - 8);
      v29 = v26 + v27;
      v30 = 0x9DDFEA08EB382D69 * (v25 ^ ((0x9DDFEA08EB382D69 * (v25 ^ (v23 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v25 ^ (v23 + a3))));
      v31 = 0x9DDFEA08EB382D69 * (v30 ^ (v30 >> 47));
      v32 = *(a2 + a3 - 64) + a3;
      v33 = v23 + v26 + v32;
      v34 = __ROR8__(v33, 44) + v32;
      v35 = __ROR8__(v32 + v24 + v31, 21);
      v36 = v33 + v24;
      v37 = v34 + v35;
      v38 = v29 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v39 = v25 + v27 + v38;
      v40 = v39 + v28;
      v41 = __ROR8__(v39, 44) + v38 + __ROR8__(v38 + v24 + v28, 21);
      v43 = *a2;
      v42 = a2 + 4;
      v44 = v43 - 0x4B6D499041670D8DLL * v24;
      v45 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v46 = *(v42 - 3);
        v47 = v44 + v36 + v29 + v46;
        v48 = v42[2];
        v49 = v42[3];
        v50 = v42[1];
        v29 = v50 + v36 - 0x4B6D499041670D8DLL * __ROR8__(v29 + v37 + v48, 42);
        v51 = v31 + v40;
        v52 = *(v42 - 2);
        v53 = *(v42 - 1);
        v54 = *(v42 - 4) - 0x4B6D499041670D8DLL * v37;
        v55 = v54 + v40 + v53;
        v56 = v54 + v46 + v52;
        v36 = v56 + v53;
        v57 = __ROR8__(v56, 44) + v54;
        v58 = (0xB492B66FBE98F273 * __ROR8__(v47, 37)) ^ v41;
        v44 = 0xB492B66FBE98F273 * __ROR8__(v51, 33);
        v37 = v57 + __ROR8__(v55 + v58, 21);
        v59 = v44 + v41 + *v42;
        v40 = v50 + v48 + v59 + v49;
        v41 = __ROR8__(v50 + v48 + v59, 44) + v59 + __ROR8__(v29 + v52 + v59 + v49, 21);
        v42 += 8;
        v31 = v58;
        v45 += 64;
      }

      while (v45);
      v60 = v58 - 0x4B6D499041670D8DLL * (v29 ^ (v29 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v40 ^ ((0x9DDFEA08EB382D69 * (v40 ^ v36)) >> 47) ^ (0x9DDFEA08EB382D69 * (v40 ^ v36)))) ^ ((0x9DDFEA08EB382D69 * (v40 ^ ((0x9DDFEA08EB382D69 * (v40 ^ v36)) >> 47) ^ (0x9DDFEA08EB382D69 * (v40 ^ v36)))) >> 47));
      v61 = v44 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v41 ^ ((0x9DDFEA08EB382D69 * (v41 ^ v37)) >> 47) ^ (0x9DDFEA08EB382D69 * (v41 ^ v37)))) ^ ((0x9DDFEA08EB382D69 * (v41 ^ ((0x9DDFEA08EB382D69 * (v41 ^ v37)) >> 47) ^ (0x9DDFEA08EB382D69 * (v41 ^ v37)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v61 ^ ((0x9DDFEA08EB382D69 * (v61 ^ v60)) >> 47) ^ (0x9DDFEA08EB382D69 * (v61 ^ v60)))) ^ ((0x9DDFEA08EB382D69 * (v61 ^ ((0x9DDFEA08EB382D69 * (v61 ^ v60)) >> 47) ^ (0x9DDFEA08EB382D69 * (v61 ^ v60)))) >> 47));
    }

    else
    {
      v6 = *(a2 + a3 - 16);
      v7 = *a2 - 0x3C5A37A36834CED9 * (v6 + a3);
      v9 = a2[2];
      v8 = a2[3];
      v10 = __ROR8__(v7 + v8, 52);
      v11 = v7 + a2[1];
      v12 = __ROR8__(v11, 7);
      v13 = v11 + v9;
      v14 = *(a2 + a3 - 32) + v9;
      v15 = v12 + __ROR8__(*a2 - 0x3C5A37A36834CED9 * (v6 + a3), 37) + v10 + __ROR8__(v13, 31);
      v16 = *(a2 + a3 - 24) + v14 + v6;
      v17 = 0xC3A5C85C97CB3127 * (v16 + *(a2 + a3 - 8) + v8 + v15) - 0x651E95C4D06FBFB1 * (v13 + v8 + __ROR8__(v14, 37) + __ROR8__(*(a2 + a3 - 24) + v14, 7) + __ROR8__(*(a2 + a3 - 8) + v8 + v14, 52) + __ROR8__(v16, 31));
      return 0x9AE16A3B2F90404FLL * ((v15 - 0x3C5A37A36834CED9 * (v17 ^ (v17 >> 47))) ^ ((v15 - 0x3C5A37A36834CED9 * (v17 ^ (v17 >> 47))) >> 47));
    }
  }

  else if (a3 > 0x10)
  {
    v18 = a2[1];
    v19 = 0xB492B66FBE98F273 * *a2;
    v20 = __ROR8__(0x9AE16A3B2F90404FLL * *(a2 + a3 - 8), 30) + __ROR8__(v19 - v18, 43);
    v21 = v19 + a3 + __ROR8__(v18 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a2 + a3 - 8);
    v22 = 0x9DDFEA08EB382D69 * ((v20 - 0x3C5A37A36834CED9 * *(a2 + a3 - 16)) ^ v21);
    return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v21 ^ (v22 >> 47) ^ v22)) ^ ((0x9DDFEA08EB382D69 * (v21 ^ (v22 >> 47) ^ v22)) >> 47));
  }

  else if (a3 < 9)
  {
    if (a3 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a3)
      {
        v64 = (0xC949D7C7509E6557 * (a3 | (4 * *(a2 + a3 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a2 | (*(a2 + (a3 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v64 ^ (v64 >> 47));
      }
    }

    else
    {
      v62 = *(a2 + a3 - 4);
      v63 = 0x9DDFEA08EB382D69 * (((8 * *a2) + a3) ^ v62);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v62 ^ (v63 >> 47) ^ v63)) ^ ((0x9DDFEA08EB382D69 * (v62 ^ (v63 >> 47) ^ v63)) >> 47));
    }
  }

  else
  {
    v3 = *(a2 + a3 - 8);
    v4 = __ROR8__(v3 + a3, a3);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a2)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a2)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a2)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a2)))) >> 47))) ^ v3;
  }

  return result;
}

uint64_t *std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<support::log::global_client_descriptor>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::unique_ptr<support::log::global_client_descriptor>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = *(v2 + 40);
      *(v2 + 40) = 0;
      if (v3)
      {
        (*(*v3 + 8))(v3);
      }

      if (*(v2 + 39) < 0)
      {
        operator delete(*(v2 + 16));
      }
    }

    operator delete(v2);
  }

  return a1;
}

void support::log::global_client_descriptor::~global_client_descriptor(void **this)
{
  *this = &unk_1F5F031E8;
  if ((*(this + 55) & 0x80000000) == 0)
  {
    if ((*(this + 31) & 0x80000000) == 0)
    {
      return;
    }

LABEL_5:
    operator delete(this[1]);
    return;
  }

  operator delete(this[4]);
  if (*(this + 31) < 0)
  {
    goto LABEL_5;
  }
}

{
  *this = &unk_1F5F031E8;
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
    if ((*(this + 31) & 0x80000000) == 0)
    {
LABEL_3:
      v2 = this;

      goto LABEL_5;
    }
  }

  else if ((*(this + 31) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(this[1]);
  v2 = this;

LABEL_5:
  operator delete(v2);
}

void std::__shared_ptr_emplace<support::log::buffer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5F03218;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void support::log::buffer::~buffer(support::log::buffer *this)
{
  *this = &unk_1F5F03268;
  v2 = *(this + 9);
  v3 = this + 80;
  if (v2 != this + 80)
  {
    do
    {
      free(*(v2 + 4));
      v4 = *(v2 + 1);
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = *(v2 + 2);
          v6 = *v5 == v2;
          v2 = v5;
        }

        while (!v6);
      }

      v2 = v5;
    }

    while (v5 != v3);
  }

  std::deque<char *>::~deque[abi:ne200100](this + 96);
  std::__tree<char *>::destroy(*(this + 10));
  std::mutex::~mutex((this + 8));
}

{
  *this = &unk_1F5F03268;
  v2 = *(this + 9);
  v3 = this + 80;
  if (v2 != this + 80)
  {
    do
    {
      free(*(v2 + 4));
      v4 = *(v2 + 1);
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = *(v2 + 2);
          v6 = *v5 == v2;
          v2 = v5;
        }

        while (!v6);
      }

      v2 = v5;
    }

    while (v5 != v3);
  }

  std::deque<char *>::~deque[abi:ne200100](this + 96);
  std::__tree<char *>::destroy(*(this + 10));
  std::mutex::~mutex((this + 8));

  operator delete(this);
}

uint64_t std::deque<char *>::~deque[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 512;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__tree<char *>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<char *>::destroy(*a1);
    std::__tree<char *>::destroy(a1[1]);

    operator delete(a1);
  }
}

void std::__shared_ptr_emplace<support::log::manager_global>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5F032B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t __cxx_global_var_init_20()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_1E5234000);
  }

  return result;
}

const char *BBUStageAsString(int a1)
{
  if (a1 > 7)
  {
    switch(a1)
    {
      case 8:
        return "booted";
      case 16:
        return "provisioning";
      case 32:
        return "eUICC";
      default:
        goto LABEL_14;
    }
  }

  else
  {
    switch(a1)
    {
      case 1:
        return "initial";
      case 2:
        return "first";
      case 4:
        return "second";
      default:
LABEL_14:
        exception = __cxa_allocate_exception(0x210uLL);
        _BBUException::_BBUException(exception, 69, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Common/BBUStages.cpp", 0xFu, "Assertion failure(false && Unrecognized BBU stage.)", v3, v4, v5, v6);
    }
  }
}

void BasebandCoredump::create(char **a1@<X8>)
{
  v6 = 0u;
  v10 = 0u;
  v12 = 0;
  v11 = 0u;
  v9 = 0u;
  v8 = 0u;
  v7 = 0u;
  v5 = 0u;
  v4 = 0u;
  v3 = 0u;
  v2 = &unk_1F5F03338;
  BYTE8(v6) = 0;
  BYTE8(v10) = 0;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  BasebandCoredump::create(&v2, a1);
  BasebandCoredumpParams::~BasebandCoredumpParams(&v2);
}

void BasebandCoredump::create(uint64_t a1@<X0>, char **a2@<X8>)
{
  *a2 = 0;
  v8 = &unk_1F5F03338;
  LOBYTE(v9) = 0;
  v11 = 0;
  if (*(a1 + 32) == 1)
  {
    v9 = *(a1 + 8);
    v10 = *(a1 + 24);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    v11 = 1;
    LOBYTE(v12) = 0;
    v14 = 0;
    if (*(a1 + 64) != 1)
    {
LABEL_3:
      LOBYTE(v15) = 0;
      v17 = 0;
      if (*(a1 + 96) != 1)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    LOBYTE(v12) = 0;
    v14 = 0;
    if (*(a1 + 64) != 1)
    {
      goto LABEL_3;
    }
  }

  v12 = *(a1 + 40);
  v13 = *(a1 + 56);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  v14 = 1;
  LOBYTE(v15) = 0;
  v17 = 0;
  if (*(a1 + 96) != 1)
  {
LABEL_4:
    LOBYTE(v18) = 0;
    v20 = 0;
    if (*(a1 + 128) != 1)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v15 = *(a1 + 72);
  v16 = *(a1 + 88);
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0;
  v17 = 1;
  LOBYTE(v18) = 0;
  v20 = 0;
  if (*(a1 + 128) != 1)
  {
LABEL_5:
    LOBYTE(v21) = 0;
    v22 = 0;
    v3 = *(a1 + 152);
    if (v3 != 1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_12:
  v18 = *(a1 + 104);
  v19 = *(a1 + 120);
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = 0;
  v20 = 1;
  LOBYTE(v21) = 0;
  v22 = 0;
  v3 = *(a1 + 152);
  if (v3 == 1)
  {
LABEL_6:
    v21 = *(a1 + 136);
    *(a1 + 136) = 0;
    *(a1 + 144) = 0;
    v22 = v3;
  }

LABEL_7:
  v4 = *(a1 + 160);
  v5 = *(a1 + 176);
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  v23 = v4;
  v24 = v5;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  v25 = *(a1 + 192);
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  DaleCoredump::create(&v8, &v26);
  v6 = v26;
  v26 = 0;
  BasebandCoredumpParams::~BasebandCoredumpParams(&v8);
  if (v6)
  {
    *a2 = v6;
  }

  else
  {
    ACFULogging::getLogInstance(v7);
    ACFULogging::handleMessage();
  }
}

void sub_1E52EF580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  BasebandCoredumpParams::~BasebandCoredumpParams(va);
  *v4 = 0;
  _Unwind_Resume(a1);
}

void BasebandCoredumpParams::~BasebandCoredumpParams(BasebandCoredumpParams *this)
{
  *this = &unk_1F5F03338;
  v2 = *(this + 25);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(this + 23);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(this + 21);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    if (*(this + 152) != 1)
    {
      goto LABEL_14;
    }
  }

  else if (*(this + 152) != 1)
  {
    goto LABEL_14;
  }

  v5 = *(this + 18);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

LABEL_14:
  if (*(this + 128) == 1 && *(this + 127) < 0)
  {
    operator delete(*(this + 13));
    if (*(this + 96) != 1)
    {
      goto LABEL_20;
    }
  }

  else if (*(this + 96) != 1)
  {
    goto LABEL_20;
  }

  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

LABEL_20:
  if (*(this + 64) == 1 && *(this + 63) < 0)
  {
    operator delete(*(this + 5));
    if (*(this + 32) != 1)
    {
      return;
    }
  }

  else if (*(this + 32) != 1)
  {
    return;
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

uint64_t support::fs::updateOwner(const char *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v6.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&__dst.st_blksize = v6;
  *__dst.st_qspare = v6;
  __dst.st_birthtimespec = v6;
  *&__dst.st_size = v6;
  __dst.st_mtimespec = v6;
  __dst.st_ctimespec = v6;
  *&__dst.st_uid = v6;
  __dst.st_atimespec = v6;
  *&__dst.st_dev = v6;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  if (!stat(a1, &__dst))
  {
    v16 = v5[23] >= 0 ? v5 : *v5;
    v17 = opendir(v16);
    if (v17)
    {
      v18 = v17;
      v19 = readdir(v17);
      closedir(v18);
      if (v19)
      {
        v58 = 0;
        v59 = 0;
        v60 = 0;
        support::fs::readDir(v5, &v58);
        v20 = v58;
        v54 = v59;
        if (v58 == v59)
        {
          updated = 0;
          if (v58)
          {
            goto LABEL_108;
          }

          return updated;
        }

        v21 = (v58 + 24);
        while (1)
        {
          memset(&v57, 170, sizeof(v57));
          if (*(v21 - 1) < 0)
          {
            std::string::__init_copy_ctor_external(&v57, *(v21 - 3), *(v21 - 2));
          }

          else
          {
            v23 = *(v21 - 3);
            v57.__r_.__value_.__r.__words[2] = *(v21 - 1);
            *&v57.__r_.__value_.__l.__data_ = v23;
          }

          memset(&__p, 170, sizeof(__p));
          v24 = v5[23];
          if (v24 >= 0)
          {
            v25 = *(v5 + 23);
          }

          else
          {
            v25 = *(v5 + 1);
          }

          v26 = v25 + 1;
          if (v25 + 1 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v26 < 0x17)
          {
            memset(&__dst, 0, 24);
            p_dst = &__dst;
            HIBYTE(__dst.st_gid) = v25 + 1;
            if (!v25)
            {
              goto LABEL_48;
            }
          }

          else
          {
            if ((v26 | 7) == 0x17)
            {
              v27 = 25;
            }

            else
            {
              v27 = (v26 | 7) + 1;
            }

            p_dst = operator new(v27);
            __dst.st_ino = v25 + 1;
            *&__dst.st_uid = v27 | 0x8000000000000000;
            *&__dst.st_dev = p_dst;
          }

          v29 = *v5;
          if (v24 >= 0)
          {
            v30 = v5;
          }

          else
          {
            v30 = *v5;
          }

          memmove(p_dst, v30, v25);
LABEL_48:
          *&p_dst[v25] = 47;
          if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v31 = &v57;
          }

          else
          {
            v31 = v57.__r_.__value_.__r.__words[0];
          }

          if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v57.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v57.__r_.__value_.__l.__size_;
          }

          v33 = std::string::append(&__dst, v31, size);
          v34 = *&v33->__r_.__value_.__l.__data_;
          __p.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
          *&__p.__r_.__value_.__l.__data_ = v34;
          v33->__r_.__value_.__l.__size_ = 0;
          v33->__r_.__value_.__r.__words[2] = 0;
          v33->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(__dst.st_gid) < 0)
          {
            operator delete(*&__dst.st_dev);
            v35 = HIBYTE(v57.__r_.__value_.__r.__words[2]);
            if ((*(&v57.__r_.__value_.__s + 23) & 0x80) == 0)
            {
LABEL_56:
              if (v35 == 1)
              {
                if (v57.__r_.__value_.__s.__data_[0] == 46)
                {
                  goto LABEL_72;
                }
              }

              else if (v35 == 2 && LOWORD(v57.__r_.__value_.__l.__data_) == 11822)
              {
                goto LABEL_72;
              }

              goto LABEL_68;
            }
          }

          else
          {
            v35 = HIBYTE(v57.__r_.__value_.__r.__words[2]);
            if ((*(&v57.__r_.__value_.__s + 23) & 0x80) == 0)
            {
              goto LABEL_56;
            }
          }

          if (v57.__r_.__value_.__l.__size_ == 1)
          {
            if (*v57.__r_.__value_.__l.__data_ == 46)
            {
              goto LABEL_72;
            }
          }

          else if (v57.__r_.__value_.__l.__size_ == 2 && *v57.__r_.__value_.__l.__data_ == 11822)
          {
            goto LABEL_72;
          }

LABEL_68:
          v36.tv_sec = 0xAAAAAAAAAAAAAAAALL;
          v36.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
          *&__dst.st_blksize = v36;
          *__dst.st_qspare = v36;
          __dst.st_birthtimespec = v36;
          *&__dst.st_size = v36;
          __dst.st_mtimespec = v36;
          __dst.st_ctimespec = v36;
          *&__dst.st_uid = v36;
          __dst.st_atimespec = v36;
          *&__dst.st_dev = v36;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          if (stat(p_p, &__dst) || ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v47 = &__p) : (v47 = __p.__r_.__value_.__r.__words[0]), (v48 = opendir(v47), (v49 = v48) == 0) || (v50 = readdir(v48), closedir(v49), !v50)))
          {
LABEL_72:
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v38 = &__p;
            }

            else
            {
              v38 = __p.__r_.__value_.__r.__words[0];
            }

            v39 = strlen(v38);
            if (v39 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v40 = v39;
            if (v39 >= 0x17)
            {
              if ((v39 | 7) == 0x17)
              {
                v42 = 25;
              }

              else
              {
                v42 = (v39 | 7) + 1;
              }

              v41 = operator new(v42);
              __dst.st_ino = v40;
              *&__dst.st_uid = v42 | 0x8000000000000000;
              *&__dst.st_dev = v41;
            }

            else
            {
              HIBYTE(__dst.st_gid) = v39;
              v41 = &__dst;
              if (!v39)
              {
LABEL_84:
                v41[v40] = 0;
                st_gid_high = SHIBYTE(__dst.st_gid);
                v44 = *&__dst.st_dev;
                if ((__dst.st_gid & 0x80000000) == 0)
                {
                  v45 = &__dst;
                }

                else
                {
                  v45 = *&__dst.st_dev;
                }

                updated = chown(v45, a2, a3) == 0;
                if (st_gid_high < 0)
                {
                  v46 = v44;
LABEL_89:
                  operator delete(v46);
                  goto LABEL_90;
                }

                goto LABEL_90;
              }
            }

            memmove(v41, v38, v40);
            goto LABEL_84;
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v55, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
          }

          else
          {
            v55 = __p;
          }

          updated = support::fs::updateOwner(&v55, a2, a3);
          if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
          {
            v46 = v55.__r_.__value_.__r.__words[0];
            goto LABEL_89;
          }

LABEL_90:
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
            if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
            {
LABEL_94:
              operator delete(v57.__r_.__value_.__l.__data_);
            }
          }

          else if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_94;
          }

          if (v21 == v54)
          {
            v22 = 0;
          }

          else
          {
            v22 = updated;
          }

          v21 += 3;
          if ((v22 & 1) == 0)
          {
            v20 = v58;
            if (!v58)
            {
              return updated;
            }

LABEL_108:
            v51 = v59;
            v15 = v20;
            if (v59 != v20)
            {
              do
              {
                v52 = *(v51 - 1);
                v51 -= 3;
                if (v52 < 0)
                {
                  operator delete(*v51);
                }
              }

              while (v51 != v20);
              v15 = v58;
            }

            v59 = v20;
LABEL_115:
            operator delete(v15);
            return updated;
          }
        }
      }
    }
  }

  if (v5[23] < 0)
  {
    v5 = *v5;
  }

  v7 = strlen(v5);
  if (v7 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    if ((v7 | 7) == 0x17)
    {
      v10 = 25;
    }

    else
    {
      v10 = (v7 | 7) + 1;
    }

    v9 = operator new(v10);
    __dst.st_ino = v8;
    *&__dst.st_uid = v10 | 0x8000000000000000;
    *&__dst.st_dev = v9;
    goto LABEL_14;
  }

  HIBYTE(__dst.st_gid) = v7;
  v9 = &__dst;
  if (v7)
  {
LABEL_14:
    memmove(v9, v5, v8);
  }

  *(v9 + v8) = 0;
  v11 = SHIBYTE(__dst.st_gid);
  v12 = *&__dst.st_dev;
  if ((__dst.st_gid & 0x80000000) == 0)
  {
    v13 = &__dst;
  }

  else
  {
    v13 = *&__dst.st_dev;
  }

  updated = chown(v13, a2, a3) == 0;
  if (v11 < 0)
  {
    v15 = v12;
    goto LABEL_115;
  }

  return updated;
}

DIR *support::fs::readDir(const char *a1, uint64_t a2)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  result = opendir(a1);
  if (result)
  {
    v4 = result;
    v5 = readdir(result);
    if (v5)
    {
      v6 = v5;
      do
      {
        memset(__dst, 170, sizeof(__dst));
        d_namlen = v6->d_namlen;
        if (d_namlen >= 0x17)
        {
          if ((d_namlen | 7) == 0x17)
          {
            v11 = 25;
          }

          else
          {
            v11 = (d_namlen | 7) + 1;
          }

          v8 = operator new(v11);
          *&__dst[8] = d_namlen;
          *&__dst[16] = v11 | 0x8000000000000000;
          *__dst = v8;
        }

        else
        {
          __dst[23] = v6->d_namlen;
          v8 = __dst;
          if (!d_namlen)
          {
            __dst[d_namlen] = 0;
            v9 = *(a2 + 8);
            if (v9 < *(a2 + 16))
            {
              goto LABEL_10;
            }

            goto LABEL_17;
          }
        }

        memmove(v8, v6->d_name, d_namlen);
        v8[d_namlen] = 0;
        v9 = *(a2 + 8);
        if (v9 < *(a2 + 16))
        {
LABEL_10:
          if ((__dst[23] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v9, *__dst, *&__dst[8]);
          }

          else
          {
            v10 = *__dst;
            v9->__r_.__value_.__r.__words[2] = *&__dst[16];
            *&v9->__r_.__value_.__l.__data_ = v10;
          }

          *(a2 + 8) = v9 + 1;
          *(a2 + 8) = v9 + 1;
          if ((__dst[23] & 0x80000000) == 0)
          {
            goto LABEL_6;
          }

LABEL_21:
          operator delete(*__dst);
          goto LABEL_6;
        }

LABEL_17:
        *(a2 + 8) = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a2, __dst);
        if ((__dst[23] & 0x80000000) != 0)
        {
          goto LABEL_21;
        }

LABEL_6:
        v6 = readdir(v4);
      }

      while (v6);
    }

    return closedir(v4);
  }

  return result;
}

void sub_1E52EFEFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  *(v15 + 8) = v16;
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t support::fs::getUidGid(int a1, uid_t *a2, gid_t *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  memset(__p, 170, sizeof(__p));
  if (a1 == 1)
  {
    HIBYTE(__p[2]) = 9;
    strcpy(__p, "_wireless");
    v5 = getpwnam(__p);
    if (v5)
    {
      goto LABEL_4;
    }

    goto LABEL_6;
  }

  if (a1)
  {
    goto LABEL_12;
  }

  HIBYTE(__p[2]) = 6;
  strcpy(__p, "mobile");
  v5 = getpwnam(__p);
  if (!v5)
  {
LABEL_6:
    if ((atomic_load_explicit(&qword_1ED948EC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED948EC0))
    {
      qword_1ED948EC8 = 0;
      qword_1ED948ED0 = 0;
      __cxa_guard_release(&qword_1ED948EC0);
    }

    if (_MergedGlobals_3 != -1)
    {
      dispatch_once(&_MergedGlobals_3, &__block_literal_global_3);
    }

    v7 = qword_1ED948ED0;
    if (os_log_type_enabled(qword_1ED948ED0, OS_LOG_TYPE_ERROR))
    {
      v9 = __p;
      if (SHIBYTE(__p[2]) < 0)
      {
        v9 = __p[0];
      }

      *buf = 136315138;
      v12 = v9;
      _os_log_error_impl(&dword_1E5234000, v7, OS_LOG_TYPE_ERROR, "Getting uid and gid: failed to get passwd for %s", buf, 0xCu);
      if ((HIBYTE(__p[2]) & 0x80) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    if ((HIBYTE(__p[2]) & 0x80) != 0)
    {
LABEL_11:
      operator delete(__p[0]);
    }

LABEL_12:
    result = 0;
    goto LABEL_13;
  }

LABEL_4:
  *a2 = v5->pw_uid;
  *a3 = v5->pw_gid;
  result = 1;
LABEL_13:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL support::fs::loadFile(uint64_t *a1, char **a2)
{
  v19[89] = *MEMORY[0x1E69E9840];
  memset(v19, 170, 0x240uLL);
  std::ifstream::basic_ifstream(v19, a1);
  if (v19[17] && (std::istream::tellg(), std::istream::seekg(), std::istream::tellg(), v4 = v19[88], std::istream::seekg(), v4) && !*(&v19[4] + *(v19[0] - 24)))
  {
    v9 = *a2;
    v8 = a2[1];
    v10 = v8 - *a2;
    v11 = v4 - v10;
    if (v4 <= v10)
    {
      if (v4 < v10)
      {
        a2[1] = &v9[v4];
      }
    }

    else
    {
      v12 = a2[2];
      if (v12 - v8 >= v11)
      {
        v17 = &v8[v11];
        bzero(v8, v4 - v10);
        a2[1] = v17;
      }

      else
      {
        if ((v4 & 0x8000000000000000) != 0)
        {
          std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
        }

        v13 = v12 - v9;
        v14 = 2 * v13;
        if (2 * v13 <= v4)
        {
          v14 = v4;
        }

        if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v15 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v14;
        }

        v16 = operator new(v15);
        bzero(&v16[v10], v4 - v10);
        memcpy(v16, v9, v10);
        *a2 = v16;
        a2[1] = &v16[v4];
        a2[2] = &v16[v15];
        if (v9)
        {
          operator delete(v9);
        }
      }
    }

    v18 = *a2;
    std::istream::read();
    v5 = v19[1] == v4;
    if (!std::filebuf::close())
    {
      std::ios_base::clear((v19 + *(v19[0] - 24)), *(&v19[4] + *(v19[0] - 24)) | 4);
    }
  }

  else
  {
    v5 = 0;
  }

  v19[0] = *MEMORY[0x1E69E54C8];
  *(v19 + *(v19[0] - 24)) = *(MEMORY[0x1E69E54C8] + 24);
  MEMORY[0x1E6926FD0](&v19[2]);
  std::istream::~istream();
  MEMORY[0x1E69273B0](&v19[53]);
  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t *std::ifstream::basic_ifstream(uint64_t *a1, uint64_t *a2)
{
  a1[59] = 0;
  v4 = MEMORY[0x1E69E5528] + 64;
  a1[53] = MEMORY[0x1E69E5528] + 64;
  v5 = *(MEMORY[0x1E69E54C8] + 16);
  v6 = *(MEMORY[0x1E69E54C8] + 8);
  *a1 = v6;
  *(a1 + *(v6 - 24)) = v5;
  a1[1] = 0;
  v7 = (a1 + *(*a1 - 24));
  std::ios_base::init(v7, a1 + 2);
  v8 = MEMORY[0x1E69E5528] + 24;
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  *a1 = v8;
  a1[53] = v4;
  MEMORY[0x1E6926FC0](a1 + 2);
  if (*(a2 + 23) < 0)
  {
    v9 = *a2;
  }

  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_1E52F0568(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x1E69273B0](v1);
  _Unwind_Resume(a1);
}

void *std::ifstream::~ifstream(void *a1)
{
  v2 = MEMORY[0x1E69E54C8];
  v3 = *MEMORY[0x1E69E54C8];
  *a1 = *MEMORY[0x1E69E54C8];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  MEMORY[0x1E6926FD0](a1 + 2);
  std::istream::~istream();
  MEMORY[0x1E69273B0](a1 + 53);
  return a1;
}

BOOL support::fs::createDir(const char *a1, mode_t a2, int a3)
{
  v5 = a1;
  v6.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v6.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v30.st_blksize = v6;
  *v30.st_qspare = v6;
  v30.st_birthtimespec = v6;
  *&v30.st_size = v6;
  v30.st_mtimespec = v6;
  v30.st_ctimespec = v6;
  *&v30.st_uid = v6;
  v30.st_atimespec = v6;
  *&v30.st_dev = v6;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  if (!stat(a1, &v30))
  {
    return 1;
  }

  if (!a3)
  {
    if (v5[23] >= 0)
    {
      v21 = v5;
    }

    else
    {
      v21 = *v5;
    }

    return mkdir(v21, a2) == 0;
  }

  v28[1] = 0xAAAAAAAAAAAAAAAALL;
  v29 = 0x1AAAAAAAAAAAAAALL;
  v28[0] = 0xAAAAAAAAAAAA002FLL;
  memset(&__p[32], 170, 24);
  ctu::tokenize();
  memset(__p, 0, 24);
  if (v5[23] >= 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = *v5;
  }

  if (*v7 == 47)
  {
    *__p = *v28;
    *&__p[16] = v29;
  }

  v8 = *&__p[32];
  if (*&__p[40] != *&__p[32])
  {
    v9 = 0;
    v10 = 1;
    while (1)
    {
      if (v10 != 1)
      {
        if (v29 >= 0)
        {
          v11 = v28;
        }

        else
        {
          v11 = v28[0];
        }

        if (v29 >= 0)
        {
          v12 = HIBYTE(v29);
        }

        else
        {
          v12 = v28[1];
        }

        std::string::append(__p, v11, v12);
        v8 = *&__p[32];
      }

      v13 = v8 + 24 * v9;
      v14 = *(v13 + 23);
      v15 = v14 >= 0 ? v13 : *v13;
      v16 = v14 >= 0 ? *(v13 + 23) : *(v13 + 8);
      std::string::append(__p, v15, v16);
      v17.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      v17.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      *&v30.st_blksize = v17;
      *v30.st_qspare = v17;
      v30.st_birthtimespec = v17;
      *&v30.st_size = v17;
      v30.st_mtimespec = v17;
      v30.st_ctimespec = v17;
      *&v30.st_uid = v17;
      v30.st_atimespec = v17;
      *&v30.st_dev = v17;
      v18 = __p[23] >= 0 ? __p : *__p;
      if (stat(v18, &v30))
      {
        v19 = __p[23] >= 0 ? __p : *__p;
        if (mkdir(v19, a2))
        {
          break;
        }
      }

      v9 = v10;
      v8 = *&__p[32];
      ++v10;
      if (0xAAAAAAAAAAAAAAABLL * ((*&__p[40] - *&__p[32]) >> 3) <= v9)
      {
        goto LABEL_42;
      }
    }

    v20 = 0;
    if ((__p[23] & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

LABEL_42:
  v20 = 1;
  if ((__p[23] & 0x80000000) != 0)
  {
LABEL_43:
    operator delete(*__p);
  }

LABEL_44:
  v22 = *&__p[32];
  if (*&__p[32])
  {
    v23 = *&__p[40];
    v24 = *&__p[32];
    if (*&__p[40] != *&__p[32])
    {
      do
      {
        v25 = *(v23 - 1);
        v23 -= 3;
        if (v25 < 0)
        {
          operator delete(*v23);
        }
      }

      while (v23 != v22);
      v24 = *&__p[32];
    }

    *&__p[40] = v22;
    operator delete(v24);
  }

  if (SHIBYTE(v29) < 0)
  {
    operator delete(v28[0]);
  }

  return v20;
}

void sub_1E52F08F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void **a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a14 < 0)
  {
    operator delete(__p);
    std::vector<std::string>::~vector[abi:ne200100](&a16);
    if ((a24 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    std::vector<std::string>::~vector[abi:ne200100](&a16);
    if ((a24 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(a19);
  _Unwind_Resume(a1);
}

BOOL support::fs::removeDir(const char *a1)
{
  v1 = a1;
  v58[2] = *MEMORY[0x1E69E9840];
  v2.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v2.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v57.st_blksize = v2;
  *v57.st_qspare = v2;
  v57.st_birthtimespec = v2;
  *&v57.st_size = v2;
  v57.st_mtimespec = v2;
  v57.st_ctimespec = v2;
  *&v57.st_uid = v2;
  v57.st_atimespec = v2;
  *&v57.st_dev = v2;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  if (stat(a1, &v57))
  {
    v3 = 1;
    goto LABEL_112;
  }

  v54 = 0;
  v55 = 0;
  v56 = 0;
  support::fs::readDir(v1, &v54);
  v5 = 0;
  while (1)
  {
    v6 = v5;
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v55 - v54) >> 3);
    v3 = v7 <= v5;
    if (v7 <= v5)
    {
      break;
    }

    v8 = v54 + 24 * v5;
    memset(&__p, 170, sizeof(__p));
    if (v8[23] < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *v8, *(v8 + 1));
    }

    else
    {
      v9 = *v8;
      __p.__r_.__value_.__r.__words[2] = *(v8 + 2);
      *&__p.__r_.__value_.__l.__data_ = v9;
    }

    v10 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      if (__p.__r_.__value_.__l.__size_ == 1)
      {
        if (*__p.__r_.__value_.__l.__data_ == 46)
        {
          goto LABEL_61;
        }
      }

      else if (__p.__r_.__value_.__l.__size_ == 2 && *__p.__r_.__value_.__l.__data_ == 11822)
      {
        goto LABEL_61;
      }
    }

    else if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) == 1)
    {
      if (__p.__r_.__value_.__s.__data_[0] == 46)
      {
        goto LABEL_61;
      }
    }

    else if (HIBYTE(__p.__r_.__value_.__r.__words[2]) == 2 && LOWORD(__p.__r_.__value_.__l.__data_) == 11822)
    {
      goto LABEL_61;
    }

    v11 = SHIBYTE(v1->__pn_.__r_.__value_.__r.__words[2]);
    if (v11 >= 0)
    {
      size = HIBYTE(v1->__pn_.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v1->__pn_.__r_.__value_.__l.__size_;
    }

    v13 = size + 1;
    if (size + 1 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v13 < 0x17)
    {
      memset(&v57, 0, 24);
      v15 = &v57;
      HIBYTE(v57.st_gid) = size + 1;
      if (!size)
      {
        goto LABEL_38;
      }
    }

    else
    {
      if ((v13 | 7) == 0x17)
      {
        v14 = 25;
      }

      else
      {
        v14 = (v13 | 7) + 1;
      }

      v15 = operator new(v14);
      v57.st_ino = size + 1;
      *&v57.st_uid = v14 | 0x8000000000000000;
      *&v57.st_dev = v15;
    }

    v16 = v1->__pn_.__r_.__value_.__r.__words[0];
    if (v11 >= 0)
    {
      v17 = v1;
    }

    else
    {
      v17 = v1->__pn_.__r_.__value_.__r.__words[0];
    }

    memmove(v15, v17, size);
LABEL_38:
    *&v15[size] = 47;
    if ((v10 & 0x80000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((v10 & 0x80000000) == 0)
    {
      v19 = v10;
    }

    else
    {
      v19 = __p.__r_.__value_.__l.__size_;
    }

    v20 = std::string::append(&v57, p_p, v19);
    v21 = v20->__r_.__value_.__r.__words[0];
    v58[0] = v20->__r_.__value_.__l.__size_;
    *(v58 + 7) = *(&v20->__r_.__value_.__r.__words[1] + 7);
    v22 = HIBYTE(v20->__r_.__value_.__r.__words[2]);
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p.__r_.__value_.__r.__words[0] = v21;
    __p.__r_.__value_.__l.__size_ = v58[0];
    *(&__p.__r_.__value_.__r.__words[1] + 7) = *(v58 + 7);
    *(&__p.__r_.__value_.__s + 23) = v22;
    if (SHIBYTE(v57.st_gid) < 0)
    {
      operator delete(*&v57.st_dev);
      v22 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      v21 = __p.__r_.__value_.__r.__words[0];
    }

    v23.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v23.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    *&v57.st_blksize = v23;
    *v57.st_qspare = v23;
    v57.st_birthtimespec = v23;
    *&v57.st_size = v23;
    v57.st_mtimespec = v23;
    v57.st_ctimespec = v23;
    *&v57.st_uid = v23;
    v57.st_atimespec = v23;
    if (v22 >= 0)
    {
      v24 = &__p;
    }

    else
    {
      v24 = v21;
    }

    *&v57.st_dev = v23;
    if (!stat(v24, &v57))
    {
      v29 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      v30 = opendir(v29);
      v31 = v30;
      if (v30)
      {
        v32 = readdir(v30);
        closedir(v31);
        if (v32)
        {
          v33 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
          {
            v33 = __p.__r_.__value_.__l.__size_;
            v35 = __p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL;
            v36 = (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
            if (v36 != __p.__r_.__value_.__l.__size_)
            {
              v34 = __p.__r_.__value_.__r.__words[0];
              goto LABEL_89;
            }

            if (v35 == 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v34 = __p.__r_.__value_.__r.__words[0];
            if (v36 > 0x3FFFFFFFFFFFFFF2)
            {
              v40 = 0;
              v39 = 0x7FFFFFFFFFFFFFF7;
            }

            else
            {
LABEL_74:
              v37 = 2 * v36;
              if (v35 > 2 * v36)
              {
                v37 = v35;
              }

              if ((v37 | 7) == 0x17)
              {
                v38 = 25;
              }

              else
              {
                v38 = (v37 | 7) + 1;
              }

              if (v37 >= 0x17)
              {
                v39 = v38;
              }

              else
              {
                v39 = 23;
              }

              v40 = v36 == 22;
            }

            v41 = operator new(v39);
            v42 = v41;
            if (v36)
            {
              memmove(v41, v34, v36);
            }

            *(v42 + v36) = 47;
            if (!v40)
            {
              operator delete(v34);
            }

            __p.__r_.__value_.__l.__size_ = v35;
            __p.__r_.__value_.__r.__words[2] = v39 | 0x8000000000000000;
            __p.__r_.__value_.__r.__words[0] = v42;
            v43 = (v42 + v35);
          }

          else
          {
            v34 = &__p;
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) == 22)
            {
              v35 = 23;
              v36 = 22;
              goto LABEL_74;
            }

LABEL_89:
            v34->__r_.__value_.__s.__data_[v33] = 47;
            v44 = v33 + 1;
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              __p.__r_.__value_.__l.__size_ = v44;
            }

            else
            {
              *(&__p.__r_.__value_.__s + 23) = v44 & 0x7F;
            }

            v43 = v34 + v44;
          }

          *v43 = 0;
          v28 = support::fs::removeDir(&__p);
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_7;
          }

          goto LABEL_6;
        }
      }
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = &__p;
    }

    else
    {
      v26 = __p.__r_.__value_.__r.__words[0];
    }

    if (!remove(v26, v25))
    {
LABEL_61:
      v28 = 1;
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v27 = &__p;
    }

    else
    {
      v27 = __p.__r_.__value_.__r.__words[0];
    }

    v28 = unlink(v27) == 0;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    operator delete(__p.__r_.__value_.__l.__data_);
LABEL_7:
    v5 = v6 + 1;
    if ((v28 & 1) == 0)
    {
      goto LABEL_104;
    }
  }

  if ((v1->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v45 = v1;
  }

  else
  {
    v45 = v1->__pn_.__r_.__value_.__r.__words[0];
  }

  if (remove(v45, v4))
  {
    if ((v1->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v46 = v1;
    }

    else
    {
      v46 = v1->__pn_.__r_.__value_.__r.__words[0];
    }

    unlink(v46);
  }

LABEL_104:
  v47 = v54;
  if (v54)
  {
    v48 = v55;
    v49 = v54;
    if (v55 != v54)
    {
      do
      {
        v50 = *(v48 - 1);
        v48 -= 3;
        if (v50 < 0)
        {
          operator delete(*v48);
        }
      }

      while (v48 != v47);
      v49 = v54;
    }

    v55 = v47;
    operator delete(v49);
  }

LABEL_112:
  v51 = *MEMORY[0x1E69E9840];
  return v3;
}

void sub_1E52F0E74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void **a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if ((a14 & 0x80000000) == 0)
  {
    std::vector<std::string>::~vector[abi:ne200100](&a15);
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  std::vector<std::string>::~vector[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

void support::fs::getFileName(std::string *a1@<X8>)
{
  memset(__p, 170, sizeof(__p));
  ctu::tokenize();
  if (*(__p[1] - 1) < 0)
  {
    std::string::__init_copy_ctor_external(a1, *(__p[1] - 3), *(__p[1] - 2));
  }

  else
  {
    v2 = *(__p[1] - 24);
    a1->__r_.__value_.__r.__words[2] = *(__p[1] - 1);
    *&a1->__r_.__value_.__l.__data_ = v2;
  }

  if (__p[0])
  {
    v3 = __p[1];
    v4 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != __p[0]);
      v4 = __p[0];
    }

    operator delete(v4);
  }
}

void sub_1E52F0FC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::string>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ___ZN7support2fsL16sGetOsLogContextEv_block_invoke()
{
  ctu::OsLogContext::OsLogContext(v0, "com.apple.telephony.abm", "supports.fs");
  ctu::OsLogContext::operator=();
  ctu::OsLogContext::~OsLogContext(v0);
}

void *std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, uint64_t a2, unsigned __int8 a3)
{
  v11 = -86;
  MEMORY[0x1E6927010](&v11, a1, 1);
  if (v11 != 1)
  {
    return a1;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = *(a1 + *(*a1 - 24) + 40);
    v8 = v7[3];
    if (v8 != v7[4])
    {
      v7[3] = v8 + 1;
      LOBYTE(v7) = *v8;
      goto LABEL_9;
    }

    LODWORD(v7) = (*(*v7 + 80))(v7);
    if (v7 == -1)
    {
      break;
    }

LABEL_9:
    if (v7 == a3)
    {
      v9 = 0;
      goto LABEL_17;
    }

    std::string::push_back(a2, v7);
    --v6;
    if (*(a2 + 23) < 0 && *(a2 + 8) == 0x7FFFFFFFFFFFFFF7)
    {
      v9 = 4;
      goto LABEL_17;
    }
  }

  if (v6)
  {
    v9 = 2;
  }

  else
  {
    v9 = 6;
  }

LABEL_17:
  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v9);
  return a1;
}

void sub_1E52F118C(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1E52F114CLL);
  }

  __cxa_rethrow();
}

void DaleBootLogger::create(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6[0] = 0xAAAAAAAAAAAAAAAALL;
  v6[1] = 0xAAAAAAAAAAAAAAAALL;
  std::allocate_shared[abi:ne200100]<DaleBootLogger,std::allocator<DaleBootLogger>,BasebandBootLoggerParams,0>(a1, v6);
  v3 = v6[0];
  if (v6[0])
  {
    v4 = DaleBootLogger::setupBootLogTransport_sync(v6[0]);
    if (!v4 || (v4 = DaleBootLogger::setupTimer_sync(v3), (v4 & 1) == 0))
    {
      ACFULogging::getLogInstance(v4);
      ACFULogging::handleMessage();
    }

    *a2 = *v6;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    v5 = v6[1];
    if (v6[1] && !atomic_fetch_add(v6[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }
}

void sub_1E52F131C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t DaleBootLogger::setupBootLogTransport_sync(DaleBootLogger *this)
{
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v74 = v2;
  *v75 = v2;
  v76 = -21846;
  LOBYTE(v74) = 0;
  DWORD1(v74) = 0;
  WORD4(v74) = 0;
  v75[0] = 0;
  v75[8] = 0;
  v78 = 0;
  v79 = 0xAAAAAAAAAAAA0202;
  __p = 0uLL;
  *&v75[16] = 0;
  *&v75[20] = 0;
  ParseDebugArgs(this + 24, &v74, 1);
  v3 = *v75;
  *(this + 216) = v74;
  *(this + 232) = v3;
  *(this + 246) = *&v75[14];
  if ((this + 216) != &v74)
  {
    if (*(this + 279) < 0)
    {
      if (v78 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if (v78 >= 0)
      {
        v5 = HIBYTE(v78);
      }

      else
      {
        v5 = *(&__p + 1);
      }

      std::string::__assign_no_alias<false>(this + 32, p_p, v5);
    }

    else if (v78 < 0)
    {
      std::string::__assign_no_alias<true>(this + 32, __p, *(&__p + 1));
    }

    else
    {
      *(this + 16) = __p;
      *(this + 34) = v78;
    }
  }

  *(this + 140) = v79;
  v6 = UpdaterDebugArgs::print((this + 216));
  *__s = 0;
  v73 = 0uLL;
  v7 = *(this + 184);
  if (v7 >= 2)
  {
    if (v7 == 2)
    {
      v19 = 2;
    }

    else
    {
      if (v7 == 3)
      {
        goto LABEL_16;
      }

      v19 = 1;
    }

    *(this + 10) = v19;
    goto LABEL_41;
  }

LABEL_16:
  *(this + 10) = 0;
  if (BYTE1(v79) != 1)
  {
    if (!BYTE1(v79))
    {
      ACFULogging::getLogInstance(v6);
      ACFULogging::handleMessage();
    }

    v8 = __s;
    goto LABEL_20;
  }

  if (v7 == 1)
  {
    v71.__r_.__value_.__r.__words[0] = operator new(0x50uLL);
    *&v71.__r_.__value_.__r.__words[1] = xmmword_1E5392BF0;
    qmemcpy(v62, "eless/Library/Lo/private/var/wirManager/CoreDumpgs/AppleBaseband", sizeof(v62));
    strcpy(v71.__r_.__value_.__l.__data_, "/private/var/wireless/Library/Logs/AppleBasebandManager/CoreDump.scratch");
    v16.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v16.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    *&v80.st_blksize = v16;
    *v80.st_qspare = v16;
    v80.st_birthtimespec = v16;
    *&v80.st_size = v16;
    v80.st_mtimespec = v16;
    v80.st_ctimespec = v16;
    *&v80.st_uid = v16;
    v80.st_atimespec = v16;
    *&v80.st_dev = v16;
    v17 = stat(v71.__r_.__value_.__l.__data_, &v80);
    if (v17)
    {
      LOBYTE(v18) = 0;
    }

    else
    {
      if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v31 = &v71;
      }

      else
      {
        v31 = v71.__r_.__value_.__r.__words[0];
      }

      v17 = opendir(v31);
      v18 = v17;
      if (v17)
      {
        v32 = readdir(v17);
        v17 = closedir(v18);
        LOBYTE(v18) = v32 != 0;
      }
    }

    if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v71.__r_.__value_.__l.__data_);
      if (v18)
      {
LABEL_86:
        v8 = operator new(0xA0uLL);
        *(v8 + 2) = v62[3];
        *(v8 + 3) = v62[2];
        *v8 = v62[1];
        *(v8 + 1) = v62[0];
        strcpy(v8 + 64, ".scratch/coredump.log");
        *&v80.st_dev = xmmword_1E5392C00;
        *(&v73 + 7) = xmmword_1E5392C00 >> 56;
        *&v73 = 85;
        *__s = v8;
        HIBYTE(v73) = 0x80;
        goto LABEL_20;
      }
    }

    else if (v18)
    {
      goto LABEL_86;
    }

    ACFULogging::getLogInstance(v17);
    ACFULogging::handleMessage();
    v35 = operator new(0x50uLL);
    *&v80.st_dev = v35;
    *&v80.st_ino = xmmword_1E5392BF0;
    *(v35 + 2) = v62[3];
    *(v35 + 3) = v62[2];
    strcpy(v35 + 64, ".scratch");
    *v35 = v62[1];
    *(v35 + 1) = v62[0];
    Dir = support::fs::createDir(&v80, 0x1EDu, 1);
    if (SHIBYTE(v80.st_gid) < 0)
    {
      v37 = Dir;
      operator delete(*&v80.st_dev);
      Dir = v37;
    }

    if (Dir)
    {
      goto LABEL_86;
    }

LABEL_117:
    ACFULogging::getLogInstance(Dir);
    ACFULogging::handleMessage();
    goto LABEL_58;
  }

  v71.__r_.__value_.__r.__words[0] = operator new(0x48uLL);
  *&v71.__r_.__value_.__r.__words[1] = xmmword_1E538EBF0;
  strcpy(v71.__r_.__value_.__l.__data_, "/private/var/wireless/Library/Logs/AppleBasebandManager/Boot.scratch");
  qmemcpy(v62, "Manager/Boot.scrgs/AppleBasebandeless/Library/Lo/private/var/wir", sizeof(v62));
  v28.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v28.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v80.st_blksize = v28;
  *v80.st_qspare = v28;
  v80.st_birthtimespec = v28;
  *&v80.st_size = v28;
  v80.st_mtimespec = v28;
  v80.st_ctimespec = v28;
  *&v80.st_uid = v28;
  v80.st_atimespec = v28;
  *&v80.st_dev = v28;
  v29 = stat(v71.__r_.__value_.__l.__data_, &v80);
  if (v29)
  {
    LOBYTE(v30) = 0;
  }

  else
  {
    if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v33 = &v71;
    }

    else
    {
      v33 = v71.__r_.__value_.__r.__words[0];
    }

    v29 = opendir(v33);
    v30 = v29;
    if (v29)
    {
      v34 = readdir(v29);
      v29 = closedir(v30);
      LOBYTE(v30) = v34 != 0;
    }
  }

  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v71.__r_.__value_.__l.__data_);
    if (v30)
    {
      goto LABEL_91;
    }
  }

  else if (v30)
  {
    goto LABEL_91;
  }

  ACFULogging::getLogInstance(v29);
  ACFULogging::handleMessage();
  v38 = operator new(0x48uLL);
  *&v80.st_dev = v38;
  *&v80.st_ino = xmmword_1E538EBF0;
  strcpy(v38 + 64, "atch");
  *v38 = v62[3];
  *(v38 + 1) = v62[2];
  *(v38 + 2) = v62[1];
  *(v38 + 3) = v62[0];
  Dir = support::fs::createDir(&v80, 0x1EDu, 1);
  if (SHIBYTE(v80.st_gid) < 0)
  {
    v39 = Dir;
    operator delete(*&v80.st_dev);
    Dir = v39;
  }

  if (!Dir)
  {
    goto LABEL_117;
  }

LABEL_91:
  v40 = operator new(0x48uLL);
  strcpy(v40 + 64, "atch");
  *v40 = v62[3];
  *(v40 + 1) = v62[2];
  *(v40 + 2) = v62[1];
  *(v40 + 3) = v62[0];
  v41 = operator new(0x90uLL);
  strcpy(v41 + 64, "atch/log-bb-");
  *v41 = v62[3];
  *(v41 + 1) = v62[2];
  *(v41 + 2) = v62[1];
  *(v41 + 3) = v62[0];
  operator delete(v40);
  v71.__r_.__value_.__r.__words[0] = v41;
  *&v71.__r_.__value_.__r.__words[1] = xmmword_1E5392BE0;
  Timestamp::Timestamp(v67);
  Timestamp::asString(v67, 0, 9, v69);
  if ((v70 & 0x80u) == 0)
  {
    v42 = v69;
  }

  else
  {
    v42 = v69[0];
  }

  if ((v70 & 0x80u) == 0)
  {
    v43 = v70;
  }

  else
  {
    v43 = v69[1];
  }

  v44 = std::string::append(&v71, v42, v43);
  v45 = *&v44->__r_.__value_.__l.__data_;
  *&v80.st_uid = *(&v44->__r_.__value_.__l + 2);
  *&v80.st_dev = v45;
  v44->__r_.__value_.__l.__size_ = 0;
  v44->__r_.__value_.__r.__words[2] = 0;
  v44->__r_.__value_.__r.__words[0] = 0;
  st_gid_high = SHIBYTE(v80.st_gid);
  if ((SHIBYTE(v80.st_gid) & 0x8000000000000000) != 0)
  {
    st_gid_high = v80.st_ino;
    v49 = (*&v80.st_uid & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v49 - v80.st_ino < 9)
    {
      v50 = 0x7FFFFFFFFFFFFFF7;
      v47 = v80.st_ino + 9;
      if (0x7FFFFFFFFFFFFFF7 - (*&v80.st_uid & 0x7FFFFFFFFFFFFFFFuLL) < v80.st_ino + 9 - v49)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v48 = *&v80.st_dev;
      if (v49 > 0x3FFFFFFFFFFFFFF2)
      {
        v53 = 0;
LABEL_112:
        v54 = operator new(v50);
        v55 = v54;
        if (st_gid_high)
        {
          memmove(v54, v48, st_gid_high);
        }

        v56 = &v55[st_gid_high];
        *v56 = *"-boot-log";
        v56[8] = 103;
        if (!v53)
        {
          operator delete(v48);
        }

        v80.st_ino = v47;
        *&v80.st_uid = v50 | 0x8000000000000000;
        *&v80.st_dev = v55;
        v57 = &v55[v47];
        goto LABEL_125;
      }

LABEL_103:
      v51 = 2 * v49;
      if (v47 > 2 * v49)
      {
        v51 = v47;
      }

      if ((v51 | 7) == 0x17)
      {
        v52 = 25;
      }

      else
      {
        v52 = (v51 | 7) + 1;
      }

      if (v51 >= 0x17)
      {
        v50 = v52;
      }

      else
      {
        v50 = 23;
      }

      v53 = v49 == 22;
      goto LABEL_112;
    }

    v58 = *&v80.st_dev;
  }

  else
  {
    if ((SHIBYTE(v80.st_gid) - 14) < 9)
    {
      v47 = SHIBYTE(v80.st_gid) + 9;
      v48 = &v80;
      v49 = 22;
      goto LABEL_103;
    }

    v58 = &v80;
  }

  v59 = v58 + st_gid_high;
  *v59 = *"-boot-log";
  v59[8] = 103;
  v60 = st_gid_high + 9;
  if (SHIBYTE(v80.st_gid) < 0)
  {
    v80.st_ino = st_gid_high + 9;
  }

  else
  {
    HIBYTE(v80.st_gid) = v60 & 0x7F;
  }

  v57 = v58 + v60;
LABEL_125:
  *v57 = 0;
  v8 = *&v80.st_dev;
  *&v73 = v80.st_ino;
  *(&v73 + 7) = *(&v80.st_ino + 7);
  LOBYTE(v61) = HIBYTE(v80.st_gid);
  memset(&v80, 0, 24);
  *__s = v8;
  HIBYTE(v73) = v61;
  if (v70 < 0)
  {
    operator delete(v69[0]);
  }

  v61 = v61;
  std::__tree<std::__value_type<BBUFeedback::ProgressBarStages,double>,std::__map_value_compare<BBUFeedback::ProgressBarStages,std::__value_type<BBUFeedback::ProgressBarStages,double>,std::less<BBUFeedback::ProgressBarStages>,true>,std::allocator<std::__value_type<BBUFeedback::ProgressBarStages,double>>>::destroy(v67, v68);
  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v71.__r_.__value_.__l.__data_);
  }

  if (v61 >= 0)
  {
    v8 = __s;
  }

LABEL_20:
  v9 = strlen(v8);
  if (v9 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v10 = v9;
  if (v9 >= 0x17)
  {
    if ((v9 | 7) == 0x17)
    {
      v12 = 25;
    }

    else
    {
      v12 = (v9 | 7) + 1;
    }

    v11 = operator new(v12);
    __dst[1] = v10;
    v66 = v12 | 0x8000000000000000;
    __dst[0] = v11;
  }

  else
  {
    HIBYTE(v66) = v9;
    v11 = __dst;
    if (!v9)
    {
      goto LABEL_29;
    }
  }

  memmove(v11, v8, v10);
LABEL_29:
  *(v10 + v11) = 0;
  support::fs::SyncFile::create(__dst, 48, 0x100000uLL, &v80);
  v13 = *&v80.st_dev;
  *&v80.st_dev = 0;
  v80.st_ino = 0;
  v14 = *(this + 7);
  *(this + 3) = v13;
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
    st_ino = v80.st_ino;
    if (!v80.st_ino)
    {
      goto LABEL_33;
    }
  }

  else
  {
    st_ino = v80.st_ino;
    if (!v80.st_ino)
    {
      goto LABEL_33;
    }
  }

  if (!atomic_fetch_add(&st_ino->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (st_ino->__on_zero_shared)(st_ino);
    std::__shared_weak_count::__release_weak(st_ino);
    if ((SHIBYTE(v66) & 0x80000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_34;
  }

LABEL_33:
  if (SHIBYTE(v66) < 0)
  {
LABEL_34:
    operator delete(__dst[0]);
  }

LABEL_41:
  v20 = v79;
  v21 = *(this + 18);
  if (v21)
  {
    dispatch_retain(*(this + 18));
  }

  v63 = v20;
  object = v21;
  DaleTransport_BootLogger::create(&v63, &v80);
  v22 = *&v80.st_dev;
  *&v80.st_dev = 0;
  v80.st_ino = 0;
  v23 = *(this + 17);
  *(this + 8) = v22;
  if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
  }

  v24 = v80.st_ino;
  if (v80.st_ino && !atomic_fetch_add((v80.st_ino + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
  }

  v25 = object;
  if (object)
  {
    dispatch_release(object);
  }

  if (*(this + 16))
  {
    v26 = 1;
    if ((SHIBYTE(v73) & 0x80000000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  ACFULogging::getLogInstance(v25);
  ACFULogging::handleMessage();
LABEL_58:
  v26 = 0;
  if (SHIBYTE(v73) < 0)
  {
LABEL_53:
    operator delete(*__s);
  }

LABEL_54:
  if (SHIBYTE(v78) < 0)
  {
    operator delete(__p);
  }

  return v26;
}

void sub_1E52F1D38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, void *__p, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62)
{
  if (a51 < 0)
  {
    operator delete(__p);
    if ((a62 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a62 & 0x80000000) == 0)
  {
LABEL_3:
    _Unwind_Resume(a1);
  }

  operator delete(a57);
  _Unwind_Resume(a1);
}

void sub_1E52F1E80(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  JUMPOUT(0x1E52F1E48);
}

void sub_1E52F1E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  if (a51 < 0)
  {
    JUMPOUT(0x1E52F1E70);
  }

  JUMPOUT(0x1E52F1E60);
}

BOOL DaleBootLogger::setupTimer_sync(DaleBootLogger *this)
{
  v15 = *MEMORY[0x1E69E9840];
  v11 = 16;
  strcpy(__p, "bootlogger.timer");
  v13[0] = &unk_1F5F03498;
  v13[1] = this;
  v14 = v13;
  support::misc::safe_timer::create(__p, 2000, 6000, v13, QOS_CLASS_UTILITY, block);
  v2 = block[0];
  block[0] = 0;
  v3 = *(this + 20);
  *(this + 20) = v2;
  if (v3)
  {
    (*(*v3 + 8))(v3);
    v4 = block[0];
    block[0] = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }
  }

  v5 = v14;
  if (v14 == v13)
  {
    v5 = (*(*v14 + 32))(v14);
    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (v14)
    {
      v5 = (*(*v14 + 40))(v14);
    }

    if ((v11 & 0x80000000) == 0)
    {
LABEL_8:
      v6 = *(this + 20);
      if (v6)
      {
        goto LABEL_9;
      }

LABEL_13:
      ACFULogging::getLogInstance(v5);
      ACFULogging::handleMessage();
      goto LABEL_15;
    }
  }

  operator delete(*__p);
  v6 = *(this + 20);
  if (!v6)
  {
    goto LABEL_13;
  }

LABEL_9:
  v7 = *(v6 + 23);
  if (v7 == dispatch_get_specific("CurrentQueue"))
  {
    support::misc::safe_timer::start_sync(v6);
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___ZN7support4misc10safe_timer5startEv_block_invoke;
    block[3] = &__block_descriptor_tmp_8_0;
    block[4] = v6;
    dispatch_sync(v7, block);
  }

LABEL_15:
  result = v6 != 0;
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E52F20F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  std::function<void ()(void)>::~function(v16 - 56);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void DaleBootLogger::~DaleBootLogger(void **this)
{
  *this = &unk_1F5F03390;
  ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage();
  if (*(this + 279) < 0)
  {
    operator delete(this[32]);
    this[22] = &unk_1F5F01BE0;
    if ((*(this + 215) & 0x80000000) == 0)
    {
LABEL_3:
      v2 = this[20];
      this[20] = 0;
      if (!v2)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else
  {
    this[22] = &unk_1F5F01BE0;
    if ((*(this + 215) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(this[24]);
  v2 = this[20];
  this[20] = 0;
  if (v2)
  {
LABEL_4:
    (*(*v2 + 8))(v2);
  }

LABEL_5:
  v3 = this[18];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = this[17];
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = this[13];
  if (v5)
  {
    this[14] = v5;
    operator delete(v5);
  }

  v7 = this[9];
  v6 = this[10];
  v8 = this[12];
  v9 = this[8];
  v10 = v7 - v6;
  v11 = &v9[v8 - v7];
  if (v10 <= v8)
  {
    v8 = v11;
  }

  this[10] = &v8[v6];
  if (v9)
  {
    operator delete(v9);
  }

  v12 = this[7];
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  v13 = this[4];
  if (v13)
  {
    dispatch_release(v13);
  }

  v14 = this[3];
  if (v14)
  {
    dispatch_release(v14);
  }

  v15 = this[2];
  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }
}

{
  DaleBootLogger::~DaleBootLogger(this);

  operator delete(v1);
}

void DaleBootLogger::log(DaleBootLogger *this, const unsigned __int8 *a2, uint64_t a3)
{
  if (a2 && a3)
  {
    v5 = *(this + 2);
    if (!v5 || (v7 = *(this + 1), (v8 = std::__shared_weak_count::lock(v5)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v9 = v8;
    v10 = operator new(0x18uLL);
    *v10 = this;
    v10[1] = a2;
    v10[2] = a3;
    v11 = *(this + 3);
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    v12 = operator new(0x18uLL);
    *v12 = v10;
    v12[1] = v7;
    v12[2] = v9;
    dispatch_async_f(v11, v12, dispatch::async<void ctu::SharedSynchronizable<BasebandBootLogger>::execute_wrapped<DaleBootLogger::log(unsigned char const*,long)::$_0>(DaleBootLogger::log(unsigned char const*,long)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<DaleBootLogger::log(unsigned char const*,long)::$_0,dispatch_queue_s *::default_delete<DaleBootLogger::log(unsigned char const*,long)::$_0>>)::{lambda(void *)#1}::__invoke);
    if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);

      std::__shared_weak_count::__release_weak(v9);
    }
  }
}

void DaleBootLogger::startLogging(uint64_t a1, NSObject **a2, char a3)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1174405120;
  v8[2] = ___ZN14DaleBootLogger12startLoggingEN8dispatch13group_sessionEN18BasebandBootLogger5StageE_block_invoke;
  v8[3] = &__block_descriptor_tmp_16;
  v5 = *a2;
  v8[4] = a1;
  group = v5;
  if (v5)
  {
    dispatch_retain(v5);
    dispatch_group_enter(group);
  }

  v10 = a3;
  v11 = v8;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI18BasebandBootLoggerE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_47;
  block[4] = a1 + 8;
  block[5] = &v11;
  v6 = *(a1 + 24);
  if (*(a1 + 32))
  {
    dispatch_async_and_wait(v6, block);
    v7 = group;
    if (!group)
    {
      return;
    }
  }

  else
  {
    dispatch_sync(v6, block);
    v7 = group;
    if (!group)
    {
      return;
    }
  }

  dispatch_group_leave(v7);
  if (group)
  {
    dispatch_release(group);
  }
}

void ___ZN14DaleBootLogger12startLoggingEN8dispatch13group_sessionEN18BasebandBootLogger5StageE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 281) == 1)
  {
    if (*(a1 + 48) != 1)
    {
      if (!*(a1 + 48))
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  else
  {
    if (*(v1 + 281))
    {
      return;
    }

    if (*(v1 + 280) != 1)
    {
      if (!*(v1 + 280))
      {
LABEL_5:
        v2 = *(a1 + 40);
        if (v2)
        {
          dispatch_retain(*(a1 + 40));
          dispatch_group_enter(v2);
          DaleBootLogger::startROMLogging(v1, v2);
LABEL_13:
          dispatch_group_leave(v2);

          dispatch_release(v2);
          return;
        }

        v3 = *(a1 + 32);

        DaleBootLogger::startROMLogging(v3, 0);
        return;
      }

LABEL_9:
      ACFULogging::getLogInstance(a1);
      ACFULogging::handleMessage();
      return;
    }
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    dispatch_retain(*(a1 + 40));
    dispatch_group_enter(v2);
    DaleBootLogger::startPLLogging(v1, v2);
    goto LABEL_13;
  }

  v4 = *(a1 + 32);

  DaleBootLogger::startPLLogging(v4, 0);
}

void DaleBootLogger::startROMLogging(void *a1, dispatch_object_t object)
{
  if (object)
  {
    dispatch_retain(object);
    dispatch_group_enter(object);
  }

  v4 = a1[2];
  if (!v4 || (v5 = a1[1], (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x10uLL);
  *v8 = a1;
  v8[1] = object;
  v9 = a1[3];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<BasebandBootLogger>::execute_wrapped<DaleBootLogger::startROMLogging(dispatch::group_session)::$_0>(DaleBootLogger::startROMLogging(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<DaleBootLogger::startROMLogging(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<DaleBootLogger::startROMLogging(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void DaleBootLogger::startPLLogging(void *a1, dispatch_object_t object)
{
  if (object)
  {
    dispatch_retain(object);
    dispatch_group_enter(object);
  }

  v4 = a1[2];
  if (!v4 || (v5 = a1[1], (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x10uLL);
  *v8 = a1;
  v8[1] = object;
  v9 = a1[3];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<BasebandBootLogger>::execute_wrapped<DaleBootLogger::startPLLogging(dispatch::group_session)::$_0>(DaleBootLogger::startPLLogging(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<DaleBootLogger::startPLLogging(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<DaleBootLogger::startPLLogging(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void __copy_helper_block_e8_40c30_ZTSN8dispatch13group_sessionE(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  *(a1 + 40) = v3;
  if (v3)
  {
    dispatch_retain(v3);
    v4 = *(a1 + 40);
    if (v4)
    {

      dispatch_group_enter(v4);
    }
  }
}

void __destroy_helper_block_e8_40c30_ZTSN8dispatch13group_sessionE(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 40);
    if (v3)
    {

      dispatch_release(v3);
    }
  }
}

void DaleBootLogger::stopLogging(uint64_t a1, NSObject **a2, char a3)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1174405120;
  v8[2] = ___ZN14DaleBootLogger11stopLoggingEN8dispatch13group_sessionEN18BasebandBootLogger5StageE_block_invoke;
  v8[3] = &__block_descriptor_tmp_21_3;
  v5 = *a2;
  v8[4] = a1;
  group = v5;
  if (v5)
  {
    dispatch_retain(v5);
    dispatch_group_enter(group);
  }

  v10 = a3;
  v11 = v8;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI18BasebandBootLoggerE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_47;
  block[4] = a1 + 8;
  block[5] = &v11;
  v6 = *(a1 + 24);
  if (*(a1 + 32))
  {
    dispatch_async_and_wait(v6, block);
    v7 = group;
    if (!group)
    {
      return;
    }
  }

  else
  {
    dispatch_sync(v6, block);
    v7 = group;
    if (!group)
    {
      return;
    }
  }

  dispatch_group_leave(v7);
  if (group)
  {
    dispatch_release(group);
  }
}

void ___ZN14DaleBootLogger11stopLoggingEN8dispatch13group_sessionEN18BasebandBootLogger5StageE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 281) == 1)
  {
    if (*(a1 + 48) != 1)
    {
      if (!*(a1 + 48))
      {
        ACFULogging::getLogInstance(a1);
        ACFULogging::handleMessage();
        v2 = *(a1 + 40);
        if (v2)
        {
          goto LABEL_6;
        }

LABEL_10:

        DaleBootLogger::stopROMLogging(v1, 0);
        return;
      }

LABEL_18:
      ACFULogging::getLogInstance(a1);
      ACFULogging::handleMessage();
      return;
    }
  }

  else
  {
    if (*(v1 + 281))
    {
      return;
    }

    if (*(v1 + 280) != 1)
    {
      if (!*(v1 + 280))
      {
        v2 = *(a1 + 40);
        if (v2)
        {
LABEL_6:
          dispatch_retain(v2);
          dispatch_group_enter(v2);
          DaleBootLogger::stopROMLogging(v1, v2);
LABEL_15:
          dispatch_group_leave(v2);

          dispatch_release(v2);
          return;
        }

        goto LABEL_10;
      }

      goto LABEL_18;
    }
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    dispatch_retain(*(a1 + 40));
    dispatch_group_enter(v2);
    DaleBootLogger::stopPLLogging(v1, v2);
    goto LABEL_15;
  }

  v4 = *(a1 + 32);

  DaleBootLogger::stopPLLogging(v4, 0);
}

void DaleBootLogger::stopROMLogging(void *a1, dispatch_object_t object)
{
  if (object)
  {
    dispatch_retain(object);
    dispatch_group_enter(object);
  }

  v4 = a1[2];
  if (!v4 || (v5 = a1[1], (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x10uLL);
  *v8 = a1;
  v8[1] = object;
  v9 = a1[3];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<BasebandBootLogger>::execute_wrapped<DaleBootLogger::stopROMLogging(dispatch::group_session)::$_0>(DaleBootLogger::stopROMLogging(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<DaleBootLogger::stopROMLogging(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<DaleBootLogger::stopROMLogging(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void DaleBootLogger::stopPLLogging(void *a1, dispatch_object_t object)
{
  if (object)
  {
    dispatch_retain(object);
    dispatch_group_enter(object);
  }

  v4 = a1[2];
  if (!v4 || (v5 = a1[1], (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x10uLL);
  *v8 = a1;
  v8[1] = object;
  v9 = a1[3];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<BasebandBootLogger>::execute_wrapped<DaleBootLogger::stopPLLogging(dispatch::group_session)::$_0>(DaleBootLogger::stopPLLogging(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<DaleBootLogger::stopPLLogging(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<DaleBootLogger::stopPLLogging(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void DaleBootLogger::dumpLog(DaleBootLogger *this@<X0>, uint64_t a2@<X8>)
{
  v4 = this;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK3ctu20SharedSynchronizableI18BasebandBootLoggerE20execute_wrapped_syncIZN14DaleBootLogger7dumpLogEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS6__block_invoke;
  v5[3] = &__block_descriptor_tmp_59;
  v5[4] = this + 8;
  v5[5] = &v4;
  v6 = v5;
  v3 = this + 24;
  v2 = *(this + 3);
  if (*(v3 + 1))
  {
    *a2 = 0uLL;
    *(a2 + 16) = 0uLL;
    *(a2 + 32) = 1065353216;
    *(a2 + 36) = -1431655766;
    block = MEMORY[0x1E69E9820];
    v8 = 0x40000000;
    v9 = ___ZN8dispatch19async_and_wait_implIRU13block_pointerFNSt3__113unordered_mapINS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEES8_NS1_4hashIS8_EENS1_8equal_toIS8_EENS6_INS1_4pairIKS8_S8_EEEEEEvEEENS1_5decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS1_17integral_constantIbLb0EEE_block_invoke;
    v10 = &__block_descriptor_tmp_64;
    v11 = a2;
    v12 = &v6;
    dispatch_async_and_wait(v2, &block);
  }

  else
  {
    *a2 = 0uLL;
    *(a2 + 16) = 0uLL;
    *(a2 + 32) = 1065353216;
    *(a2 + 36) = -1431655766;
    block = MEMORY[0x1E69E9820];
    v8 = 0x40000000;
    v9 = ___ZN8dispatch9sync_implIRU13block_pointerFNSt3__113unordered_mapINS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEES8_NS1_4hashIS8_EENS1_8equal_toIS8_EENS6_INS1_4pairIKS8_S8_EEEEEEvEEENS1_5decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS1_17integral_constantIbLb0EEE_block_invoke;
    v10 = &__block_descriptor_tmp_63;
    v11 = a2;
    v12 = &v6;
    dispatch_sync(v2, &block);
  }
}

void DaleBootLogger::dumpPCIEState(DaleBootLogger *this@<X0>, void *a2@<X8>)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZN14DaleBootLogger13dumpPCIEStateEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_25;
  v4[4] = this;
  v5 = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = ___ZNK3ctu20SharedSynchronizableI18BasebandBootLoggerE20execute_wrapped_syncIU13block_pointerFNSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEEvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOSD__block_invoke;
  v6[3] = &__block_descriptor_tmp_65;
  v6[4] = this + 8;
  v6[5] = &v5;
  v7 = v6;
  v3 = this + 24;
  v2 = *(this + 3);
  if (*(v3 + 1))
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    block = MEMORY[0x1E69E9820];
    v9 = 0x40000000;
    v10 = ___ZN8dispatch19async_and_wait_implIRU13block_pointerFNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEvEEENS1_5decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS1_17integral_constantIbLb0EEE_block_invoke;
    v11 = &__block_descriptor_tmp_67;
    v12 = a2;
    v13 = &v7;
    dispatch_async_and_wait(v2, &block);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    block = MEMORY[0x1E69E9820];
    v9 = 0x40000000;
    v10 = ___ZN8dispatch9sync_implIRU13block_pointerFNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEvEEENS1_5decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS1_17integral_constantIbLb0EEE_block_invoke;
    v11 = &__block_descriptor_tmp_66;
    v12 = a2;
    v13 = &v7;
    dispatch_sync(v2, &block);
  }
}

ACFULogging *___ZN14DaleBootLogger13dumpPCIEStateEv_block_invoke@<X0>(ACFULogging *result@<X0>, ACFULogging *a2@<X8>)
{
  v2 = a2;
  v3 = *(result + 4);
  if (*(v3 + 281) != 1)
  {
    ACFULogging::getLogInstance(result);
    ACFULogging::handleMessage();
    result = operator new(0x30uLL);
    *v2 = result;
    *(v2 + 8) = xmmword_1E5391350;
    strcpy(result, "Only applied when debug args is set to pcie");
    return result;
  }

  memset(a2, 170, 24);
  v5 = *(v3 + 104);
  v4 = *(v3 + 112);
  v6 = &v4[-v5];
  if (&v4[-v5] >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v6 > 0x16)
  {
    if ((v6 | 7) == 0x17)
    {
      v13 = 25;
    }

    else
    {
      v13 = (v6 | 7) + 1;
    }

    result = operator new(v13);
    *(v2 + 1) = v6;
    *(v2 + 2) = v13 | 0x8000000000000000;
    *v2 = result;
    v2 = result;
    if (v5 != v4)
    {
      goto LABEL_5;
    }

LABEL_16:
    v7 = v2;
    goto LABEL_19;
  }

  *(a2 + 23) = v6;
  if (v5 == v4)
  {
    goto LABEL_16;
  }

LABEL_5:
  if (v6 < 0x20 || v2 - v5 < 0x20)
  {
    v7 = v2;
    v8 = v5;
  }

  else
  {
    v7 = (v2 + (v6 & 0x7FFFFFFFFFFFFFE0));
    v8 = (v5 + (v6 & 0x7FFFFFFFFFFFFFE0));
    v9 = (v5 + 16);
    v10 = (v2 + 16);
    v11 = v6 & 0x7FFFFFFFFFFFFFE0;
    do
    {
      v12 = *v9;
      *(v10 - 1) = *(v9 - 1);
      *v10 = v12;
      v9 += 2;
      v10 += 2;
      v11 -= 32;
    }

    while (v11);
    if (v6 == (v6 & 0x7FFFFFFFFFFFFFE0))
    {
      goto LABEL_19;
    }
  }

  do
  {
    v14 = *v8++;
    *v7 = v14;
    v7 = (v7 + 1);
  }

  while (v8 != v4);
LABEL_19:
  *v7 = 0;
  *(v3 + 112) = *(v3 + 104);
  return result;
}

void std::allocate_shared[abi:ne200100]<DaleBootLogger,std::allocator<DaleBootLogger>,BasebandBootLoggerParams,0>(uint64_t a1@<X1>, std::__shared_weak_count **a2@<X8>)
{
  v4 = operator new(0x138uLL);
  v4->__shared_owners_ = 0;
  p_shared_owners = &v4->__shared_owners_;
  v4->__shared_weak_owners_ = 0;
  v4->__vftable = &unk_1F5F03448;
  v6 = v4 + 1;
  v13 = *(a1 + 8);
  *__p = *(a1 + 16);
  v15 = *(a1 + 32);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v7 = dispatch_queue_create("boot.logger", 0);
  v4[1].__shared_owners_ = 0;
  v4[1].__shared_weak_owners_ = 0;
  v4[2].__vftable = v7;
  if (v7)
  {
    v8 = v7;
    dispatch_retain(v7);
    v4[2].__shared_owners_ = 0;
    dispatch_release(v8);
  }

  else
  {
    v4[2].__shared_owners_ = 0;
  }

  v4[3].__vftable = 0;
  v4[1].__vftable = &unk_1F5F03390;
  LODWORD(v4[2].__shared_weak_owners_) = 3;
  v4[3].__shared_owners_ = 0;
  v4[5].__vftable = 0;
  v9 = operator new(0x4B000uLL);
  *&v4[5].__shared_owners_ = 0u;
  v4[3].__shared_weak_owners_ = v9;
  v4[4].__vftable = v9 + 7680;
  v4[4].__shared_owners_ = v9;
  v4[4].__shared_weak_owners_ = v9;
  v4[6].std::__shared_count = 0u;
  v4[6].__shared_weak_owners_ = 0;
  v10 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v4[7].__vftable = dispatch_queue_create("com.apple.DaleBootLogger.queue", v10);
  v4[7].__shared_owners_ = 0;
  v4[7].__shared_weak_owners_ = 0;
  v4[8].__vftable = 0;
  v4[8].__shared_owners_ = &unk_1F5F01BE0;
  LOBYTE(v4[8].__shared_weak_owners_) = v13;
  if (SHIBYTE(v15) < 0)
  {
    std::string::__init_copy_ctor_external(&v4[9], __p[0], __p[1]);
    v11 = v15 < 0;
  }

  else
  {
    v11 = 0;
    v4[9].std::__shared_count = *__p;
    v4[9].__shared_weak_owners_ = v15;
  }

  LOBYTE(v4[10].__vftable) = 0;
  HIDWORD(v4[10].__vftable) = 0;
  LOWORD(v4[10].__shared_owners_) = 0;
  LOBYTE(v4[10].__shared_weak_owners_) = 0;
  LOBYTE(v4[11].__vftable) = 0;
  v4[12].__vftable = 0;
  v4[12].__shared_owners_ = 0;
  v4[11].__shared_weak_owners_ = 0;
  LODWORD(v4[11].__shared_owners_) = 0;
  WORD2(v4[11].__shared_owners_) = 0;
  LOWORD(v4[12].__shared_weak_owners_) = 514;
  if (v11)
  {
    operator delete(__p[0]);
  }

  *a2 = v6;
  a2[1] = v4;
  shared_weak_owners = v4[1].__shared_weak_owners_;
  if (!shared_weak_owners)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v4[1].__shared_owners_ = v6;
    v4[1].__shared_weak_owners_ = v4;
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }

    goto LABEL_14;
  }

  if (shared_weak_owners->__shared_owners_ == -1)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v4[1].__shared_owners_ = v6;
    v4[1].__shared_weak_owners_ = v4;
    std::__shared_weak_count::__release_weak(shared_weak_owners);
    if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
LABEL_14:
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }
}

void sub_1E52F3594(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  shared_weak_owners = v17[7].__shared_weak_owners_;
  v17[7].__shared_weak_owners_ = 0;
  if (shared_weak_owners)
  {
    (*(*shared_weak_owners + 8))(shared_weak_owners);
    v23 = v17[7].__vftable;
    if (!v23)
    {
LABEL_3:
      std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100]((v20 + 3));
      v24 = *v20;
      if (!*v20)
      {
LABEL_5:
        boost::circular_buffer<unsigned char,std::allocator<unsigned char>>::~circular_buffer(v19 + 16);
        std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v19);
        BasebandBootLogger::~BasebandBootLogger(v18);
        if (a17 < 0)
        {
          operator delete(__p);
        }

        std::__shared_weak_count::~__shared_weak_count(v17);
        operator delete(v25);
        _Unwind_Resume(a1);
      }

LABEL_4:
      v17[5].__shared_weak_owners_ = v24;
      operator delete(v24);
      goto LABEL_5;
    }
  }

  else
  {
    v23 = v17[7].__vftable;
    if (!v23)
    {
      goto LABEL_3;
    }
  }

  dispatch_release(v23);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100]((v20 + 3));
  v24 = *v20;
  if (!*v20)
  {
    goto LABEL_5;
  }

  goto LABEL_4;
}

void std::__shared_ptr_emplace<DaleBootLogger>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5F03448;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t boost::circular_buffer<unsigned char,std::allocator<unsigned char>>::~circular_buffer(uint64_t result)
{
  v2 = *(result + 8);
  v1 = *(result + 16);
  v3 = *(result + 32);
  v4 = *result;
  v5 = v2 - v1;
  v6 = v3 - v2 + *result;
  if (v5 <= v3)
  {
    v3 = v6;
  }

  *(result + 16) = v1 + v3;
  if (v4)
  {
    v7 = result;
    operator delete(v4);
    return v7;
  }

  return result;
}

void dispatch::async<void ctu::SharedSynchronizable<BasebandBootLogger>::execute_wrapped<DaleBootLogger::log(unsigned char const*,long)::$_0>(DaleBootLogger::log(unsigned char const*,long)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<DaleBootLogger::log(unsigned char const*,long)::$_0,dispatch_queue_s *::default_delete<DaleBootLogger::log(unsigned char const*,long)::$_0>>)::{lambda(void *)#1}::__invoke(ACFULogging *a1)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *(v3 + 40);
  if (v4)
  {
    if (v4 == 1)
    {
      ACFULogging::getLogInstance(a1);
      v20 = v2[1];
      ACFULogging::handleMessage();
    }

    else if (v4 == 2 && v2[2] >= 1)
    {
      v5 = 0;
      v6 = *(v3 + 72);
      do
      {
        v8 = v2[1];
        v9 = *(v3 + 64);
        if (v6 - v9 == *(v3 + 96))
        {
          if (v6 != v9)
          {
            **(v3 + 88) = *(v8 + v5);
            v10 = *(v3 + 88) + 1;
            *(v3 + 88) = v10;
            v6 = *(v3 + 72);
            if (v10 == v6)
            {
              v10 = *(v3 + 64);
              *(v3 + 88) = v10;
            }

            *(v3 + 80) = v10;
          }
        }

        else
        {
          **(v3 + 88) = *(v8 + v5);
          v7 = *(v3 + 88) + 1;
          *(v3 + 88) = v7;
          v6 = *(v3 + 72);
          if (v7 == v6)
          {
            *(v3 + 88) = *(v3 + 64);
          }

          ++*(v3 + 96);
        }

        ++v5;
      }

      while (v2[2] > v5);
    }
  }

  else if (v2[2])
  {
    v11 = *(v3 + 48);
    if (v11)
    {
      if ((support::fs::SyncFile::isOpen(v11) & 1) == 0)
      {
        v12 = *(v3 + 48);
        block = MEMORY[0x1E69E9820];
        v22 = 0x40000000;
        v23 = ___ZN7support2fs8SyncFile4openEv_block_invoke;
        v24 = &__block_descriptor_tmp_2;
        v25 = v12;
        ctu::SharedSynchronizable<support::fs::SyncFile>::execute_wrapped(v12 + 1, &block);
      }

      if (*(v3 + 168) >= 0xBuLL)
      {
        v13 = *(v3 + 160);
        v27 = 0;
        v28 = &v27;
        v29 = 0x2000000000;
        v30 = 0;
        v14 = *(v13 + 184);
        block = MEMORY[0x1E69E9820];
        v22 = 1107296256;
        v23 = ___ZNK7support4misc10safe_timer11has_startedEv_block_invoke;
        v24 = &__block_descriptor_tmp_15_0;
        v25 = &v27;
        v26 = v13;
        dispatch_sync(v14, &block);
        v15 = *(v28 + 24);
        _Block_object_dispose(&v27, 8);
        if ((v15 & 1) == 0)
        {
          v16 = *(v3 + 160);
          v17 = *(v16 + 23);
          if (v17 == dispatch_get_specific("CurrentQueue"))
          {
            support::misc::safe_timer::start_sync(v16);
          }

          else
          {
            block = MEMORY[0x1E69E9820];
            v22 = 0x40000000;
            v23 = ___ZN7support4misc10safe_timer5startEv_block_invoke;
            v24 = &__block_descriptor_tmp_8_0;
            v25 = v16;
            dispatch_sync(v17, &block);
          }

          *(v3 + 168) = 0;
        }
      }

      support::fs::SyncFile::write(*(v3 + 48), v2[1], v2[2]);
      v18 = *(v3 + 152) + v2[2];
      *(v3 + 152) = v18;
      if (v18 >> 11 >= 5)
      {
        support::fs::SyncFile::flush(*(v3 + 48));
        *(v3 + 152) = 0;
      }
    }
  }

  operator delete(v2);
  v19 = *(a1 + 2);
  if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
  }

  operator delete(a1);
}

void sub_1E52F3AA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  operator delete(v12);
  std::unique_ptr<void ctu::SharedSynchronizable<support::fs::SyncFile>::execute_wrapped<support::fs::SyncFile::flush(void)::$_0>(support::fs::SyncFile::flush(void)::$_0 &&)::{lambda(void)#1},std::default_delete<support::fs::SyncFile::flush(void)::$_0 &&>>::~unique_ptr[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void *std::__function::__func<DaleBootLogger::setupTimer_sync(void)::$_0,std::allocator<DaleBootLogger::setupTimer_sync(void)::$_0>,void ()(void)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_1F5F03498;
  result[1] = v3;
  return result;
}

uint64_t std::__function::__func<DaleBootLogger::setupTimer_sync(void)::$_0,std::allocator<DaleBootLogger::setupTimer_sync(void)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5F03498;
  a2[1] = v2;
  return result;
}

void std::__function::__func<DaleBootLogger::setupTimer_sync(void)::$_0,std::allocator<DaleBootLogger::setupTimer_sync(void)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1[2];
  if (!v2 || (v3 = v1[1], (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  v6 = operator new(8uLL);
  *v6 = v1;
  v7 = v1[3];
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  v8 = operator new(0x18uLL);
  *v8 = v6;
  v8[1] = v3;
  v8[2] = v5;
  dispatch_async_f(v7, v8, dispatch::async<void ctu::SharedSynchronizable<BasebandBootLogger>::execute_wrapped<DaleBootLogger::setupTimer_sync(void)::$_0::operator() const(void)::{lambda(void)#1}>(DaleBootLogger::setupTimer_sync(void)::$_0::operator() const(void)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<DaleBootLogger::setupTimer_sync(void)::$_0::operator() const(void)::{lambda(void)#1},dispatch_queue_s *::default_delete<DaleBootLogger::setupTimer_sync(void)::$_0::operator() const(void)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);

    std::__shared_weak_count::__release_weak(v5);
  }
}

uint64_t std::__function::__func<DaleBootLogger::setupTimer_sync(void)::$_0,std::allocator<DaleBootLogger::setupTimer_sync(void)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN14DaleBootLogger15setupTimer_syncEvE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN14DaleBootLogger15setupTimer_syncEvE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN14DaleBootLogger15setupTimer_syncEvE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN14DaleBootLogger15setupTimer_syncEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<BasebandBootLogger>::execute_wrapped<DaleBootLogger::setupTimer_sync(void)::$_0::operator() const(void)::{lambda(void)#1}>(DaleBootLogger::setupTimer_sync(void)::$_0::operator() const(void)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<DaleBootLogger::setupTimer_sync(void)::$_0::operator() const(void)::{lambda(void)#1},dispatch_queue_s *::default_delete<DaleBootLogger::setupTimer_sync(void)::$_0::operator() const(void)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  if (*(v3 + 152))
  {
    v4 = *(v3 + 48);
    if (v4)
    {
      if ((support::fs::SyncFile::isOpen(v4) & 1) == 0)
      {
        v5 = *(v3 + 48);
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 0x40000000;
        v8[2] = ___ZN7support2fs8SyncFile4openEv_block_invoke;
        v8[3] = &__block_descriptor_tmp_2;
        v8[4] = v5;
        ctu::SharedSynchronizable<support::fs::SyncFile>::execute_wrapped((v5 + 8), v8);
      }

      support::fs::SyncFile::flush(*(v3 + 48));
      *(v3 + 152) = 0;
      *(v3 + 168) = 0;
    }

    operator delete(v2);
    v6 = a1[2];
    if (!v6)
    {
      goto LABEL_13;
    }

LABEL_11:
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    goto LABEL_13;
  }

  v7 = *(v3 + 168);
  if (v7 >= 0xB)
  {
    support::misc::safe_timer::stop(*(v3 + 160));
    v7 = *(v3 + 168);
  }

  *(v3 + 168) = v7 + 1;
  operator delete(v2);
  v6 = a1[2];
  if (v6)
  {
    goto LABEL_11;
  }

LABEL_13:

  operator delete(a1);
}

void sub_1E52F3E0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  operator delete(v9);
  std::unique_ptr<void ctu::SharedSynchronizable<support::fs::SyncFile>::execute_wrapped<support::fs::SyncFile::flush(void)::$_0>(support::fs::SyncFile::flush(void)::$_0 &&)::{lambda(void)#1},std::default_delete<support::fs::SyncFile::flush(void)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::function<void ()(void)>::~function(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

void dispatch::async<void ctu::SharedSynchronizable<BasebandBootLogger>::execute_wrapped<DaleBootLogger::startROMLogging(dispatch::group_session)::$_0>(DaleBootLogger::startROMLogging(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<DaleBootLogger::startROMLogging(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<DaleBootLogger::startROMLogging(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  v23 = *a1;
  v2 = **a1;
  v3 = *(v2 + 128);
  if (!v3)
  {
    goto LABEL_39;
  }

  v4 = v1[1];
  group = v4;
  if (v4)
  {
    dispatch_retain(v4);
    dispatch_group_enter(v4);
  }

  (*(*v3 + 24))(v3, &group);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  v5 = *(v2 + 16);
  if (!v5 || (v6 = *(v2 + 8), (v7 = std::__shared_weak_count::lock(v5)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v8 = v7;
  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v8);
    memset(v28, 170, sizeof(v28));
    v29 = 0;
    v9 = *(v2 + 281);
    if (*(v2 + 281))
    {
      goto LABEL_11;
    }

LABEL_14:
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v10 = operator new(0x20uLL);
    v11 = &unk_1F5F035B8;
    goto LABEL_15;
  }

  memset(v28, 170, sizeof(v28));
  v29 = 0;
  v9 = *(v2 + 281);
  if (!*(v2 + 281))
  {
    goto LABEL_14;
  }

LABEL_11:
  if (v9 != 1)
  {
    goto LABEL_18;
  }

  atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x20uLL);
  v11 = &unk_1F5F03528;
LABEL_15:
  *v10 = v11;
  v10[1] = v2;
  v10[2] = v6;
  v10[3] = v8;
  v31 = v10;
  std::__function::__value_func<void ()(unsigned char const*,long)>::swap[abi:ne200100](v30, v28);
  if (v31 != v30)
  {
    if (v31)
    {
      (*(*v31 + 40))(v31);
    }

LABEL_18:
    v12 = *(v2 + 128);
    v13 = v1[1];
    object = v13;
    if (!v13)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  (*(*v31 + 32))(v31);
  v12 = *(v2 + 128);
  v13 = v1[1];
  object = v13;
  if (v13)
  {
LABEL_19:
    dispatch_retain(v13);
    dispatch_group_enter(v13);
  }

LABEL_20:
  v14 = v29;
  if (!v29)
  {
LABEL_23:
    v27 = v14;
    goto LABEL_27;
  }

  if (v29 != v28)
  {
    v14 = (*(*v29 + 16))();
    goto LABEL_23;
  }

  v27 = v26;
  (*(*v29 + 24))();
LABEL_27:
  (*(*v12 + 16))(v12, &object, v26);
  if (v27 == v26)
  {
    (*(*v27 + 32))(v27);
    v15 = object;
    if (!object)
    {
      goto LABEL_35;
    }

    goto LABEL_33;
  }

  if (v27)
  {
    (*(*v27 + 40))();
  }

  v15 = object;
  if (object)
  {
LABEL_33:
    dispatch_group_leave(v15);
    if (object)
    {
      dispatch_release(object);
    }
  }

LABEL_35:
  if (v29 == v28)
  {
    (*(*v29 + 32))(v29);
    std::__shared_weak_count::__release_weak(v8);
    v1 = v23;
    if (v23)
    {
      goto LABEL_39;
    }

LABEL_45:
    v18 = a1;
    if (!a1)
    {
      goto LABEL_50;
    }

    goto LABEL_46;
  }

  if (v29)
  {
    (*(*v29 + 40))();
  }

  std::__shared_weak_count::__release_weak(v8);
  v1 = v23;
  if (!v23)
  {
    goto LABEL_45;
  }

LABEL_39:
  v16 = v1[1];
  if (v16)
  {
    dispatch_group_leave(v16);
    v17 = v1[1];
    if (v17)
    {
      dispatch_release(v17);
    }
  }

  operator delete(v1);
  v18 = a1;
  if (a1)
  {
LABEL_46:
    v19 = v18[2];
    if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v20 = v18;
      (v19->__on_zero_shared)(v19);
      std::__shared_weak_count::__release_weak(v19);
      v18 = v20;
    }

    operator delete(v18);
  }

LABEL_50:
  v21 = *MEMORY[0x1E69E9840];
}

void sub_1E52F4364(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, dispatch_object_t object, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  std::__shared_weak_count::__release_weak(v18);
  std::function<void ()(unsigned char const*,long)>::~function(&a18);
  std::__shared_weak_count::__release_weak(v18);
  std::unique_ptr<DaleBootLogger::startROMLogging(dispatch::group_session)::$_0,std::default_delete<DaleBootLogger::startROMLogging(dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<support::fs::SyncFile>::execute_wrapped<support::fs::SyncFile::flush(void)::$_0>(support::fs::SyncFile::flush(void)::$_0 &&)::{lambda(void)#1},std::default_delete<support::fs::SyncFile::flush(void)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void sub_1E52F43D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
      std::unique_ptr<DaleBootLogger::startROMLogging(dispatch::group_session)::$_0,std::default_delete<DaleBootLogger::startROMLogging(dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a11);
      std::unique_ptr<void ctu::SharedSynchronizable<support::fs::SyncFile>::execute_wrapped<support::fs::SyncFile::flush(void)::$_0>(support::fs::SyncFile::flush(void)::$_0 &&)::{lambda(void)#1},std::default_delete<support::fs::SyncFile::flush(void)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
      _Unwind_Resume(a1);
    }
  }

  std::unique_ptr<DaleBootLogger::startROMLogging(dispatch::group_session)::$_0,std::default_delete<DaleBootLogger::startROMLogging(dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<support::fs::SyncFile>::execute_wrapped<support::fs::SyncFile::flush(void)::$_0>(support::fs::SyncFile::flush(void)::$_0 &&)::{lambda(void)#1},std::default_delete<support::fs::SyncFile::flush(void)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<DaleBootLogger::startROMLogging(dispatch::group_session)::$_0,std::default_delete<DaleBootLogger::startROMLogging(dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[1];
    if (v3)
    {
      dispatch_group_leave(v3);
      v4 = v1[1];
      if (v4)
      {
        dispatch_release(v4);
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t std::__function::__func<DaleBootLogger::startROMLogging(dispatch::group_session)::$_0::operator() const(void)::{lambda(unsigned char const*,long)#1},std::allocator<DaleBootLogger::startROMLogging(dispatch::group_session)::$_0::operator() const(void)::{lambda(unsigned char const*,long)#1}>,void ()(unsigned char const*,long)>::~__func(uint64_t result)
{
  *result = &unk_1F5F03528;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<DaleBootLogger::startROMLogging(dispatch::group_session)::$_0::operator() const(void)::{lambda(unsigned char const*,long)#1},std::allocator<DaleBootLogger::startROMLogging(dispatch::group_session)::$_0::operator() const(void)::{lambda(unsigned char const*,long)#1}>,void ()(unsigned char const*,long)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_1F5F03528;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<DaleBootLogger::startROMLogging(dispatch::group_session)::$_0::operator() const(void)::{lambda(unsigned char const*,long)#1},std::allocator<DaleBootLogger::startROMLogging(dispatch::group_session)::$_0::operator() const(void)::{lambda(unsigned char const*,long)#1}>,void ()(unsigned char const*,long)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_1F5F03528;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<DaleBootLogger::startROMLogging(dispatch::group_session)::$_0::operator() const(void)::{lambda(unsigned char const*,long)#1},std::allocator<DaleBootLogger::startROMLogging(dispatch::group_session)::$_0::operator() const(void)::{lambda(unsigned char const*,long)#1}>,void ()(unsigned char const*,long)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5F03528;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<DaleBootLogger::startROMLogging(dispatch::group_session)::$_0::operator() const(void)::{lambda(unsigned char const*,long)#1},std::allocator<DaleBootLogger::startROMLogging(dispatch::group_session)::$_0::operator() const(void)::{lambda(unsigned char const*,long)#1}>,void ()(unsigned char const*,long)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<DaleBootLogger::startROMLogging(dispatch::group_session)::$_0::operator() const(void)::{lambda(unsigned char const*,long)#1},std::allocator<DaleBootLogger::startROMLogging(dispatch::group_session)::$_0::operator() const(void)::{lambda(unsigned char const*,long)#1}>,void ()(unsigned char const*,long)>::destroy_deallocate(std::__shared_weak_count **a1)
{
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void std::__function::__func<DaleBootLogger::startROMLogging(dispatch::group_session)::$_0::operator() const(void)::{lambda(unsigned char const*,long)#1},std::allocator<DaleBootLogger::startROMLogging(dispatch::group_session)::$_0::operator() const(void)::{lambda(unsigned char const*,long)#1}>,void ()(unsigned char const*,long)>::operator()(void *a1, _BYTE **a2, uint64_t *a3)
{
  v4 = a1[3];
  if (v4)
  {
    v5 = *a2;
    v6 = *a3;
    v7 = a1[1];
    v8 = std::__shared_weak_count::lock(v4);
    v18 = v8;
    if (v8)
    {
      v9 = v8;
      if (!a1[2])
      {
        goto LABEL_21;
      }

      ACFULogging::getLogInstance(v8);
      ACFULogging::handleMessage();
      if (v6 < 1)
      {
        goto LABEL_21;
      }

      v10 = v7[14];
      do
      {
        v11 = v7[15];
        if (v10 < v11)
        {
          *v10++ = *v5;
        }

        else
        {
          v12 = v7[13];
          v13 = v10 - v12;
          v14 = v10 - v12 + 1;
          if (v14 < 0)
          {
            std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
          }

          v15 = v11 - v12;
          if (2 * v15 > v14)
          {
            v14 = 2 * v15;
          }

          if (v15 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v16 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v16 = v14;
          }

          if (v16)
          {
            v17 = operator new(v16);
          }

          else
          {
            v17 = 0;
          }

          v17[v13] = *v5;
          v10 = &v17[v13 + 1];
          memcpy(v17, v12, v13);
          v7[13] = v17;
          v7[14] = v10;
          v7[15] = &v17[v16];
          if (v12)
          {
            operator delete(v12);
          }
        }

        v7[14] = v10;
        ++v5;
        --v6;
      }

      while (v6);
      v9 = v18;
      if (v18)
      {
LABEL_21:
        if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v9->__on_zero_shared)(v9);

          std::__shared_weak_count::__release_weak(v9);
        }
      }
    }
  }
}

void sub_1E52F47F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_1E52F4804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_1E52F4818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<DaleBootLogger::startROMLogging(dispatch::group_session)::$_0::operator() const(void)::{lambda(unsigned char const*,long)#1},std::allocator<DaleBootLogger::startROMLogging(dispatch::group_session)::$_0::operator() const(void)::{lambda(unsigned char const*,long)#1}>,void ()(unsigned char const*,long)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZN14DaleBootLogger15startROMLoggingEN8dispatch13group_sessionEENK3$_0clEvEUlPKhlE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZN14DaleBootLogger15startROMLoggingEN8dispatch13group_sessionEENK3$_0clEvEUlPKhlE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZN14DaleBootLogger15startROMLoggingEN8dispatch13group_sessionEENK3$_0clEvEUlPKhlE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZN14DaleBootLogger15startROMLoggingEN8dispatch13group_sessionEENK3$_0clEvEUlPKhlE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *std::__function::__value_func<void ()(unsigned char const*,long)>::swap[abi:ne200100](void *result, void *a2)
{
  v8[3] = *MEMORY[0x1E69E9840];
  if (a2 == result)
  {
LABEL_8:
    v6 = *MEMORY[0x1E69E9840];
    return result;
  }

  v3 = result;
  result = result[3];
  v4 = a2[3];
  if (result != v3)
  {
    if (v4 != a2)
    {
      v3[3] = v4;
      a2[3] = result;
      v5 = *MEMORY[0x1E69E9840];
      return result;
    }

    (*(*v4 + 24))(a2[3], v3);
    result = (*(*a2[3] + 32))(a2[3]);
    a2[3] = v3[3];
    v3[3] = v3;
    goto LABEL_8;
  }

  if (v4 == a2)
  {
    memset(v8, 170, 24);
    (*(*result + 24))(result, v8);
    (*(*v3[3] + 32))(v3[3]);
    v3[3] = 0;
    (*(*a2[3] + 24))(a2[3], v3);
    (*(*a2[3] + 32))(a2[3]);
    a2[3] = 0;
    v3[3] = v3;
    (*(v8[0] + 24))(v8, a2);
    result = (*(v8[0] + 32))(v8);
  }

  else
  {
    (*(*result + 24))(result, a2);
    result = (*(*v3[3] + 32))(v3[3]);
    v3[3] = a2[3];
  }

  a2[3] = a2;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E52F4B34(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__func<DaleBootLogger::startROMLogging(dispatch::group_session)::$_0::operator() const(void)::{lambda(unsigned char const*,long)#2},std::allocator<DaleBootLogger::startROMLogging(dispatch::group_session)::$_0::operator() const(void)::{lambda(unsigned char const*,long)#2}>,void ()(unsigned char const*,long)>::~__func(uint64_t result)
{
  *result = &unk_1F5F035B8;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<DaleBootLogger::startROMLogging(dispatch::group_session)::$_0::operator() const(void)::{lambda(unsigned char const*,long)#2},std::allocator<DaleBootLogger::startROMLogging(dispatch::group_session)::$_0::operator() const(void)::{lambda(unsigned char const*,long)#2}>,void ()(unsigned char const*,long)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_1F5F035B8;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<DaleBootLogger::startROMLogging(dispatch::group_session)::$_0::operator() const(void)::{lambda(unsigned char const*,long)#2},std::allocator<DaleBootLogger::startROMLogging(dispatch::group_session)::$_0::operator() const(void)::{lambda(unsigned char const*,long)#2}>,void ()(unsigned char const*,long)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_1F5F035B8;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<DaleBootLogger::startROMLogging(dispatch::group_session)::$_0::operator() const(void)::{lambda(unsigned char const*,long)#2},std::allocator<DaleBootLogger::startROMLogging(dispatch::group_session)::$_0::operator() const(void)::{lambda(unsigned char const*,long)#2}>,void ()(unsigned char const*,long)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5F035B8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<DaleBootLogger::startROMLogging(dispatch::group_session)::$_0::operator() const(void)::{lambda(unsigned char const*,long)#2},std::allocator<DaleBootLogger::startROMLogging(dispatch::group_session)::$_0::operator() const(void)::{lambda(unsigned char const*,long)#2}>,void ()(unsigned char const*,long)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<DaleBootLogger::startROMLogging(dispatch::group_session)::$_0::operator() const(void)::{lambda(unsigned char const*,long)#2},std::allocator<DaleBootLogger::startROMLogging(dispatch::group_session)::$_0::operator() const(void)::{lambda(unsigned char const*,long)#2}>,void ()(unsigned char const*,long)>::destroy_deallocate(std::__shared_weak_count **a1)
{
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void std::__function::__func<DaleBootLogger::startROMLogging(dispatch::group_session)::$_0::operator() const(void)::{lambda(unsigned char const*,long)#2},std::allocator<DaleBootLogger::startROMLogging(dispatch::group_session)::$_0::operator() const(void)::{lambda(unsigned char const*,long)#2}>,void ()(unsigned char const*,long)>::operator()(void *a1, const unsigned __int8 **a2, uint64_t *a3)
{
  v4 = a1[3];
  if (v4)
  {
    v5 = *a2;
    v6 = *a3;
    v7 = a1[1];
    v8 = std::__shared_weak_count::lock(v4);
    if (v8)
    {
      v9 = v8;
      if (a1[2])
      {
        DaleBootLogger::log(v7, v5, v6);
      }

      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);

        std::__shared_weak_count::__release_weak(v9);
      }
    }
  }
}

uint64_t std::__function::__func<DaleBootLogger::startROMLogging(dispatch::group_session)::$_0::operator() const(void)::{lambda(unsigned char const*,long)#2},std::allocator<DaleBootLogger::startROMLogging(dispatch::group_session)::$_0::operator() const(void)::{lambda(unsigned char const*,long)#2}>,void ()(unsigned char const*,long)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZN14DaleBootLogger15startROMLoggingEN8dispatch13group_sessionEENK3$_0clEvEUlPKhlE0_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZN14DaleBootLogger15startROMLoggingEN8dispatch13group_sessionEENK3$_0clEvEUlPKhlE0_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZN14DaleBootLogger15startROMLoggingEN8dispatch13group_sessionEENK3$_0clEvEUlPKhlE0_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZN14DaleBootLogger15startROMLoggingEN8dispatch13group_sessionEENK3$_0clEvEUlPKhlE0_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<BasebandBootLogger>::execute_wrapped<DaleBootLogger::stopROMLogging(dispatch::group_session)::$_0>(DaleBootLogger::stopROMLogging(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<DaleBootLogger::stopROMLogging(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<DaleBootLogger::stopROMLogging(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(dispatch_group_t **a1)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  isa = (*v2)[16].isa;
  if (isa)
  {
    group = v2[1];
    if (v3)
    {
      v6 = v3;
      dispatch_retain(v3);
      dispatch_group_enter(v6);
    }

    (*(*isa + 24))(isa, &group);
    if (group)
    {
      dispatch_group_leave(group);
      if (group)
      {
        dispatch_release(group);
      }
    }

    v3 = v2[1];
  }

  if (v3)
  {
    dispatch_group_leave(v3);
    v7 = v2[1];
    if (v7)
    {
      dispatch_release(v7);
    }
  }

  operator delete(v2);
  v8 = a1[2];
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  operator delete(a1);
}

void sub_1E52F4F40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  std::unique_ptr<DaleBootLogger::startROMLogging(dispatch::group_session)::$_0,std::default_delete<DaleBootLogger::startROMLogging(dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<support::fs::SyncFile>::execute_wrapped<support::fs::SyncFile::flush(void)::$_0>(support::fs::SyncFile::flush(void)::$_0 &&)::{lambda(void)#1},std::default_delete<support::fs::SyncFile::flush(void)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<BasebandBootLogger>::execute_wrapped<DaleBootLogger::startPLLogging(dispatch::group_session)::$_0>(DaleBootLogger::startPLLogging(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<DaleBootLogger::startPLLogging(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<DaleBootLogger::startPLLogging(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(ACFULogging *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  v21 = *a1;
  v2 = **a1;
  if (!v2[16])
  {
    ACFULogging::getLogInstance(a1);
    ACFULogging::handleMessage();
    goto LABEL_24;
  }

  v3 = v2[2];
  if (!v3 || (v4 = v2[1], (v5 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v6 = v5;
  p_shared_weak_owners = &v5->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v6);
  }

  memset(v25, 170, sizeof(v25));
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v8 = operator new(0x20uLL);
  v9 = &unk_1F5F03638;
  *v8 = &unk_1F5F03638;
  v8[1] = v2;
  v8[2] = v4;
  v8[3] = v6;
  v26 = v8;
  v10 = v2[16];
  v11 = v1[1];
  group = v11;
  if (v11)
  {
    v12 = v8;
    dispatch_retain(v11);
    dispatch_group_enter(v11);
    v9 = *v12;
  }

  v24 = v9[2]();
  (*(*v10 + 32))(v10, &group, v23);
  if (v24 == v23)
  {
    (*(*v24 + 32))(v24);
    v13 = group;
    if (!group)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  if (v24)
  {
    (*(*v24 + 40))();
  }

  v13 = group;
  if (group)
  {
LABEL_15:
    dispatch_group_leave(v13);
    if (group)
    {
      dispatch_release(group);
    }
  }

LABEL_17:
  if (v26 == v25)
  {
    (*(*v26 + 32))(v26);
    std::__shared_weak_count::__release_weak(v6);
    v1 = v21;
    if (!v21)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (v26)
    {
      (*(*v26 + 40))();
    }

    std::__shared_weak_count::__release_weak(v6);
    v1 = v21;
    if (!v21)
    {
LABEL_21:
      v14 = a1;
      if (!a1)
      {
        goto LABEL_32;
      }

      goto LABEL_28;
    }
  }

LABEL_24:
  v15 = v1[1];
  if (v15)
  {
    dispatch_group_leave(v15);
    v16 = v1[1];
    if (v16)
    {
      dispatch_release(v16);
    }
  }

  operator delete(v1);
  v14 = a1;
  if (a1)
  {
LABEL_28:
    v17 = *(v14 + 2);
    if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v18 = v14;
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
      v14 = v18;
    }

    operator delete(v14);
  }

LABEL_32:
  v19 = *MEMORY[0x1E69E9840];
}

void sub_1E52F52D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, dispatch_group_t group, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  std::function<void ()(unsigned char const*,long)>::~function(&a14);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  std::function<void ()(unsigned char const*,long)>::~function(&a18);
  std::__shared_weak_count::__release_weak(v18);
  std::unique_ptr<DaleBootLogger::startROMLogging(dispatch::group_session)::$_0,std::default_delete<DaleBootLogger::startROMLogging(dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a12);
  std::unique_ptr<void ctu::SharedSynchronizable<support::fs::SyncFile>::execute_wrapped<support::fs::SyncFile::flush(void)::$_0>(support::fs::SyncFile::flush(void)::$_0 &&)::{lambda(void)#1},std::default_delete<support::fs::SyncFile::flush(void)::$_0 &&>>::~unique_ptr[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void sub_1E52F5338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void *);
  std::unique_ptr<DaleBootLogger::startROMLogging(dispatch::group_session)::$_0,std::default_delete<DaleBootLogger::startROMLogging(dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](va1);
  std::unique_ptr<void ctu::SharedSynchronizable<support::fs::SyncFile>::execute_wrapped<support::fs::SyncFile::flush(void)::$_0>(support::fs::SyncFile::flush(void)::$_0 &&)::{lambda(void)#1},std::default_delete<support::fs::SyncFile::flush(void)::$_0 &&>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<DaleBootLogger::startPLLogging(dispatch::group_session)::$_0::operator() const(void)::{lambda(unsigned char const*,long)#1},std::allocator<DaleBootLogger::startPLLogging(dispatch::group_session)::$_0::operator() const(void)::{lambda(unsigned char const*,long)#1}>,void ()(unsigned char const*,long)>::~__func(uint64_t result)
{
  *result = &unk_1F5F03638;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<DaleBootLogger::startPLLogging(dispatch::group_session)::$_0::operator() const(void)::{lambda(unsigned char const*,long)#1},std::allocator<DaleBootLogger::startPLLogging(dispatch::group_session)::$_0::operator() const(void)::{lambda(unsigned char const*,long)#1}>,void ()(unsigned char const*,long)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_1F5F03638;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<DaleBootLogger::startPLLogging(dispatch::group_session)::$_0::operator() const(void)::{lambda(unsigned char const*,long)#1},std::allocator<DaleBootLogger::startPLLogging(dispatch::group_session)::$_0::operator() const(void)::{lambda(unsigned char const*,long)#1}>,void ()(unsigned char const*,long)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_1F5F03638;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<DaleBootLogger::startPLLogging(dispatch::group_session)::$_0::operator() const(void)::{lambda(unsigned char const*,long)#1},std::allocator<DaleBootLogger::startPLLogging(dispatch::group_session)::$_0::operator() const(void)::{lambda(unsigned char const*,long)#1}>,void ()(unsigned char const*,long)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5F03638;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<DaleBootLogger::startPLLogging(dispatch::group_session)::$_0::operator() const(void)::{lambda(unsigned char const*,long)#1},std::allocator<DaleBootLogger::startPLLogging(dispatch::group_session)::$_0::operator() const(void)::{lambda(unsigned char const*,long)#1}>,void ()(unsigned char const*,long)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<DaleBootLogger::startPLLogging(dispatch::group_session)::$_0::operator() const(void)::{lambda(unsigned char const*,long)#1},std::allocator<DaleBootLogger::startPLLogging(dispatch::group_session)::$_0::operator() const(void)::{lambda(unsigned char const*,long)#1}>,void ()(unsigned char const*,long)>::destroy_deallocate(std::__shared_weak_count **a1)
{
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void std::__function::__func<DaleBootLogger::startPLLogging(dispatch::group_session)::$_0::operator() const(void)::{lambda(unsigned char const*,long)#1},std::allocator<DaleBootLogger::startPLLogging(dispatch::group_session)::$_0::operator() const(void)::{lambda(unsigned char const*,long)#1}>,void ()(unsigned char const*,long)>::operator()(void *a1, const unsigned __int8 **a2, uint64_t *a3)
{
  v4 = a1[3];
  if (v4)
  {
    v5 = *a2;
    v6 = *a3;
    v7 = a1[1];
    v8 = std::__shared_weak_count::lock(v4);
    if (v8)
    {
      v9 = v8;
      if (a1[2])
      {
        DaleBootLogger::log(v7, v5, v6);
      }

      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);

        std::__shared_weak_count::__release_weak(v9);
      }
    }
  }
}

uint64_t std::__function::__func<DaleBootLogger::startPLLogging(dispatch::group_session)::$_0::operator() const(void)::{lambda(unsigned char const*,long)#1},std::allocator<DaleBootLogger::startPLLogging(dispatch::group_session)::$_0::operator() const(void)::{lambda(unsigned char const*,long)#1}>,void ()(unsigned char const*,long)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZN14DaleBootLogger14startPLLoggingEN8dispatch13group_sessionEENK3$_0clEvEUlPKhlE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZN14DaleBootLogger14startPLLoggingEN8dispatch13group_sessionEENK3$_0clEvEUlPKhlE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZN14DaleBootLogger14startPLLoggingEN8dispatch13group_sessionEENK3$_0clEvEUlPKhlE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZN14DaleBootLogger14startPLLoggingEN8dispatch13group_sessionEENK3$_0clEvEUlPKhlE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<BasebandBootLogger>::execute_wrapped<DaleBootLogger::stopPLLogging(dispatch::group_session)::$_0>(DaleBootLogger::stopPLLogging(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<DaleBootLogger::stopPLLogging(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<DaleBootLogger::stopPLLogging(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(ACFULogging *a1)
{
  v2 = *a1;
  v3 = *(**a1 + 128);
  if (v3)
  {
    v4 = v2[1];
    group = v4;
    if (v4)
    {
      dispatch_retain(v4);
      dispatch_group_enter(v4);
    }

    (*(*v3 + 40))(v3, &group);
    if (group)
    {
      dispatch_group_leave(group);
      if (group)
      {
        dispatch_release(group);
      }
    }
  }

  else
  {
    ACFULogging::getLogInstance(a1);
    ACFULogging::handleMessage();
  }

  v5 = v2[1];
  if (v5)
  {
    dispatch_group_leave(v5);
    v6 = v2[1];
    if (v6)
    {
      dispatch_release(v6);
    }
  }

  operator delete(v2);
  v7 = *(a1 + 2);
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  operator delete(a1);
}

void sub_1E52F5784(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
      std::unique_ptr<DaleBootLogger::startROMLogging(dispatch::group_session)::$_0,std::default_delete<DaleBootLogger::startROMLogging(dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a13);
      std::unique_ptr<void ctu::SharedSynchronizable<support::fs::SyncFile>::execute_wrapped<support::fs::SyncFile::flush(void)::$_0>(support::fs::SyncFile::flush(void)::$_0 &&)::{lambda(void)#1},std::default_delete<support::fs::SyncFile::flush(void)::$_0 &&>>::~unique_ptr[abi:ne200100](&a12);
      _Unwind_Resume(a1);
    }
  }

  std::unique_ptr<DaleBootLogger::startROMLogging(dispatch::group_session)::$_0,std::default_delete<DaleBootLogger::startROMLogging(dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a13);
  std::unique_ptr<void ctu::SharedSynchronizable<support::fs::SyncFile>::execute_wrapped<support::fs::SyncFile::flush(void)::$_0>(support::fs::SyncFile::flush(void)::$_0 &&)::{lambda(void)#1},std::default_delete<support::fs::SyncFile::flush(void)::$_0 &&>>::~unique_ptr[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void ___ZNK3ctu20SharedSynchronizableI18BasebandBootLoggerE20execute_wrapped_syncIZN14DaleBootLogger7dumpLogEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS6__block_invoke(ACFULogging *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = **(a1 + 5);
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0xAAAAAAAA3F800000;
  if (*(v3 + 281) != 1)
  {
    if (*(v3 + 281))
    {
      ACFULogging::getLogInstance(a1);
      ACFULogging::handleMessage();
      return;
    }

    memset(v37, 170, sizeof(v37));
    v4 = *(v3 + 96);
    if (v4)
    {
      v5 = *(v3 + 80);
      v6 = *(v3 + 64);
      v7 = &v6[v4];
      if (v5)
      {
        v8 = 0;
        v9 = *(v3 + 64);
        goto LABEL_12;
      }
    }

    else
    {
      v6 = *(v3 + 64);
      v7 = v6;
    }

    v5 = 0;
    v9 = &v6[v4];
    v8 = 1;
LABEL_12:
    v16 = v7 - v9;
    if ((v7 - v9) > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v16 > 0x16)
    {
      if ((v16 | 7) == 0x17)
      {
        v18 = 25;
      }

      else
      {
        v18 = (v16 | 7) + 1;
      }

      v17 = operator new(v18);
      v37[1] = v16;
      v37[2] = (v18 | 0x8000000000000000);
      v37[0] = v17;
      if (v8)
      {
        goto LABEL_28;
      }
    }

    else
    {
      HIBYTE(v37[2]) = v7 - v9;
      v17 = v37;
      if (v8)
      {
LABEL_28:
        *v17 = 0;
        v22 = *(v3 + 96);
        v24 = *(v3 + 72);
        v23 = *(v3 + 80);
        if (v24 - v23 <= v22)
        {
          v22 = v22 - v24 + *(v3 + 64);
        }

        *(v3 + 80) = v23 + v22;
        *(v3 + 96) = 0;
        std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[14],std::string&,0>(&v34, "boot-uart.log", v37);
        std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::string>>(a2, &v34, &v34);
        goto LABEL_52;
      }
    }

    v19 = *(v3 + 72);
    do
    {
      v20 = *v5++;
      *v17++ = v20;
      if (v5 == v19)
      {
        v5 = v6;
      }

      if (v5)
      {
        v21 = v5 == *(v3 + 88);
      }

      else
      {
        v21 = 1;
      }
    }

    while (!v21);
    goto LABEL_28;
  }

  memset(v37, 170, sizeof(v37));
  v10 = *(v3 + 96);
  if (v10)
  {
    v11 = *(v3 + 80);
    v12 = *(v3 + 64);
    v13 = &v12[v10];
    if (v11)
    {
      v14 = 0;
      v15 = *(v3 + 64);
      goto LABEL_33;
    }
  }

  else
  {
    v12 = *(v3 + 64);
    v13 = v12;
  }

  v11 = 0;
  v15 = &v12[v10];
  v14 = 1;
LABEL_33:
  v25 = v13 - v15;
  if ((v13 - v15) > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v25 > 0x16)
  {
    if ((v25 | 7) == 0x17)
    {
      v27 = 25;
    }

    else
    {
      v27 = (v25 | 7) + 1;
    }

    v26 = operator new(v27);
    v37[1] = v25;
    v37[2] = (v27 | 0x8000000000000000);
    v37[0] = v26;
    if (v14)
    {
      goto LABEL_49;
    }

LABEL_41:
    v28 = *(v3 + 72);
    do
    {
      v29 = *v11++;
      *v26++ = v29;
      if (v11 == v28)
      {
        v11 = v12;
      }

      if (v11)
      {
        v30 = v11 == *(v3 + 88);
      }

      else
      {
        v30 = 1;
      }
    }

    while (!v30);
    goto LABEL_49;
  }

  HIBYTE(v37[2]) = v13 - v15;
  v26 = v37;
  if ((v14 & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_49:
  *v26 = 0;
  v31 = *(v3 + 96);
  v33 = *(v3 + 72);
  v32 = *(v3 + 80);
  if (v33 - v32 <= v31)
  {
    v31 = v31 - v33 + *(v3 + 64);
  }

  *(v3 + 80) = v32 + v31;
  *(v3 + 96) = 0;
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[14],std::string&,0>(&v34, "boot-pcie.log", v37);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::string>>(a2, &v34, &v34);
LABEL_52:
  if (v36 < 0)
  {
    operator delete(__p);
    if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_54:
      if ((SHIBYTE(v37[2]) & 0x80000000) == 0)
      {
        return;
      }

LABEL_58:
      operator delete(v37[0]);
      return;
    }
  }

  else if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_54;
  }

  operator delete(v34.__r_.__value_.__l.__data_);
  if (SHIBYTE(v37[2]) < 0)
  {
    goto LABEL_58;
  }
}

void sub_1E52F5AE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  std::pair<std::string,std::string>::~pair(&a12);
  if (a23 < 0)
  {
    operator delete(__p);
    std::unordered_map<std::string,std::string>::~unordered_map[abi:ne200100](v23);
    _Unwind_Resume(a1);
  }

  std::unordered_map<std::string,std::string>::~unordered_map[abi:ne200100](v23);
  _Unwind_Resume(a1);
}

void std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::string>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v7 = v6;
  }

  v8 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](v42, a2, v7);
  v9 = v8;
  v10 = *(a1 + 8);
  if (v10)
  {
    v11 = vcnt_s8(v10);
    v11.i16[0] = vaddlv_u8(v11);
    if (v11.u32[0] > 1uLL)
    {
      v12 = v8;
      if (v8 >= v10)
      {
        v12 = v8 % v10;
      }
    }

    else
    {
      v12 = (v10 - 1) & v8;
    }

    v13 = *(*a1 + 8 * v12);
    if (v13)
    {
      v14 = *v13;
      if (*v13)
      {
        v15 = v4[23];
        if (v15 >= 0)
        {
          v16 = v4[23];
        }

        else
        {
          v16 = *(v4 + 1);
        }

        if (v15 < 0)
        {
          v4 = *v4;
        }

        if (v11.u32[0] < 2uLL)
        {
          while (1)
          {
            v21 = v14[1];
            if (v21 == v9)
            {
              v22 = *(v14 + 39);
              v23 = v22;
              if (v22 < 0)
              {
                v22 = v14[3];
              }

              if (v22 == v16)
              {
                v24 = v23 >= 0 ? (v14 + 2) : v14[2];
                if (!memcmp(v24, v4, v16))
                {
                  return;
                }
              }
            }

            else if ((v21 & (v10 - 1)) != v12)
            {
              goto LABEL_43;
            }

            v14 = *v14;
            if (!v14)
            {
              goto LABEL_43;
            }
          }
        }

        do
        {
          v17 = v14[1];
          if (v17 == v9)
          {
            v18 = *(v14 + 39);
            v19 = v18;
            if (v18 < 0)
            {
              v18 = v14[3];
            }

            if (v18 == v16)
            {
              v20 = v19 >= 0 ? (v14 + 2) : v14[2];
              if (!memcmp(v20, v4, v16))
              {
                return;
              }
            }
          }

          else
          {
            if (v17 >= v10)
            {
              v17 %= v10;
            }

            if (v17 != v12)
            {
              break;
            }
          }

          v14 = *v14;
        }

        while (v14);
      }
    }
  }

  else
  {
    v12 = 0xAAAAAAAAAAAAAAAALL;
  }

LABEL_43:
  v25 = operator new(0x40uLL);
  v42[0] = v25;
  v42[1] = a1;
  v43 = 0;
  *v25 = 0;
  *(v25 + 1) = v9;
  if (*(a3 + 23) < 0)
  {
    v26 = v25;
    std::string::__init_copy_ctor_external((v25 + 16), *a3, *(a3 + 8));
    v25 = v26;
  }

  else
  {
    *(v25 + 1) = *a3;
    *(v25 + 4) = *(a3 + 16);
  }

  *(v25 + 40) = *(a3 + 24);
  *(v25 + 7) = *(a3 + 40);
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 24) = 0;
  LOBYTE(v43) = 1;
  v27 = (*(a1 + 24) + 1);
  v28 = *(a1 + 32);
  if (v10 && (v28 * v10) >= v27)
  {
    goto LABEL_74;
  }

  v29 = 1;
  if (v10 >= 3)
  {
    v29 = (v10 & (v10 - 1)) != 0;
  }

  v30 = v29 | (2 * v10);
  v31 = vcvtps_u32_f32(v27 / v28);
  if (v30 <= v31)
  {
    prime = v31;
  }

  else
  {
    prime = v30;
  }

  if (prime == 1)
  {
    prime = 2;
  }

  else if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(prime);
  }

  v33 = *(a1 + 8);
  if (prime > *&v33)
  {
    goto LABEL_58;
  }

  if (prime < *&v33)
  {
    v34 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v33 < 3uLL || (v35 = vcnt_s8(v33), v35.i16[0] = vaddlv_u8(v35), v35.u32[0] > 1uLL))
    {
      v34 = std::__next_prime(v34);
    }

    else
    {
      v36 = 1 << -__clz(v34 - 1);
      if (v34 >= 2)
      {
        v34 = v36;
      }
    }

    if (prime <= v34)
    {
      prime = v34;
    }

    if (prime < *&v33)
    {
LABEL_58:
      std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__do_rehash<true>(a1, prime);
    }
  }

  v10 = *(a1 + 8);
  if ((v10 & (v10 - 1)) != 0)
  {
    if (v9 >= v10)
    {
      v12 = v9 % v10;
      v37 = *a1;
      v38 = *(*a1 + 8 * (v9 % v10));
      if (!v38)
      {
        goto LABEL_78;
      }

      goto LABEL_75;
    }

    v12 = v9;
LABEL_74:
    v37 = *a1;
    v38 = *(*a1 + 8 * v12);
    if (!v38)
    {
      goto LABEL_78;
    }

    goto LABEL_75;
  }

  v12 = (v10 - 1) & v9;
  v37 = *a1;
  v38 = *(*a1 + 8 * v12);
  if (!v38)
  {
LABEL_78:
    v40 = v42[0];
    *v42[0] = *(a1 + 16);
    *(a1 + 16) = v40;
    *(v37 + 8 * v12) = a1 + 16;
    if (*v40)
    {
      v41 = *(*v40 + 8);
      if ((v10 & (v10 - 1)) != 0)
      {
        if (v41 >= v10)
        {
          v41 %= v10;
        }

        *(v37 + 8 * v41) = v40;
      }

      else
      {
        *(v37 + 8 * (v41 & (v10 - 1))) = v40;
      }
    }

    goto LABEL_76;
  }

LABEL_75:
  v39 = v42[0];
  *v42[0] = *v38;
  *v38 = v39;
LABEL_76:
  ++*(a1 + 24);
}
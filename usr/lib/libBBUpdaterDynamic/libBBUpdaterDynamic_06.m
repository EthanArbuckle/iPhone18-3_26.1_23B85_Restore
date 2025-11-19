uint64_t BBUEUR25UpdateSource::validateBootupItems(BBUEUR25UpdateSource *this)
{
  v2 = *(this + 22);
  if (v2 && (*(*v2 + 64))(v2))
  {
    v3 = 0;
  }

  else
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      v3 = 35;
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      v3 = 35;
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_8;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v4 = (**this)(this);
      _BBULog(1, 0, v4, "", "SequencerRam image missing\n", v5, v6, v7, v100);
    }
  }

LABEL_8:
  v8 = *(this + 23);
  if (!v8 || !(*(*v8 + 64))(v8))
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      v3 = 35;
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      v3 = 35;
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v9 = (**this)(this);
      _BBULog(1, 0, v9, "", "SignedFirmwareSOCView image missing\n", v10, v11, v12, v100);
    }
  }

LABEL_14:
  v13 = *(this + 25);
  if (v13 && (*(*v13 + 64))(v13))
  {
    if (v3)
    {
      return v3;
    }

    if (*(this + 34))
    {
      v3 = !*(this + 35) || !*(this + 50) || !*(this + 36) || !*(this + 37) || !*(this + 26) || !*(this + 27) || !*(this + 28) || !**(this + 29) || !*(this + 32) || !*(this + 39) || !*(this + 40) || !*(this + 33) || !*(this + 41) || !*(this + 42) || !*(this + 44) || !*(this + 45) || !*(this + 46) || !*(this + 47) || *(this + 48) == 0;
    }

    else
    {
      if (gBBULogMaskGet(void)::once == -1)
      {
        v3 = 1;
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
        {
          goto LABEL_47;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        v3 = 1;
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
        {
          goto LABEL_47;
        }
      }

      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        v20 = (**this)(this);
        _BBULog(1, 0, v20, "", "ADPD image missing\n", v21, v22, v23, v100);
      }
    }

LABEL_47:
    if (*(this + 35))
    {
      goto LABEL_52;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_52;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_52;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v24 = (**this)(this);
      _BBULog(1, 0, v24, "", "DevCfg image missing\n", v25, v26, v27, v100);
    }

LABEL_52:
    if (*(this + 50))
    {
      goto LABEL_57;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_57;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_57;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v28 = (**this)(this);
      _BBULog(1, 0, v28, "", "Sec image missing\n", v29, v30, v31, v100);
    }

LABEL_57:
    if (*(this + 36))
    {
      goto LABEL_62;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_62;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_62;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v32 = (**this)(this);
      _BBULog(1, 0, v32, "", "HYP image missing\n", v33, v34, v35, v100);
    }

LABEL_62:
    if (*(this + 37))
    {
      goto LABEL_67;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_67;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_67;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v36 = (**this)(this);
      _BBULog(1, 0, v36, "", "AOP image missing\n", v37, v38, v39, v100);
    }

LABEL_67:
    if (*(this + 26))
    {
      goto LABEL_72;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_72;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_72;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v40 = (**this)(this);
      _BBULog(1, 0, v40, "", "APPS image missing\n", v41, v42, v43, v100);
    }

LABEL_72:
    if (*(this + 27))
    {
      goto LABEL_77;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_77;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_77;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v44 = (**this)(this);
      _BBULog(1, 0, v44, "", "QDSP6SW image missing\n", v45, v46, v47, v100);
    }

LABEL_77:
    if (*(this + 28))
    {
      goto LABEL_82;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_82;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_82;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v48 = (**this)(this);
      _BBULog(1, 0, v48, "", "TZ image missing\n", v49, v50, v51, v100);
    }

LABEL_82:
    if (**(this + 29))
    {
      goto LABEL_87;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_87;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_87;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v52 = (**this)(this);
      _BBULog(1, 0, v52, "", "EFS1 image missing\n", v53, v54, v55, v100);
    }

LABEL_87:
    if (*(this + 32))
    {
      goto LABEL_92;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_92;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_92;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v56 = (**this)(this);
      _BBULog(1, 0, v56, "", "ACDB image missing\n", v57, v58, v59, v100);
    }

LABEL_92:
    if (*(this + 39))
    {
      goto LABEL_97;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_97;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_97;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v60 = (**this)(this);
      _BBULog(1, 0, v60, "", "OEMMisc image missing\n", v61, v62, v63, v100);
    }

LABEL_97:
    if (*(this + 40))
    {
      goto LABEL_102;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_102;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_102;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v64 = (**this)(this);
      _BBULog(1, 0, v64, "", "QTIMis image missing\n", v65, v66, v67, v100);
    }

LABEL_102:
    if (*(this + 33))
    {
      goto LABEL_107;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_107;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_107;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v68 = (**this)(this);
      _BBULog(1, 0, v68, "", "BBCfg image missing\n", v69, v70, v71, v100);
    }

LABEL_107:
    if (*(this + 41))
    {
      goto LABEL_112;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_112;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_112;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v72 = (**this)(this);
      _BBULog(1, 0, v72, "", "XblCfg image missing\n", v73, v74, v75, v100);
    }

LABEL_112:
    if (*(this + 42))
    {
      goto LABEL_117;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_117;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_117;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v76 = (**this)(this);
      _BBULog(1, 0, v76, "", "UEFI image missing\n", v77, v78, v79, v100);
    }

LABEL_117:
    if (*(this + 44))
    {
      goto LABEL_122;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_122;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_122;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v80 = (**this)(this);
      _BBULog(1, 0, v80, "", "Shrm image missing\n", v81, v82, v83, v100);
    }

LABEL_122:
    if (*(this + 45))
    {
      goto LABEL_127;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_127;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_127;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v84 = (**this)(this);
      _BBULog(1, 0, v84, "", "Cpucp image missing\n", v85, v86, v87, v100);
    }

LABEL_127:
    if (*(this + 46))
    {
      goto LABEL_132;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_132;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_132;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v88 = (**this)(this);
      _BBULog(1, 0, v88, "", "AOPDevCfg image missing\n", v89, v90, v91, v100);
    }

LABEL_132:
    if (*(this + 47))
    {
      goto LABEL_137;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_137;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_137;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v92 = (**this)(this);
      _BBULog(1, 0, v92, "", "Qdsp6SwDtbs image missing\n", v93, v94, v95, v100);
    }

LABEL_137:
    if (*(this + 48))
    {
      goto LABEL_142;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_142;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_142;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v96 = (**this)(this);
      _BBULog(1, 0, v96, "", "Qupv3Fw image missing\n", v97, v98, v99, v100);
    }

LABEL_142:
    if (v3)
    {
      if (gBBULogMaskGet(void)::once == -1)
      {
        v3 = 35;
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
        {
          return v3;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        v3 = 35;
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
        {
          return v3;
        }
      }

      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        v14 = "Baseband FW isn't complete. You are missing some images!\n";
        goto LABEL_41;
      }
    }

    return v3;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    v3 = 35;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      return v3;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    v3 = 35;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      return v3;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v14 = "XBLsc image missing\n";
LABEL_41:
    v15 = (**this)(this);
    _BBULog(1, 0, v15, "", v14, v16, v17, v18, v100);
    return 35;
  }

  return v3;
}

uint64_t BBUEUR25UpdateSource::validateCoredumpItems(BBUEUR25UpdateSource *this)
{
  v2 = *(this + 22);
  if (v2 && (*(*v2 + 64))(v2))
  {
    v3 = *(this + 23);
    if (!v3)
    {
      goto LABEL_9;
    }
  }

  else
  {
    BBUFeedback::handleComment(*(this + 1), "SequencerRam image missing\n");
    v3 = *(this + 23);
    if (!v3)
    {
      goto LABEL_9;
    }
  }

  if ((*(*v3 + 64))(v3))
  {
    v4 = *(this + 25);
    if (!v4)
    {
      goto LABEL_18;
    }

    goto LABEL_10;
  }

LABEL_9:
  BBUFeedback::handleComment(*(this + 1), "SignedFirmwareSOCView image missing\n");
  v4 = *(this + 25);
  if (!v4)
  {
    goto LABEL_18;
  }

LABEL_10:
  if ((*(*v4 + 64))(v4))
  {
    if (*(this + 34))
    {
      goto LABEL_12;
    }

    goto LABEL_19;
  }

LABEL_18:
  BBUFeedback::handleComment(*(this + 1), "XBLsc image missing\n");
  if (*(this + 34))
  {
LABEL_12:
    if (*(this + 39))
    {
      goto LABEL_13;
    }

    goto LABEL_20;
  }

LABEL_19:
  BBUFeedback::handleComment(*(this + 1), "APDP image missing\n");
  if (*(this + 39))
  {
LABEL_13:
    if (*(this + 40))
    {
      goto LABEL_14;
    }

    goto LABEL_21;
  }

LABEL_20:
  BBUFeedback::handleComment(*(this + 1), "OEMMisc image missing\n");
  if (*(this + 40))
  {
LABEL_14:
    if (*(this + 43))
    {
      goto LABEL_15;
    }

    goto LABEL_22;
  }

LABEL_21:
  BBUFeedback::handleComment(*(this + 1), "QTIMisc image missing\n");
  if (*(this + 43))
  {
LABEL_15:
    if (*(this + 41))
    {
      goto LABEL_16;
    }

LABEL_23:
    BBUFeedback::handleComment(*(this + 1), "XBLCfg image missing\n");
    v5 = *(this + 22);
    if (!v5)
    {
      return 35;
    }

    goto LABEL_24;
  }

LABEL_22:
  BBUFeedback::handleComment(*(this + 1), "XBLSupport image missing\n");
  if (!*(this + 41))
  {
    goto LABEL_23;
  }

LABEL_16:
  v5 = *(this + 22);
  if (!v5)
  {
    return 35;
  }

LABEL_24:
  if ((*(*v5 + 64))(v5))
  {
    v6 = *(this + 23);
    if (v6)
    {
      if ((*(*v6 + 64))(v6))
      {
        v7 = *(this + 25);
        if (v7)
        {
          if ((*(*v7 + 64))(v7) && *(this + 34) && *(this + 39) && *(this + 40) && *(this + 43) && *(this + 41))
          {
            return 0;
          }
        }
      }
    }
  }

  return 35;
}

char *BBUEUR25UpdateSource::copyHashData(BBUEUR25UpdateSource *this, int a2)
{
  v47 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    __src[1] = v3;
    __src[2] = v3;
    __src[0] = v3;
    v45[1] = v3;
    v45[2] = v3;
    v44[2] = v3;
    v45[0] = v3;
    v44[0] = v3;
    v44[1] = v3;
    v43[1] = v3;
    v43[2] = v3;
    v42[2] = v3;
    v43[0] = v3;
    v42[0] = v3;
    v42[1] = v3;
    v4 = *(this + 25);
    if (!v4)
    {
      exception = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(exception, 89, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEUR25UpdateSource.cpp", 0xE9u, "Assertion failure(fXBLscImage && Failed loading XBLsc image for creating hash.)", v23, v24, v25, v42[0]);
    }

    (*(*v4 + 56))(v4, __src, 1);
    v5 = *(this + 32);
    if (!v5)
    {
      v26 = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(v26, 92, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEUR25UpdateSource.cpp", 0xECu, "Assertion failure(fAcdbImage && Failed loading ACDB image for creating hash.)", v27, v28, v29, v42[0]);
    }

    (*(*v5 + 56))(v5, v45, 1);
    v6 = *(this + 33);
    if (!v6)
    {
      v30 = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(v30, 92, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEUR25UpdateSource.cpp", 0xEFu, "Assertion failure(fBbcfgImage && Failed loading BBCFG image for creating hash.)", v31, v32, v33, v42[0]);
    }

    (*(*v6 + 56))(v6, v44, 1);
    v7 = *(this + 39);
    if (!v7)
    {
      v34 = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(v34, 92, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEUR25UpdateSource.cpp", 0xF2u, "Assertion failure(fOEMMiscImage && Failed loading OEMMisc image for creating hash.)", v35, v36, v37, v42[0]);
    }

    (*(*v7 + 56))(v7, v43, 1);
    v8 = *(this + 23);
    if (!v8)
    {
      v38 = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(v38, 89, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEUR25UpdateSource.cpp", 0xF5u, "Assertion failure(fSignedFirmwareSOCViewImage && Failed loading SignedFirmwareSOCView image for creating hash.)", v39, v40, v41, v42[0]);
    }

    (*(*v8 + 56))(v8, v42, 1);
    v9 = operator new(0xF8uLL);
    *v9 = &unk_1F5F01038;
    v10 = off_1F5F01058(v9);
    memcpy(v9 + 8, __src, v10);
    v11 = (*(*v9 + 32))(v9);
    memcpy(v9 + 56, v45, v11);
    v12 = (*(*v9 + 32))(v9);
    memcpy(v9 + 104, v44, v12);
    v13 = (*(*v9 + 32))(v9);
    memcpy(v9 + 152, v43, v13);
    v14 = (*(*v9 + 32))(v9);
    memcpy(v9 + 200, v42, v14);
  }

  else
  {
    v9 = operator new(0xF8uLL);
    *v9 = &unk_1F5F01038;
    v15 = off_1F5F01058(v9);
    bzero(v9 + 8, v15);
    v16 = (*(*v9 + 32))(v9);
    bzero(v9 + 56, v16);
    v17 = (*(*v9 + 32))(v9);
    bzero(v9 + 104, v17);
    v18 = (*(*v9 + 32))(v9);
    bzero(v9 + 152, v18);
    v19 = (*(*v9 + 32))(v9);
    bzero(v9 + 200, v19);
  }

  v20 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t BBUEUR25UpdateSource::getProgrammerSource(BBUEUR25UpdateSource *this, char a2)
{
  result = *(this + 52);
  if (result)
  {
    return result;
  }

  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
  v6 = *(this + 22);
  if (v6 && (*(*v6 + 32))(v6))
  {
    v7 = (*(**(this + 22) + 32))(*(this + 22));
    if (v7)
    {
      v8 = v7;
      v9 = operator new(v7);
      v10 = &v9[v8];
      bzero(v9, v8);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    v17 = *(this + 22);
    v18 = (*(*v17 + 32))(v17);
    (*(*v17 + 24))(v17, v9, v18, 0);
    CFDataAppendBytes(Mutable, v9, v10 - v9);
    if (v9)
    {
      operator delete(v9);
    }

    v19 = *(this + 23);
    if (v19 && (*(*v19 + 32))(v19))
    {
      v20 = (*(**(this + 23) + 32))(*(this + 23));
      if (v20)
      {
        v21 = v20;
        v22 = operator new(v20);
        v23 = &v22[v21];
        bzero(v22, v21);
      }

      else
      {
        v22 = 0;
        v23 = 0;
      }

      v24 = *(this + 23);
      v25 = (*(*v24 + 32))(v24);
      (*(*v24 + 24))(v24, v22, v25, 0);
      CFDataAppendBytes(Mutable, v22, v23 - v22);
      if (v22)
      {
        operator delete(v22);
      }

      if (a2)
      {
        v26 = *(this + 25);
        if (v26)
        {
          v27 = (*(*v26 + 32))(v26);
          if (v27)
          {
            v28 = v27;
            v29 = operator new(v27);
            v30 = &v29[v28];
            bzero(v29, v28);
          }

          else
          {
            v29 = 0;
            v30 = 0;
          }

          v35 = *(this + 25);
          v36 = (*(*v35 + 32))(v35);
          (*(*v35 + 24))(v35, v29, v36, 0);
          CFDataAppendBytes(Mutable, v29, v30 - v29);
LABEL_49:
          if (v29)
          {
            operator delete(v29);
          }

          v39 = operator new(0x18uLL);
          v39[4] = 0;
          *v39 = &unk_1F5F04B00;
          *(v39 + 1) = Mutable;
          if (Mutable)
          {
            CFRetain(Mutable);
          }

          v40 = *(this + 52);
          *(this + 52) = v39;
          if (v40)
          {
            (*(*v40 + 8))(v40);
            if (!*(this + 52))
            {
              exception = __cxa_allocate_exception(0x210uLL);
              _BBUException::_BBUException(exception, 68, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEUR25UpdateSource.cpp", 0x148u, "Assertion failure(fProgrammerDataSource.get() && Failed creating data source from data for programmer)", v42, v43, v44, v45);
            }
          }

          v11 = 1;
          goto LABEL_22;
        }

        if (gBBULogMaskGet(void)::once == -1)
        {
          v11 = 0;
          if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
          {
            goto LABEL_22;
          }
        }

        else
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          v11 = 0;
          if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
          {
            goto LABEL_22;
          }
        }

        if (gBBULogVerbosity < 0)
        {
          goto LABEL_22;
        }

        v12 = (**this)(this);
        v16 = "invalid xbl image\n";
      }

      else
      {
        v31 = *(this + 24);
        if (v31)
        {
          v32 = (*(*v31 + 32))(v31);
          if (v32)
          {
            v33 = v32;
            v29 = operator new(v32);
            v34 = &v29[v33];
            bzero(v29, v33);
          }

          else
          {
            v29 = 0;
            v34 = 0;
          }

          v37 = *(this + 24);
          v38 = (*(*v37 + 32))(v37);
          (*(*v37 + 24))(v37, v29, v38, 0);
          CFDataAppendBytes(Mutable, v29, v34 - v29);
          goto LABEL_49;
        }

        if (gBBULogMaskGet(void)::once == -1)
        {
          v11 = 0;
          if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
          {
            goto LABEL_22;
          }
        }

        else
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          v11 = 0;
          if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
          {
            goto LABEL_22;
          }
        }

        if (gBBULogVerbosity < 0)
        {
          goto LABEL_22;
        }

        v12 = (**this)(this);
        v16 = "invalid restore xbl image\n";
      }

      goto LABEL_21;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      v11 = 0;
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      v11 = 0;
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_22;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v12 = (**this)(this);
      v16 = "invalid SignedFirmwareSOCView image\n";
      goto LABEL_21;
    }
  }

  else
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      v11 = 0;
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      v11 = 0;
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_22;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v12 = (**this)(this);
      v16 = "invalid SequencerRam image\n";
LABEL_21:
      _BBULog(1, 0, v12, "", v16, v13, v14, v15, v45);
      v11 = 0;
    }
  }

LABEL_22:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v11)
  {
    return *(this + 52);
  }

  else
  {
    return 0;
  }
}

void sub_1E5289F9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  ctu::cf::CFSharedRef<__CFData>::~CFSharedRef(&a10);
  _Unwind_Resume(a1);
}

void sub_1E5289FB8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFData>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

uint64_t BBUEUR25UpdateSource::saveImages(BBUEUR25UpdateSource *this)
{
  if (!*(this + 8))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 35, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEUR25UpdateSource.cpp", 0x150u, "Assertion failure(fZipFile && Firmware data source error!)", v34, v35, v36, __p[0]);
  }

  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  v2 = (**this)(this);
  v6 = _BBULog(19, 0xFFFFFFFFLL, v2, "", "BBUEUR25UpdateSource::saveImages\n", v3, v4, v5, __p[0]);
  memset(v47, 170, sizeof(v47));
  capabilities::radio::personalizedFirmwarePath(v47, v6);
  v7 = HIBYTE(v47[2]);
  if (SHIBYTE(v47[2]) < 0)
  {
    v7 = v47[1];
  }

  if (!v7)
  {
    v37 = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(v37, 35, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEUR25UpdateSource.cpp", 0x155u, "Assertion failure(folder.empty() != true && Failed finding the bbfw path.)", v38, v39, v40, __p[0]);
  }

  result = BBUEURUpdateSource::saveImages(this);
  if (!result)
  {
    __p[23] = 17;
    strcpy(__p, "sequencer_ram.elf");
    result = BBUEURUpdateSource::saveFile(this, __p, v47);
    if ((__p[23] & 0x80000000) != 0)
    {
      v9 = result;
      operator delete(*__p);
      result = v9;
      if (v9)
      {
        goto LABEL_79;
      }
    }

    else if (result)
    {
      goto LABEL_79;
    }

    *__p = operator new(0x20uLL);
    *&__p[8] = xmmword_1E5390FE0;
    strcpy(*__p, "signed_firmware_soc_view.elf");
    result = BBUEURUpdateSource::saveFile(this, __p, v47);
    if ((__p[23] & 0x80000000) != 0)
    {
      v10 = result;
      operator delete(*__p);
      result = v10;
      if (v10)
      {
        goto LABEL_79;
      }
    }

    else if (result)
    {
      goto LABEL_79;
    }

    __p[23] = 10;
    strcpy(__p, "xbl_sc.elf");
    result = BBUEURUpdateSource::saveFile(this, __p, v47);
    if ((__p[23] & 0x80000000) != 0)
    {
      v11 = result;
      operator delete(*__p);
      result = v11;
    }

    if (!result)
    {
      __p[23] = 8;
      strcpy(__p, "apps.mbn");
      result = BBUEURUpdateSource::saveFile(this, __p, v47);
      if ((__p[23] & 0x80000000) != 0)
      {
        v12 = result;
        operator delete(*__p);
        result = v12;
      }

      if (!result)
      {
        __p[23] = 11;
        strcpy(__p, "qdsp6sw.mbn");
        result = BBUEURUpdateSource::saveFile(this, __p, v47);
        if ((__p[23] & 0x80000000) != 0)
        {
          v13 = result;
          operator delete(*__p);
          result = v13;
        }

        if (!result)
        {
          __p[23] = 6;
          strcpy(__p, "tz.mbn");
          result = BBUEURUpdateSource::saveFile(this, __p, v47);
          if ((__p[23] & 0x80000000) != 0)
          {
            v14 = result;
            operator delete(*__p);
            result = v14;
          }

          if (!result)
          {
            __p[23] = 8;
            strcpy(__p, "acdb.mbn");
            result = BBUEURUpdateSource::saveFile(this, __p, v47);
            if ((__p[23] & 0x80000000) != 0)
            {
              v15 = result;
              operator delete(*__p);
              result = v15;
            }

            if (!result)
            {
              __p[23] = 9;
              strcpy(__p, "bbcfg.mbn");
              result = BBUEURUpdateSource::saveFile(this, __p, v47);
              if ((__p[23] & 0x80000000) != 0)
              {
                v16 = result;
                operator delete(*__p);
                result = v16;
              }

              if (!result)
              {
                __p[23] = 8;
                strcpy(__p, "apdp.mbn");
                result = BBUEURUpdateSource::saveFile(this, __p, v47);
                if ((__p[23] & 0x80000000) != 0)
                {
                  v17 = result;
                  operator delete(*__p);
                  result = v17;
                }

                if (!result)
                {
                  __p[23] = 10;
                  strcpy(__p, "devcfg.mbn");
                  v18 = BBUEURUpdateSource::saveFile(this, __p, v47);
                  if ((__p[23] & 0x80000000) != 0)
                  {
                    operator delete(*__p);
                  }

                  result = v18;
                  if (!v18)
                  {
                    __p[23] = 7;
                    strcpy(__p, "sec.elf");
                    v19 = BBUEURUpdateSource::saveFile(this, __p, v47);
                    if ((__p[23] & 0x80000000) != 0)
                    {
                      operator delete(*__p);
                    }

                    result = v19;
                    if (!v19)
                    {
                      __p[23] = 7;
                      strcpy(__p, "hyp.mbn");
                      v20 = BBUEURUpdateSource::saveFile(this, __p, v47);
                      if ((__p[23] & 0x80000000) != 0)
                      {
                        operator delete(*__p);
                      }

                      result = v20;
                      if (!v20)
                      {
                        __p[23] = 7;
                        strcpy(__p, "aop.mbn");
                        v21 = BBUEURUpdateSource::saveFile(this, __p, v47);
                        if ((__p[23] & 0x80000000) != 0)
                        {
                          operator delete(*__p);
                        }

                        result = v21;
                        if (!v21)
                        {
                          __p[23] = 15;
                          strcpy(__p, "multi_image.mbn");
                          v22 = BBUEURUpdateSource::saveFile(this, __p, v47);
                          if ((__p[23] & 0x80000000) != 0)
                          {
                            operator delete(*__p);
                          }

                          result = v22;
                          if (!v22)
                          {
                            __p[23] = 19;
                            strcpy(__p, "multi_image_qti.mbn");
                            v23 = BBUEURUpdateSource::saveFile(this, __p, v47);
                            if ((__p[23] & 0x80000000) != 0)
                            {
                              operator delete(*__p);
                            }

                            result = v23;
                            if (!v23)
                            {
                              __p[23] = 11;
                              strcpy(__p, "xbl_cfg.elf");
                              v24 = BBUEURUpdateSource::saveFile(this, __p, v47);
                              if ((__p[23] & 0x80000000) != 0)
                              {
                                operator delete(*__p);
                              }

                              result = v24;
                              if (!v24)
                              {
                                __p[23] = 8;
                                strcpy(__p, "uefi.elf");
                                v25 = BBUEURUpdateSource::saveFile(this, __p, v47);
                                if ((__p[23] & 0x80000000) != 0)
                                {
                                  operator delete(*__p);
                                }

                                result = v25;
                                if (!v25)
                                {
                                  __p[23] = 15;
                                  strcpy(__p, "xbl_support.elf");
                                  v26 = BBUEURUpdateSource::saveFile(this, __p, v47);
                                  if ((__p[23] & 0x80000000) != 0)
                                  {
                                    operator delete(*__p);
                                  }

                                  result = v26;
                                  if (!v26)
                                  {
                                    __p[23] = 8;
                                    strcpy(__p, "shrm.elf");
                                    v27 = BBUEURUpdateSource::saveFile(this, __p, v47);
                                    if ((__p[23] & 0x80000000) != 0)
                                    {
                                      operator delete(*__p);
                                    }

                                    result = v27;
                                    if (!v27)
                                    {
                                      __p[23] = 9;
                                      strcpy(__p, "cpucp.elf");
                                      v28 = BBUEURUpdateSource::saveFile(this, __p, v47);
                                      if ((__p[23] & 0x80000000) != 0)
                                      {
                                        operator delete(*__p);
                                      }

                                      result = v28;
                                      if (!v28)
                                      {
                                        __p[23] = 14;
                                        strcpy(__p, "aop_devcfg.mbn");
                                        v29 = BBUEURUpdateSource::saveFile(this, __p, v47);
                                        if ((__p[23] & 0x80000000) != 0)
                                        {
                                          operator delete(*__p);
                                        }

                                        result = v29;
                                        if (!v29)
                                        {
                                          __p[23] = 16;
                                          strcpy(__p, "qdsp6sw_dtbs.elf");
                                          v30 = BBUEURUpdateSource::saveFile(this, __p, v47);
                                          if ((__p[23] & 0x80000000) != 0)
                                          {
                                            operator delete(*__p);
                                          }

                                          result = v30;
                                          if (!v30)
                                          {
                                            __p[23] = 11;
                                            strcpy(__p, "qupv3fw.elf");
                                            v31 = BBUEURUpdateSource::saveFile(this, __p, v47);
                                            if ((__p[23] & 0x80000000) != 0)
                                            {
                                              operator delete(*__p);
                                            }

                                            result = v31;
                                            if (!v31)
                                            {
                                              v41 = *(this + 8);
                                              __p[23] = 6;
                                              strcpy(__p, "pt.mbn");
                                              if (!BBUZipFile::containsFile(v41, __p))
                                              {
                                                goto LABEL_87;
                                              }

                                              __p[23] = 6;
                                              strcpy(__p, "pt.mbn");
                                              v42 = BBUEURUpdateSource::saveFile(this, __p, v47);
                                              if ((__p[23] & 0x80000000) != 0)
                                              {
                                                operator delete(*__p);
                                              }

                                              result = v42;
                                              if (!v42)
                                              {
LABEL_87:
                                                v43 = *(this + 8);
                                                (*(*this + 56))(__p, this);
                                                v44 = BBUZipFile::containsFile(v43, __p);
                                                if ((__p[23] & 0x80000000) != 0)
                                                {
                                                  operator delete(*__p);
                                                }

                                                if (v44)
                                                {
                                                  (*(*this + 56))(__p, this);
                                                  v45 = BBUEURUpdateSource::saveFile(this, __p, v47);
                                                  if ((__p[23] & 0x80000000) != 0)
                                                  {
                                                    operator delete(*__p);
                                                  }

                                                  result = v45;
                                                }

                                                else
                                                {
                                                  result = 0;
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
        }
      }
    }
  }

LABEL_79:
  if (SHIBYTE(v47[2]) < 0)
  {
    v32 = result;
    operator delete(v47[0]);
    return v32;
  }

  return result;
}

void sub_1E528AA3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  _Unwind_Resume(exception_object);
}

void BBUEUR25UpdateSource::init(BBUEUR25UpdateSource *this)
{
  pthread_mutex_lock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  v2 = off_1ED944170;
  if (!off_1ED944170)
  {
    v3 = operator new(0x18uLL);
    BBUPartitionManager::BBUPartitionManager(v3);
    v500.__r_.__value_.__r.__words[0] = v3;
    v4 = operator new(0x20uLL);
    *v4 = &unk_1F5F05A00;
    v4[1] = 0;
    v4[2] = 0;
    v4[3] = v3;
    v5 = off_1ED944178;
    off_1ED944170 = v3;
    off_1ED944178 = v4;
    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v2 = off_1ED944170;
  }

  v6 = off_1ED944178;
  v501.__r_.__value_.__r.__words[0] = v2;
  v501.__r_.__value_.__l.__size_ = off_1ED944178;
  if (off_1ED944178)
  {
    atomic_fetch_add_explicit(off_1ED944178 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  BBUPartitionManager::getBBUFSPath(v2, &__p);
  if ((__p.st_gid & 0x80000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = *&__p.st_dev;
  }

  if (p_p)
  {
    if ((bbufs::prepareDestination(p_p, v7) & 1) == 0)
    {
      _BBUFSDebugPrint("BBUFSServerPrepare", "failed preparing baseband filesystem directory\n", v15, v16, v17, v18, v19, v20, v491);
    }
  }

  else
  {
    _BBUFSDebugPrint("BBUFSServerPrepare", "invalid path specified %s\n", v8, v9, v10, v11, v12, v13, 0);
  }

  if (SHIBYTE(__p.st_gid) < 0)
  {
    operator delete(*&__p.st_dev);
    if (!v6)
    {
      goto LABEL_20;
    }
  }

  else if (!v6)
  {
LABEL_20:
    v21 = *(this + 103);
    if ((v21 & 0x8000000000000000) == 0)
    {
      goto LABEL_21;
    }

LABEL_24:
    if (*(this + 11))
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_20;
  }

  (v6->__on_zero_shared)(v6);
  std::__shared_weak_count::__release_weak(v6);
  v21 = *(this + 103);
  if (v21 < 0)
  {
    goto LABEL_24;
  }

LABEL_21:
  if (v21)
  {
    goto LABEL_26;
  }

LABEL_25:
  if (!*(this + 8))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 35, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEUR25UpdateSource.cpp", 0x1E1u, "Assertion failure(( !fFirmwareFolder.empty() || fZipFile) && Firmware data source error!)", v484, v485, v486, v491);
LABEL_769:
  }

LABEL_26:
  HIBYTE(__p.st_gid) = 17;
  v493 = *"sequencer_ram.elf";
  strcpy(&__p, "sequencer_ram.elf");
  v22 = BBUEURUpdateSource::containsFile(this, &__p);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    v32 = v22;
    operator delete(*&__p.st_dev);
    if (v32)
    {
      goto LABEL_28;
    }

LABEL_35:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_40;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_40;
      }
    }

    if (gBBULogVerbosity < 1)
    {
      goto LABEL_40;
    }

    v26 = (**this)(this);
    v30 = "File not present: %s\n";
    v491 = "sequencer_ram.elf";
    v31 = 1;
    goto LABEL_39;
  }

  if (!v22)
  {
    goto LABEL_35;
  }

LABEL_28:
  HIBYTE(__p.st_gid) = 17;
  LOWORD(__p.st_uid) = 102;
  *&__p.st_dev = v493;
  DataSource = BBUEURUpdateSource::createDataSource(this, &__p, 0);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    operator delete(*&__p.st_dev);
  }

  v24 = operator new(0x20uLL);
  *v24 = &unk_1F5F014B0;
  v24[1] = DataSource;
  v24[2] = 0;
  *(v24 + 6) = 0;
  v25 = operator new(0x90uLL);
  BBUELFHeader::BBUELFHeader(v25, DataSource, 0);
  v24[2] = v25;
  *v24 = &unk_1F5EFFD50;
  *(this + 22) = v24;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_32;
  }

  dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
  {
LABEL_32:
    if (gBBULogVerbosity < 0)
    {
      goto LABEL_40;
    }

    v26 = (**this)(this);
    v30 = "Loaded SequencerRam\n";
    v31 = 0;
LABEL_39:
    _BBULog(3, v31, v26, "", v30, v27, v28, v29, v491);
  }

LABEL_40:
  *&__p.st_dev = operator new(0x20uLL);
  v493 = xmmword_1E5390FE0;
  *&__p.st_ino = xmmword_1E5390FE0;
  strcpy(*&__p.st_dev, "signed_firmware_soc_view.elf");
  qmemcpy(v492, "are_soc_view.elfsigned_firmware_", sizeof(v492));
  v33 = BBUEURUpdateSource::containsFile(this, &__p);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    v44 = v33;
    operator delete(*&__p.st_dev);
    if (v44)
    {
      goto LABEL_42;
    }

LABEL_49:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_54;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_54;
      }
    }

    if (gBBULogVerbosity < 1)
    {
      goto LABEL_54;
    }

    v38 = (**this)(this);
    v42 = "File not present: %s\n";
    v491 = "signed_firmware_soc_view.elf";
    v43 = 1;
    goto LABEL_53;
  }

  if (!v33)
  {
    goto LABEL_49;
  }

LABEL_42:
  v34 = operator new(0x20uLL);
  *&__p.st_dev = v34;
  *&__p.st_ino = v493;
  *v34 = v492[1];
  *(v34 + 12) = v492[0];
  v34[28] = 0;
  v35 = BBUEURUpdateSource::createDataSource(this, &__p, 0);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    operator delete(*&__p.st_dev);
  }

  v36 = operator new(0x20uLL);
  *v36 = &unk_1F5F014B0;
  v36[1] = v35;
  v36[2] = 0;
  *(v36 + 6) = 0;
  v37 = operator new(0x90uLL);
  BBUELFHeader::BBUELFHeader(v37, v35, 0);
  v36[2] = v37;
  *v36 = &unk_1F5EFFDC0;
  *(this + 23) = v36;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_46;
  }

  dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
  {
LABEL_46:
    if (gBBULogVerbosity < 0)
    {
      goto LABEL_54;
    }

    v38 = (**this)(this);
    v42 = "Loaded SignedFirmwareSocView\n";
    v43 = 0;
LABEL_53:
    _BBULog(3, v43, v38, "", v42, v39, v40, v41, v491);
  }

LABEL_54:
  HIBYTE(__p.st_gid) = 17;
  v493 = *"restorexbl_sc.elf";
  strcpy(&__p, "restorexbl_sc.elf");
  v45 = BBUEURUpdateSource::containsFile(this, &__p);
  if ((SHIBYTE(__p.st_gid) & 0x80000000) == 0)
  {
    if (v45)
    {
      goto LABEL_56;
    }

LABEL_64:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_69;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_69;
      }
    }

    if (gBBULogVerbosity < 1)
    {
      goto LABEL_69;
    }

    v49 = (**this)(this);
    v53 = "File not present: %s\n";
    v491 = "restorexbl_sc.elf";
    v54 = 1;
    goto LABEL_68;
  }

  v55 = v45;
  operator delete(*&__p.st_dev);
  if (!v55)
  {
    goto LABEL_64;
  }

LABEL_56:
  if (*(this + 24))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEUR25UpdateSource.cpp", 0x1FCu, "Assertion failure(fRestoreXBLscImage == __null)", v481, v482, v483, v491);
    goto LABEL_769;
  }

  HIBYTE(__p.st_gid) = 17;
  LOWORD(__p.st_uid) = 102;
  *&__p.st_dev = v493;
  v46 = BBUEURUpdateSource::createDataSource(this, &__p, 0);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    operator delete(*&__p.st_dev);
  }

  v47 = operator new(0x38uLL);
  *v47 = &unk_1F5F014B0;
  v47[1] = v46;
  v47[2] = 0;
  *(v47 + 6) = 0;
  v48 = operator new(0x90uLL);
  BBUELFHeader::BBUELFHeader(v48, v46, 0);
  v47[2] = v48;
  *v47 = &unk_1F5EFFE30;
  *(v47 + 13) = 0;
  *(v47 + 44) = 0;
  *(v47 + 10) = 1668500546;
  v47[4] = *"restoreXBLsc";
  *(v47 + 55) = 12;
  *(this + 24) = v47;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_61;
  }

  dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
  {
LABEL_61:
    if (gBBULogVerbosity < 0)
    {
      goto LABEL_69;
    }

    v49 = (**this)(this);
    v53 = "Loaded restoreSBL1\n";
    v54 = 0;
LABEL_68:
    _BBULog(3, v54, v49, "", v53, v50, v51, v52, v491);
  }

LABEL_69:
  HIBYTE(__p.st_gid) = 10;
  strcpy(&__p, "xbl_sc.elf");
  v56 = BBUEURUpdateSource::containsFile(this, &__p);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    v66 = v56;
    operator delete(*&__p.st_dev);
    if (v66)
    {
      goto LABEL_71;
    }

LABEL_78:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_83;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_83;
      }
    }

    if (gBBULogVerbosity < 1)
    {
      goto LABEL_83;
    }

    v60 = (**this)(this);
    v64 = "File not present: %s\n";
    v491 = "xbl_sc.elf";
    v65 = 1;
    goto LABEL_82;
  }

  if (!v56)
  {
    goto LABEL_78;
  }

LABEL_71:
  HIBYTE(__p.st_gid) = 10;
  strcpy(&__p, "xbl_sc.elf");
  v57 = BBUEURUpdateSource::createDataSource(this, &__p, 0);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    operator delete(*&__p.st_dev);
  }

  v58 = operator new(0x38uLL);
  *v58 = &unk_1F5F014B0;
  *(v58 + 1) = v57;
  *(v58 + 2) = 0;
  *(v58 + 6) = 0;
  v59 = operator new(0x90uLL);
  BBUELFHeader::BBUELFHeader(v59, v57, 0);
  *(v58 + 2) = v59;
  *v58 = &unk_1F5EFFE30;
  *(v58 + 45) = 0;
  *(v58 + 37) = 0;
  *(v58 + 53) = 0;
  *(v58 + 8) = 1934377560;
  v58[36] = 99;
  v58[55] = 5;
  *(this + 25) = v58;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_75;
  }

  dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
  {
LABEL_75:
    if (gBBULogVerbosity < 0)
    {
      goto LABEL_83;
    }

    v60 = (**this)(this);
    v64 = "Loaded XBLs\n";
    v65 = 0;
LABEL_82:
    _BBULog(3, v65, v60, "", v64, v61, v62, v63, v491);
  }

LABEL_83:
  HIBYTE(__p.st_gid) = 8;
  strcpy(&__p, "apps.mbn");
  v67 = BBUEURUpdateSource::containsFile(this, &__p);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    v77 = v67;
    operator delete(*&__p.st_dev);
    if (v77)
    {
      goto LABEL_85;
    }

LABEL_92:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_97;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_97;
      }
    }

    if (gBBULogVerbosity < 1)
    {
      goto LABEL_97;
    }

    v71 = (**this)(this);
    v75 = "File not present: %s\n";
    v491 = "apps.mbn";
    v76 = 1;
    goto LABEL_96;
  }

  if (!v67)
  {
    goto LABEL_92;
  }

LABEL_85:
  HIBYTE(__p.st_gid) = 8;
  strcpy(&__p, "apps.mbn");
  v68 = BBUEURUpdateSource::createDataSource(this, &__p, 0);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    operator delete(*&__p.st_dev);
  }

  v69 = operator new(0x20uLL);
  *v69 = &unk_1F5F014B0;
  v69[1] = v68;
  v69[2] = 0;
  *(v69 + 6) = 0;
  v70 = operator new(0x90uLL);
  BBUELFHeader::BBUELFHeader(v70, v68, 0);
  v69[2] = v70;
  *v69 = &unk_1F5F00210;
  *(this + 26) = v69;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_97;
    }

    goto LABEL_89;
  }

  dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
  {
LABEL_89:
    if (gBBULogVerbosity < 0)
    {
      goto LABEL_97;
    }

    v71 = (**this)(this);
    v75 = "Loaded APPS\n";
    v76 = 0;
LABEL_96:
    _BBULog(3, v76, v71, "", v75, v72, v73, v74, v491);
  }

LABEL_97:
  HIBYTE(__p.st_gid) = 11;
  strcpy(&__p, "qdsp6sw.mbn");
  v78 = BBUEURUpdateSource::containsFile(this, &__p);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    v88 = v78;
    operator delete(*&__p.st_dev);
    if (v88)
    {
      goto LABEL_99;
    }

LABEL_106:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_111;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_111;
      }
    }

    if (gBBULogVerbosity < 1)
    {
      goto LABEL_111;
    }

    v82 = (**this)(this);
    v86 = "File not present: %s\n";
    v491 = "qdsp6sw.mbn";
    v87 = 1;
    goto LABEL_110;
  }

  if (!v78)
  {
    goto LABEL_106;
  }

LABEL_99:
  HIBYTE(__p.st_gid) = 11;
  strcpy(&__p, "qdsp6sw.mbn");
  v79 = BBUEURUpdateSource::createDataSource(this, &__p, 0);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    operator delete(*&__p.st_dev);
  }

  v80 = operator new(0x20uLL);
  *v80 = &unk_1F5F014B0;
  v80[1] = v79;
  v80[2] = 0;
  *(v80 + 6) = 0;
  v81 = operator new(0x90uLL);
  BBUELFHeader::BBUELFHeader(v81, v79, 0);
  v80[2] = v81;
  *v80 = &unk_1F5F00280;
  *(this + 27) = v80;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_103;
  }

  dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
  {
LABEL_103:
    if (gBBULogVerbosity < 0)
    {
      goto LABEL_111;
    }

    v82 = (**this)(this);
    v86 = "Loaded QDSP6SW\n";
    v87 = 0;
LABEL_110:
    _BBULog(3, v87, v82, "", v86, v83, v84, v85, v491);
  }

LABEL_111:
  HIBYTE(__p.st_gid) = 6;
  strcpy(&__p, "tz.mbn");
  v89 = BBUEURUpdateSource::containsFile(this, &__p);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    v99 = v89;
    operator delete(*&__p.st_dev);
    if (v99)
    {
      goto LABEL_113;
    }

LABEL_120:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_125;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_125;
      }
    }

    if (gBBULogVerbosity >= 1)
    {
      v93 = (**this)(this);
      v97 = "File not present: %s\n";
      v491 = "tz.mbn";
      v98 = 1;
      goto LABEL_124;
    }

    goto LABEL_125;
  }

  if (!v89)
  {
    goto LABEL_120;
  }

LABEL_113:
  HIBYTE(__p.st_gid) = 6;
  strcpy(&__p, "tz.mbn");
  v90 = BBUEURUpdateSource::createDataSource(this, &__p, 0);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    operator delete(*&__p.st_dev);
  }

  v91 = operator new(0x20uLL);
  *v91 = &unk_1F5F014B0;
  v91[1] = v90;
  v91[2] = 0;
  *(v91 + 6) = 0;
  v92 = operator new(0x90uLL);
  BBUELFHeader::BBUELFHeader(v92, v90, 0);
  v91[2] = v92;
  *v91 = &unk_1F5F002F0;
  *(this + 28) = v91;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_125;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_125;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v93 = (**this)(this);
    v97 = "Loaded TZ\n";
    v98 = 0;
LABEL_124:
    _BBULog(3, v98, v93, "", v97, v94, v95, v96, v491);
  }

LABEL_125:
  memset(&v495, 170, sizeof(v495));
  pthread_mutex_lock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  v100 = off_1ED944170;
  if (!off_1ED944170)
  {
    v101 = operator new(0x18uLL);
    BBUPartitionManager::BBUPartitionManager(v101);
    v501.__r_.__value_.__r.__words[0] = v101;
    v102 = operator new(0x20uLL);
    *v102 = &unk_1F5F05A00;
    v102[1] = 0;
    v102[2] = 0;
    v102[3] = v101;
    v103 = off_1ED944178;
    off_1ED944170 = v101;
    off_1ED944178 = v102;
    if (v103 && !atomic_fetch_add(&v103->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v103->__on_zero_shared)(v103);
      std::__shared_weak_count::__release_weak(v103);
    }

    v100 = off_1ED944170;
  }

  v104 = off_1ED944178;
  *&__p.st_dev = v100;
  __p.st_ino = off_1ED944178;
  if (off_1ED944178)
  {
    atomic_fetch_add_explicit(off_1ED944178 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  BBUPartitionManager::getBBUFSPath(v100, &v495);
  if (v104 && !atomic_fetch_add(&v104->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v104->__on_zero_shared)(v104);
    std::__shared_weak_count::__release_weak(v104);
  }

  for (i = 0; i != 3; ++i)
  {
    memset(&__p, 170, 24);
    v106 = SHIBYTE(v495.__r_.__value_.__r.__words[2]);
    if ((v495.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v495.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v495.__r_.__value_.__l.__size_;
    }

    v108 = size + 3;
    if (size + 3 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v109 = this;
    if (v108 < 0x17)
    {
      memset(&v500, 0, sizeof(v500));
      v111 = &v500;
      *(&v500.__r_.__value_.__s + 23) = size + 3;
      if (!size)
      {
        goto LABEL_151;
      }
    }

    else
    {
      if ((v108 | 7) == 0x17)
      {
        v110 = 25;
      }

      else
      {
        v110 = (v108 | 7) + 1;
      }

      v111 = operator new(v110);
      v500.__r_.__value_.__l.__size_ = size + 3;
      v500.__r_.__value_.__r.__words[2] = v110 | 0x8000000000000000;
      v500.__r_.__value_.__r.__words[0] = v111;
    }

    if (v106 >= 0)
    {
      v112 = &v495;
    }

    else
    {
      v112 = v495.__r_.__value_.__r.__words[0];
    }

    memmove(v111, v112, size);
LABEL_151:
    v113 = &unk_1ED949000;
    *&v111[size] = 7562853;
    std::to_string(&v497, i + 1);
    if ((v497.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v114 = &v497;
    }

    else
    {
      v114 = v497.__r_.__value_.__r.__words[0];
    }

    if ((v497.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v115 = HIBYTE(v497.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v115 = v497.__r_.__value_.__l.__size_;
    }

    v116 = std::string::append(&v500, v114, v115);
    this = v109;
    v117 = *&v116->__r_.__value_.__l.__data_;
    v501.__r_.__value_.__r.__words[2] = v116->__r_.__value_.__r.__words[2];
    *&v501.__r_.__value_.__l.__data_ = v117;
    v116->__r_.__value_.__l.__size_ = 0;
    v116->__r_.__value_.__r.__words[2] = 0;
    v116->__r_.__value_.__r.__words[0] = 0;
    v118 = SHIBYTE(v501.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v501.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
    {
      if ((SHIBYTE(v501.__r_.__value_.__r.__words[2]) - 19) < 4)
      {
        v119 = SHIBYTE(v501.__r_.__value_.__r.__words[2]) + 4;
        v120 = &v501;
        v121 = 22;
LABEL_163:
        v122 = 2 * v121;
        if (v119 > 2 * v121)
        {
          v122 = v119;
        }

        if ((v122 | 7) == 0x17)
        {
          v123 = 25;
        }

        else
        {
          v123 = (v122 | 7) + 1;
        }

        if (v122 >= 0x17)
        {
          v124 = v123;
        }

        else
        {
          v124 = 23;
        }

        v125 = v121 == 22;
        goto LABEL_172;
      }

      v129 = &v501;
      *(&v501.__r_.__value_.__l.__data_ + SHIBYTE(v501.__r_.__value_.__r.__words[2])) = 1852400174;
      v130 = v118 + 4;
      if ((SHIBYTE(v501.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_178;
      }

      goto LABEL_180;
    }

    v118 = v501.__r_.__value_.__l.__size_;
    v121 = (v501.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v121 - v501.__r_.__value_.__l.__size_ >= 4)
    {
      v129 = v501.__r_.__value_.__r.__words[0];
      *(v501.__r_.__value_.__r.__words[0] + v501.__r_.__value_.__l.__size_) = 1852400174;
      v130 = v118 + 4;
      if ((SHIBYTE(v501.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_178:
        *(&v501.__r_.__value_.__s + 23) = v130 & 0x7F;
LABEL_181:
        v128 = v129 + v130;
        goto LABEL_182;
      }

LABEL_180:
      v501.__r_.__value_.__l.__size_ = v130;
      goto LABEL_181;
    }

    v119 = v501.__r_.__value_.__l.__size_ + 4;
    if (0x7FFFFFFFFFFFFFF7 - (v501.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < v501.__r_.__value_.__l.__size_ + 4 - v121)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v120 = v501.__r_.__value_.__r.__words[0];
    if (v121 < 0x3FFFFFFFFFFFFFF3)
    {
      goto LABEL_163;
    }

    v125 = 0;
    v124 = 0x7FFFFFFFFFFFFFF7;
LABEL_172:
    v126 = operator new(v124);
    v127 = v126;
    if (v118)
    {
      memmove(v126, v120, v118);
    }

    *(v127 + v118) = 1852400174;
    if (!v125)
    {
      operator delete(v120);
    }

    v501.__r_.__value_.__l.__size_ = v119;
    v501.__r_.__value_.__r.__words[2] = v124 | 0x8000000000000000;
    v501.__r_.__value_.__r.__words[0] = v127;
    v128 = (v127 + v119);
    this = v109;
    v113 = &unk_1ED949000;
LABEL_182:
    *v128 = 0;
    *&__p.st_dev = *&v501.__r_.__value_.__l.__data_;
    *&__p.st_uid = *(&v501.__r_.__value_.__l + 2);
    memset(&v501, 0, sizeof(v501));
    if (SHIBYTE(v497.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v497.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v500.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_184;
      }
    }

    else if ((SHIBYTE(v500.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_184;
    }

    operator delete(v500.__r_.__value_.__l.__data_);
LABEL_184:
    v131 = operator new(0x30uLL);
    *v131 = &unk_1F5F00F28;
    *(v131 + 8) = 0u;
    *(v131 + 24) = 0u;
    v132 = BBUFileDataSource::init(v131, &__p, 0);
    v133 = *v131;
    if (!v132)
    {
      if ((*(v133 + 24))(v131) >= 0x29)
      {
        v135 = operator new(0x58uLL);
        BBUEUREFSImage::BBUEUREFSImage(v135, v131, i + 1, 0);
        v136 = (*(*v131 + 24))(v131);
        v137 = (*(*v135 + 72))(v135, v136);
        (*(*v135 + 8))(v135);
        if (v137)
        {
          v131 = operator new(0x30uLL);
          *v131 = &unk_1F5F00F28;
          *(v131 + 8) = 0u;
          *(v131 + 24) = 0u;
          if (BBUFileDataSource::init(v131, &__p, 0))
          {
            (*(*v131 + 8))(v131);
            v131 = 0;
          }

          v134 = 1;
          goto LABEL_196;
        }

        v131 = 0;
      }

      v134 = 0;
LABEL_196:
      BBUFeedback::handleComment(*(this + 1), "EFS file verify status: %d", v134);
      goto LABEL_197;
    }

    (*(v133 + 8))(v131);
    v131 = 0;
    v134 = 1;
LABEL_197:
    if (i | v131 && v134)
    {
      if (!v131)
      {
        goto LABEL_220;
      }
    }

    else
    {
      memset(&v501, 170, sizeof(v501));
      if (v131)
      {
        v138 = (*(*v131 + 24))(v131);
        std::to_string(&v501, v138);
        v139 = &__p;
        if ((__p.st_gid & 0x80000000) != 0)
        {
          v139 = *&__p.st_dev;
        }

        v140 = &v501;
        if ((v501.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v140 = v501.__r_.__value_.__r.__words[0];
        }
      }

      else
      {
        *(&v501.__r_.__value_.__s + 23) = 4;
        strcpy(&v501, "NULL");
        v139 = &__p;
        if ((__p.st_gid & 0x80000000) != 0)
        {
          v139 = *&__p.st_dev;
        }

        v140 = &v501;
      }

      BBUFeedback::handleComment(*(this + 1), "Failed to load %s (size %s), creating empty file (size %u)", v139, v140, 0x100000);
      if (v131)
      {
        (*(*v131 + 8))(v131);
      }

      if (BBUScratchFile::createWithFile(&__p, 0x100000))
      {
        v475 = __cxa_allocate_exception(0x210uLL);
        v473 = v475;
        v479 = &__p;
        if ((__p.st_gid & 0x80000000) != 0)
        {
          LOBYTE(v479) = __p.st_dev;
        }

        _BBUException::_BBUException(v475, 104, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEUR25UpdateSource.cpp", 0x265u, "Failed to create scratch %s (%d)", v476, v477, v478, v479);
LABEL_764:
      }

      v131 = operator new(0x30uLL);
      *v131 = &unk_1F5F00F28;
      *(v131 + 8) = 0u;
      *(v131 + 24) = 0u;
      if (BBUFileDataSource::init(v131, &__p, 0))
      {
        (*(*v131 + 8))(v131);
        v469 = __cxa_allocate_exception(0x210uLL);
        v473 = v469;
        v474 = &__p;
        if ((__p.st_gid & 0x80000000) != 0)
        {
          LOBYTE(v474) = __p.st_dev;
        }

        _BBUException::_BBUException(v469, 104, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEUR25UpdateSource.cpp", 0x268u, "Failed to create data source from fresh scratch file %s (%d)", v470, v471, v472, v474);
        goto LABEL_764;
      }

      if (SHIBYTE(v501.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v501.__r_.__value_.__l.__data_);
      }
    }

    v141 = operator new(0x58uLL);
    BBUEUREFSImage::BBUEUREFSImage(v141, v131, i + 1, 0);
    *(*(this + 29) + 8 * i) = v141;
    if (v113[396] == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_220;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_220;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v142 = (**this)(this);
      _BBULog(3, 0, v142, "", "Loaded EFS%u\n", v143, v144, v145, i + 1);
    }

LABEL_220:
    if (SHIBYTE(__p.st_gid) < 0)
    {
      operator delete(*&__p.st_dev);
    }
  }

  HIBYTE(__p.st_gid) = 8;
  strcpy(&__p, "acdb.mbn");
  v146 = BBUEURUpdateSource::containsFile(this, &__p);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    v153 = v146;
    operator delete(*&__p.st_dev);
    if (!v153)
    {
      goto LABEL_233;
    }

LABEL_226:
    HIBYTE(__p.st_gid) = 8;
    strcpy(&__p, "acdb.mbn");
    v147 = BBUEURUpdateSource::createDataSource(this, &__p, 0);
    if (SHIBYTE(__p.st_gid) < 0)
    {
      operator delete(*&__p.st_dev);
    }

    v148 = operator new(0x40uLL);
    BBUEURMIImage::BBUEURMIImage(v148, v147, 0);
    *v148 = &unk_1F5F00360;
    *(this + 32) = v148;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_237;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_237;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v149 = (**this)(this);
      _BBULog(3, 0, v149, "", "Loaded ACDB\n", v150, v151, v152, v491);
    }
  }

  else
  {
    if (v146)
    {
      goto LABEL_226;
    }

LABEL_233:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
LABEL_235:
        if (gBBULogVerbosity >= 1)
        {
          v154 = (**this)(this);
          _BBULog(3, 1, v154, "", "File not present: %s\n", v155, v156, v157, "acdb.mbn");
        }
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
        goto LABEL_235;
      }
    }
  }

LABEL_237:
  HIBYTE(__p.st_gid) = 9;
  strcpy(&__p, "bbcfg.mbn");
  v158 = BBUEURUpdateSource::containsFile(this, &__p);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    v165 = v158;
    operator delete(*&__p.st_dev);
    if (!v165)
    {
      goto LABEL_246;
    }

LABEL_239:
    HIBYTE(__p.st_gid) = 9;
    strcpy(&__p, "bbcfg.mbn");
    v159 = BBUEURUpdateSource::createDataSource(this, &__p, 0);
    if (SHIBYTE(__p.st_gid) < 0)
    {
      operator delete(*&__p.st_dev);
    }

    v160 = operator new(0x40uLL);
    BBUEURMIImage::BBUEURMIImage(v160, v159, 0);
    *v160 = &unk_1F5F003D8;
    *(this + 33) = v160;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_250;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_250;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v161 = (**this)(this);
      _BBULog(3, 0, v161, "", "Loaded BBCFG\n", v162, v163, v164, v491);
    }
  }

  else
  {
    if (v158)
    {
      goto LABEL_239;
    }

LABEL_246:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
LABEL_248:
        if (gBBULogVerbosity >= 1)
        {
          v166 = (**this)(this);
          _BBULog(3, 1, v166, "", "File not present: %s\n", v167, v168, v169, "bbcfg.mbn");
        }
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
        goto LABEL_248;
      }
    }
  }

LABEL_250:
  HIBYTE(__p.st_gid) = 8;
  strcpy(&__p, "apdp.mbn");
  v170 = BBUEURUpdateSource::containsFile(this, &__p);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    v178 = v170;
    operator delete(*&__p.st_dev);
    if (!v178)
    {
      goto LABEL_259;
    }

LABEL_252:
    HIBYTE(__p.st_gid) = 8;
    strcpy(&__p, "apdp.mbn");
    v171 = BBUEURUpdateSource::createDataSource(this, &__p, 0);
    if (SHIBYTE(__p.st_gid) < 0)
    {
      operator delete(*&__p.st_dev);
    }

    v172 = operator new(0x20uLL);
    *v172 = &unk_1F5F014B0;
    v172[1] = v171;
    v172[2] = 0;
    *(v172 + 6) = 0;
    v173 = operator new(0x90uLL);
    BBUELFHeader::BBUELFHeader(v173, v171, 0);
    v172[2] = v173;
    *v172 = &unk_1F5F00450;
    *(this + 34) = v172;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_263;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_263;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v174 = (**this)(this);
      _BBULog(3, 0, v174, "", "Loaded APDP\n", v175, v176, v177, v491);
    }
  }

  else
  {
    if (v170)
    {
      goto LABEL_252;
    }

LABEL_259:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
LABEL_261:
        if (gBBULogVerbosity >= 1)
        {
          v179 = (**this)(this);
          _BBULog(3, 1, v179, "", "File not present: %s\n", v180, v181, v182, "apdp.mbn");
        }
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
        goto LABEL_261;
      }
    }
  }

LABEL_263:
  HIBYTE(__p.st_gid) = 10;
  strcpy(&__p, "devcfg.mbn");
  v183 = BBUEURUpdateSource::containsFile(this, &__p);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    v191 = v183;
    operator delete(*&__p.st_dev);
    if (!v191)
    {
      goto LABEL_272;
    }

LABEL_265:
    HIBYTE(__p.st_gid) = 10;
    strcpy(&__p, "devcfg.mbn");
    v184 = BBUEURUpdateSource::createDataSource(this, &__p, 0);
    if (SHIBYTE(__p.st_gid) < 0)
    {
      operator delete(*&__p.st_dev);
    }

    v185 = operator new(0x20uLL);
    *v185 = &unk_1F5F014B0;
    v185[1] = v184;
    v185[2] = 0;
    *(v185 + 6) = 0;
    v186 = operator new(0x90uLL);
    BBUELFHeader::BBUELFHeader(v186, v184, 0);
    v185[2] = v186;
    *v185 = &unk_1F5F004C0;
    *(this + 35) = v185;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_276;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_276;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v187 = (**this)(this);
      _BBULog(3, 0, v187, "", "Loaded DEVCFG\n", v188, v189, v190, v491);
    }
  }

  else
  {
    if (v183)
    {
      goto LABEL_265;
    }

LABEL_272:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
LABEL_274:
        if (gBBULogVerbosity >= 1)
        {
          v192 = (**this)(this);
          _BBULog(3, 1, v192, "", "File not present: %s\n", v193, v194, v195, "devcfg.mbn");
        }
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
        goto LABEL_274;
      }
    }
  }

LABEL_276:
  HIBYTE(__p.st_gid) = 7;
  strcpy(&__p, "hyp.mbn");
  v196 = BBUEURUpdateSource::containsFile(this, &__p);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    v204 = v196;
    operator delete(*&__p.st_dev);
    if (!v204)
    {
      goto LABEL_285;
    }

LABEL_278:
    HIBYTE(__p.st_gid) = 7;
    strcpy(&__p, "hyp.mbn");
    v197 = BBUEURUpdateSource::createDataSource(this, &__p, 0);
    if (SHIBYTE(__p.st_gid) < 0)
    {
      operator delete(*&__p.st_dev);
    }

    v198 = operator new(0x20uLL);
    *v198 = &unk_1F5F014B0;
    v198[1] = v197;
    v198[2] = 0;
    *(v198 + 6) = 0;
    v199 = operator new(0x90uLL);
    BBUELFHeader::BBUELFHeader(v199, v197, 0);
    v198[2] = v199;
    *v198 = &unk_1F5F00530;
    *(this + 36) = v198;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_289;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_289;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v200 = (**this)(this);
      _BBULog(3, 0, v200, "", "Loaded HYP\n", v201, v202, v203, v491);
    }
  }

  else
  {
    if (v196)
    {
      goto LABEL_278;
    }

LABEL_285:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
LABEL_287:
        if (gBBULogVerbosity >= 1)
        {
          v205 = (**this)(this);
          _BBULog(3, 1, v205, "", "File not present: %s\n", v206, v207, v208, "hyp.mbn");
        }
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
        goto LABEL_287;
      }
    }
  }

LABEL_289:
  HIBYTE(__p.st_gid) = 7;
  strcpy(&__p, "aop.mbn");
  v209 = BBUEURUpdateSource::containsFile(this, &__p);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    v217 = v209;
    operator delete(*&__p.st_dev);
    if (!v217)
    {
      goto LABEL_298;
    }

LABEL_291:
    HIBYTE(__p.st_gid) = 7;
    strcpy(&__p, "aop.mbn");
    v210 = BBUEURUpdateSource::createDataSource(this, &__p, 0);
    if (SHIBYTE(__p.st_gid) < 0)
    {
      operator delete(*&__p.st_dev);
    }

    v211 = operator new(0x20uLL);
    *v211 = &unk_1F5F014B0;
    v211[1] = v210;
    v211[2] = 0;
    *(v211 + 6) = 0;
    v212 = operator new(0x90uLL);
    BBUELFHeader::BBUELFHeader(v212, v210, 0);
    v211[2] = v212;
    *v211 = &unk_1F5F005A0;
    *(this + 37) = v211;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_302;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_302;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v213 = (**this)(this);
      _BBULog(3, 0, v213, "", "Loaded AOP\n", v214, v215, v216, v491);
    }
  }

  else
  {
    if (v209)
    {
      goto LABEL_291;
    }

LABEL_298:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
LABEL_300:
        if (gBBULogVerbosity >= 1)
        {
          v218 = (**this)(this);
          _BBULog(3, 1, v218, "", "File not present: %s\n", v219, v220, v221, "aop.mbn");
        }
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
        goto LABEL_300;
      }
    }
  }

LABEL_302:
  memset(v494, 170, sizeof(v494));
  v222 = SHIBYTE(v495.__r_.__value_.__r.__words[2]);
  if ((v495.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v223 = HIBYTE(v495.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v223 = v495.__r_.__value_.__l.__size_;
  }

  v224 = v223 + 1;
  if (v223 + 1 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v224 < 0x17)
  {
    memset(&__p, 0, 24);
    v226 = &__p;
    HIBYTE(__p.st_gid) = v223 + 1;
    if (v223)
    {
      goto LABEL_312;
    }
  }

  else
  {
    if ((v224 | 7) == 0x17)
    {
      v225 = 25;
    }

    else
    {
      v225 = (v224 | 7) + 1;
    }

    v226 = operator new(v225);
    __p.st_ino = v223 + 1;
    *&__p.st_uid = v225 | 0x8000000000000000;
    *&__p.st_dev = v226;
LABEL_312:
    if (v222 >= 0)
    {
      v227 = &v495;
    }

    else
    {
      v227 = v495.__r_.__value_.__r.__words[0];
    }

    memmove(v226, v227, v223);
  }

  *(&v226->st_dev + v223) = 47;
  st_gid_high = SHIBYTE(__p.st_gid);
  if ((SHIBYTE(__p.st_gid) & 0x8000000000000000) != 0)
  {
    st_gid_high = __p.st_ino;
    v231 = (*&__p.st_uid & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v231 - __p.st_ino >= 0xA)
    {
      v241 = *&__p.st_dev;
      goto LABEL_338;
    }

    v229 = __p.st_ino + 10;
    if (0x7FFFFFFFFFFFFFF7 - (*&__p.st_uid & 0x7FFFFFFFFFFFFFFFuLL) < __p.st_ino + 10 - v231)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v230 = *&__p.st_dev;
    if (v231 >= 0x3FFFFFFFFFFFFFF3)
    {
      v235 = 0;
      v234 = 0x7FFFFFFFFFFFFFF7;
    }

    else
    {
LABEL_322:
      v232 = 2 * v231;
      if (v229 > 2 * v231)
      {
        v232 = v229;
      }

      if ((v232 | 7) == 0x17)
      {
        v233 = 25;
      }

      else
      {
        v233 = (v232 | 7) + 1;
      }

      if (v232 >= 0x17)
      {
        v234 = v233;
      }

      else
      {
        v234 = 23;
      }

      v235 = v231 == 22;
    }

    v236 = v234;
    v237 = operator new(v234);
    v238 = v237;
    if (st_gid_high)
    {
      memmove(v237, v230, st_gid_high);
    }

    v239 = &v238[st_gid_high];
    *v239 = *"mdmddr.mbn";
    *(v239 + 4) = 28258;
    if (!v235)
    {
      operator delete(v230);
    }

    __p.st_ino = v229;
    *&__p.st_uid = v236 | 0x8000000000000000;
    *&__p.st_dev = v238;
    v240 = &v238[v229];
  }

  else
  {
    if ((SHIBYTE(__p.st_gid) - 13) < 0xA)
    {
      v229 = SHIBYTE(__p.st_gid) + 10;
      v230 = &__p;
      v231 = 22;
      goto LABEL_322;
    }

    v241 = &__p;
LABEL_338:
    v242 = v241 + st_gid_high;
    *v242 = *"mdmddr.mbn";
    *(v242 + 4) = 28258;
    v243 = st_gid_high + 10;
    if (SHIBYTE(__p.st_gid) < 0)
    {
      __p.st_ino = st_gid_high + 10;
    }

    else
    {
      HIBYTE(__p.st_gid) = v243 & 0x7F;
    }

    v240 = v241 + v243;
  }

  *v240 = 0;
  *v494 = *&__p.st_dev;
  v494[2] = *&__p.st_uid;
  v244 = *&__p.st_dev;
  v245 = SHIBYTE(__p.st_gid);
  v246.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v246.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&__p.st_blksize = v246;
  *__p.st_qspare = v246;
  __p.st_birthtimespec = v246;
  *&__p.st_size = v246;
  __p.st_mtimespec = v246;
  __p.st_ctimespec = v246;
  *&__p.st_uid = v246;
  __p.st_atimespec = v246;
  *&__p.st_dev = v246;
  if (v245 >= 0)
  {
    v247 = v494;
  }

  else
  {
    v247 = v244;
  }

  if (stat(v247, &__p))
  {
    v248 = operator new(0x40uLL);
    v248[2] = 0u;
    v248[3] = 0u;
    *v248 = 0u;
    v248[1] = 0u;
    *v248 = &unk_1F5EFFEA0;
    *(this + 38) = v248;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
LABEL_348:
        if ((gBBULogVerbosity & 0x80000000) == 0)
        {
          v249 = (**this)(this);
          _BBULog(3, 0, v249, "", "created dummy MDMDDR\n", v250, v251, v252, v491);
        }
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
        goto LABEL_348;
      }
    }
  }

  else
  {
    v253 = operator new(0x30uLL);
    *v253 = &unk_1F5F00F28;
    *(v253 + 8) = 0u;
    *(v253 + 24) = 0u;
    if (BBUFileDataSource::init(v253, v494, 0))
    {
      (*(*v253 + 8))(v253);
      v487 = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(v487, 120, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Updater/Eureka/BBUEUR25UpdateSource.cpp", 0x2C0u, "Assertion failure(dataSource && Failed creating data source from file for MDMDDR)", v488, v489, v490, v491);
    }

    v254 = operator new(0x40uLL);
    BBUEURMIImage::BBUEURMIImage(v254, v253, 0);
    *v254 = &unk_1F5EFFEA0;
    *(this + 38) = v254;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_355;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_355;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v255 = (**this)(this);
      _BBULog(3, 0, v255, "", "Loaded MDMDDR\n", v256, v257, v258, v491);
    }
  }

LABEL_355:
  HIBYTE(__p.st_gid) = 15;
  strcpy(&__p, "multi_image.mbn");
  v259 = BBUEURUpdateSource::containsFile(this, &__p);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    v267 = v259;
    operator delete(*&__p.st_dev);
    if (!v267)
    {
      goto LABEL_364;
    }

LABEL_357:
    HIBYTE(__p.st_gid) = 15;
    strcpy(&__p, "multi_image.mbn");
    v260 = BBUEURUpdateSource::createDataSource(this, &__p, 0);
    if (SHIBYTE(__p.st_gid) < 0)
    {
      operator delete(*&__p.st_dev);
    }

    v261 = operator new(0x20uLL);
    *v261 = &unk_1F5F014B0;
    v261[1] = v260;
    v261[2] = 0;
    *(v261 + 6) = 0;
    v262 = operator new(0x90uLL);
    BBUELFHeader::BBUELFHeader(v262, v260, 0);
    v261[2] = v262;
    *v261 = &unk_1F5F00610;
    *(this + 39) = v261;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_368;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_368;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v263 = (**this)(this);
      _BBULog(3, 0, v263, "", "Loaded OEMMisc\n", v264, v265, v266, v491);
    }
  }

  else
  {
    if (v259)
    {
      goto LABEL_357;
    }

LABEL_364:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
LABEL_366:
        if (gBBULogVerbosity >= 1)
        {
          v268 = (**this)(this);
          _BBULog(3, 1, v268, "", "File not present: %s\n", v269, v270, v271, "multi_image.mbn");
        }
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
        goto LABEL_366;
      }
    }
  }

LABEL_368:
  HIBYTE(__p.st_gid) = 19;
  v493 = *"multi_image_qti.mbn";
  strcpy(&__p, "multi_image_qti.mbn");
  v272 = BBUEURUpdateSource::containsFile(this, &__p);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    v280 = v272;
    operator delete(*&__p.st_dev);
    if (!v280)
    {
      goto LABEL_377;
    }

LABEL_370:
    HIBYTE(__p.st_gid) = 19;
    strcpy(&__p.st_ino + 7, ".mbn");
    *&__p.st_dev = v493;
    v273 = BBUEURUpdateSource::createDataSource(this, &__p, 0);
    if (SHIBYTE(__p.st_gid) < 0)
    {
      operator delete(*&__p.st_dev);
    }

    v274 = operator new(0x20uLL);
    *v274 = &unk_1F5F014B0;
    v274[1] = v273;
    v274[2] = 0;
    *(v274 + 6) = 0;
    v275 = operator new(0x90uLL);
    BBUELFHeader::BBUELFHeader(v275, v273, 0);
    v274[2] = v275;
    *v274 = &unk_1F5F00680;
    *(this + 40) = v274;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_381;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_381;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v276 = (**this)(this);
      _BBULog(3, 0, v276, "", "Loaded QTIMisc\n", v277, v278, v279, v491);
    }
  }

  else
  {
    if (v272)
    {
      goto LABEL_370;
    }

LABEL_377:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
LABEL_379:
        if (gBBULogVerbosity >= 1)
        {
          v281 = (**this)(this);
          _BBULog(3, 1, v281, "", "File not present: %s\n", v282, v283, v284, "multi_image_qti.mbn");
        }
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
        goto LABEL_379;
      }
    }
  }

LABEL_381:
  HIBYTE(__p.st_gid) = 11;
  strcpy(&__p, "xbl_cfg.elf");
  v285 = BBUEURUpdateSource::containsFile(this, &__p);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    v293 = v285;
    operator delete(*&__p.st_dev);
    if (!v293)
    {
      goto LABEL_390;
    }

LABEL_383:
    HIBYTE(__p.st_gid) = 11;
    strcpy(&__p, "xbl_cfg.elf");
    v286 = BBUEURUpdateSource::createDataSource(this, &__p, 0);
    if (SHIBYTE(__p.st_gid) < 0)
    {
      operator delete(*&__p.st_dev);
    }

    v287 = operator new(0x20uLL);
    *v287 = &unk_1F5F014B0;
    v287[1] = v286;
    v287[2] = 0;
    *(v287 + 6) = 0;
    v288 = operator new(0x90uLL);
    BBUELFHeader::BBUELFHeader(v288, v286, 0);
    v287[2] = v288;
    *v287 = &unk_1F5F006F0;
    *(this + 41) = v287;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_394;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_394;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v289 = (**this)(this);
      _BBULog(3, 0, v289, "", "Loaded XBL Config\n", v290, v291, v292, v491);
    }
  }

  else
  {
    if (v285)
    {
      goto LABEL_383;
    }

LABEL_390:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
LABEL_392:
        if (gBBULogVerbosity >= 1)
        {
          v294 = (**this)(this);
          _BBULog(3, 1, v294, "", "File not present: %s\n", v295, v296, v297, "xbl_cfg.elf");
        }
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
        goto LABEL_392;
      }
    }
  }

LABEL_394:
  HIBYTE(__p.st_gid) = 8;
  strcpy(&__p, "uefi.elf");
  v298 = BBUEURUpdateSource::containsFile(this, &__p);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    v306 = v298;
    operator delete(*&__p.st_dev);
    if (!v306)
    {
      goto LABEL_403;
    }

LABEL_396:
    HIBYTE(__p.st_gid) = 8;
    strcpy(&__p, "uefi.elf");
    v299 = BBUEURUpdateSource::createDataSource(this, &__p, 0);
    if (SHIBYTE(__p.st_gid) < 0)
    {
      operator delete(*&__p.st_dev);
    }

    v300 = operator new(0x20uLL);
    *v300 = &unk_1F5F014B0;
    v300[1] = v299;
    v300[2] = 0;
    *(v300 + 6) = 0;
    v301 = operator new(0x90uLL);
    BBUELFHeader::BBUELFHeader(v301, v299, 0);
    v300[2] = v301;
    *v300 = &unk_1F5F00760;
    *(this + 42) = v300;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_407;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_407;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v302 = (**this)(this);
      _BBULog(3, 0, v302, "", "Loaded UEFI\n", v303, v304, v305, v491);
    }
  }

  else
  {
    if (v298)
    {
      goto LABEL_396;
    }

LABEL_403:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
LABEL_405:
        if (gBBULogVerbosity >= 1)
        {
          v307 = (**this)(this);
          _BBULog(3, 1, v307, "", "File not present: %s\n", v308, v309, v310, "uefi.elf");
        }
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
        goto LABEL_405;
      }
    }
  }

LABEL_407:
  HIBYTE(__p.st_gid) = 15;
  strcpy(&__p, "xbl_support.elf");
  v311 = BBUEURUpdateSource::containsFile(this, &__p);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    v319 = v311;
    operator delete(*&__p.st_dev);
    if (!v319)
    {
      goto LABEL_416;
    }

LABEL_409:
    HIBYTE(__p.st_gid) = 15;
    strcpy(&__p, "xbl_support.elf");
    v312 = BBUEURUpdateSource::createDataSource(this, &__p, 0);
    if (SHIBYTE(__p.st_gid) < 0)
    {
      operator delete(*&__p.st_dev);
    }

    v313 = operator new(0x20uLL);
    *v313 = &unk_1F5F014B0;
    v313[1] = v312;
    v313[2] = 0;
    *(v313 + 6) = 0;
    v314 = operator new(0x90uLL);
    BBUELFHeader::BBUELFHeader(v314, v312, 0);
    v313[2] = v314;
    *v313 = &unk_1F5F007D0;
    *(this + 43) = v313;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_420;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_420;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v315 = (**this)(this);
      _BBULog(3, 0, v315, "", "Loaded XBL Support\n", v316, v317, v318, v491);
    }
  }

  else
  {
    if (v311)
    {
      goto LABEL_409;
    }

LABEL_416:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
LABEL_418:
        if (gBBULogVerbosity >= 1)
        {
          v320 = (**this)(this);
          _BBULog(3, 1, v320, "", "File not present: %s\n", v321, v322, v323, "xbl_support.elf");
        }
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
        goto LABEL_418;
      }
    }
  }

LABEL_420:
  HIBYTE(__p.st_gid) = 8;
  strcpy(&__p, "shrm.elf");
  v324 = BBUEURUpdateSource::containsFile(this, &__p);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    v332 = v324;
    operator delete(*&__p.st_dev);
    if (!v332)
    {
      goto LABEL_429;
    }

LABEL_422:
    HIBYTE(__p.st_gid) = 8;
    strcpy(&__p, "shrm.elf");
    v325 = BBUEURUpdateSource::createDataSource(this, &__p, 0);
    if (SHIBYTE(__p.st_gid) < 0)
    {
      operator delete(*&__p.st_dev);
    }

    v326 = operator new(0x20uLL);
    *v326 = &unk_1F5F014B0;
    v326[1] = v325;
    v326[2] = 0;
    *(v326 + 6) = 0;
    v327 = operator new(0x90uLL);
    BBUELFHeader::BBUELFHeader(v327, v325, 0);
    v326[2] = v327;
    *v326 = &unk_1F5EFFF18;
    *(this + 44) = v326;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_433;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_433;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v328 = (**this)(this);
      _BBULog(3, 0, v328, "", "Loaded SHRM\n", v329, v330, v331, v491);
    }
  }

  else
  {
    if (v324)
    {
      goto LABEL_422;
    }

LABEL_429:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
LABEL_431:
        if (gBBULogVerbosity >= 1)
        {
          v333 = (**this)(this);
          _BBULog(3, 1, v333, "", "File not present: %s\n", v334, v335, v336, "shrm.elf");
        }
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
        goto LABEL_431;
      }
    }
  }

LABEL_433:
  HIBYTE(__p.st_gid) = 9;
  strcpy(&__p, "cpucp.elf");
  v337 = BBUEURUpdateSource::containsFile(this, &__p);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    v345 = v337;
    operator delete(*&__p.st_dev);
    if (!v345)
    {
      goto LABEL_442;
    }

LABEL_435:
    HIBYTE(__p.st_gid) = 9;
    strcpy(&__p, "cpucp.elf");
    v338 = BBUEURUpdateSource::createDataSource(this, &__p, 0);
    if (SHIBYTE(__p.st_gid) < 0)
    {
      operator delete(*&__p.st_dev);
    }

    v339 = operator new(0x20uLL);
    *v339 = &unk_1F5F014B0;
    v339[1] = v338;
    v339[2] = 0;
    *(v339 + 6) = 0;
    v340 = operator new(0x90uLL);
    BBUELFHeader::BBUELFHeader(v340, v338, 0);
    v339[2] = v340;
    *v339 = &unk_1F5EFFF88;
    *(this + 45) = v339;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_446;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_446;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v341 = (**this)(this);
      _BBULog(3, 0, v341, "", "Loaded CPUCP\n", v342, v343, v344, v491);
    }
  }

  else
  {
    if (v337)
    {
      goto LABEL_435;
    }

LABEL_442:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
LABEL_444:
        if (gBBULogVerbosity >= 1)
        {
          v346 = (**this)(this);
          _BBULog(3, 1, v346, "", "File not present: %s\n", v347, v348, v349, "cpucp.elf");
        }
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
        goto LABEL_444;
      }
    }
  }

LABEL_446:
  HIBYTE(__p.st_gid) = 14;
  strcpy(&__p, "aop_devcfg.mbn");
  v350 = BBUEURUpdateSource::containsFile(this, &__p);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    v358 = v350;
    operator delete(*&__p.st_dev);
    if (!v358)
    {
      goto LABEL_455;
    }

LABEL_448:
    HIBYTE(__p.st_gid) = 14;
    strcpy(&__p, "aop_devcfg.mbn");
    v351 = BBUEURUpdateSource::createDataSource(this, &__p, 0);
    if (SHIBYTE(__p.st_gid) < 0)
    {
      operator delete(*&__p.st_dev);
    }

    v352 = operator new(0x20uLL);
    *v352 = &unk_1F5F014B0;
    v352[1] = v351;
    v352[2] = 0;
    *(v352 + 6) = 0;
    v353 = operator new(0x90uLL);
    BBUELFHeader::BBUELFHeader(v353, v351, 0);
    v352[2] = v353;
    *v352 = &unk_1F5EFFFF8;
    *(this + 46) = v352;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_459;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_459;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v354 = (**this)(this);
      _BBULog(3, 0, v354, "", "Loaded AOPDevCfg\n", v355, v356, v357, v491);
    }
  }

  else
  {
    if (v350)
    {
      goto LABEL_448;
    }

LABEL_455:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
LABEL_457:
        if (gBBULogVerbosity >= 1)
        {
          v359 = (**this)(this);
          _BBULog(3, 1, v359, "", "File not present: %s\n", v360, v361, v362, "aop_devcfg.mbn");
        }
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
        goto LABEL_457;
      }
    }
  }

LABEL_459:
  HIBYTE(__p.st_gid) = 16;
  v493 = *"qdsp6sw_dtbs.elf";
  strcpy(&__p, "qdsp6sw_dtbs.elf");
  v363 = BBUEURUpdateSource::containsFile(this, &__p);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    v371 = v363;
    operator delete(*&__p.st_dev);
    if (!v371)
    {
      goto LABEL_468;
    }

LABEL_461:
    HIBYTE(__p.st_gid) = 16;
    *&__p.st_dev = v493;
    LOBYTE(__p.st_uid) = 0;
    v364 = BBUEURUpdateSource::createDataSource(this, &__p, 0);
    if (SHIBYTE(__p.st_gid) < 0)
    {
      operator delete(*&__p.st_dev);
    }

    v365 = operator new(0x20uLL);
    *v365 = &unk_1F5F014B0;
    v365[1] = v364;
    v365[2] = 0;
    *(v365 + 6) = 0;
    v366 = operator new(0x90uLL);
    BBUELFHeader::BBUELFHeader(v366, v364, 0);
    v365[2] = v366;
    *v365 = &unk_1F5F00068;
    *(this + 47) = v365;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_472;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_472;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v367 = (**this)(this);
      _BBULog(3, 0, v367, "", "Loaded Qdsp6SwDtbs\n", v368, v369, v370, v491);
    }
  }

  else
  {
    if (v363)
    {
      goto LABEL_461;
    }

LABEL_468:
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
LABEL_470:
        if (gBBULogVerbosity >= 1)
        {
          v372 = (**this)(this);
          _BBULog(3, 1, v372, "", "File not present: %s\n", v373, v374, v375, "qdsp6sw_dtbs.elf");
        }
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
        goto LABEL_470;
      }
    }
  }

LABEL_472:
  HIBYTE(__p.st_gid) = 11;
  strcpy(&__p, "qupv3fw.elf");
  v376 = BBUEURUpdateSource::containsFile(this, &__p);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    v385 = v376;
    operator delete(*&__p.st_dev);
    if (!v385)
    {
      goto LABEL_481;
    }

LABEL_474:
    HIBYTE(__p.st_gid) = 11;
    strcpy(&__p, "qupv3fw.elf");
    v377 = BBUEURUpdateSource::createDataSource(this, &__p, 0);
    if (SHIBYTE(__p.st_gid) < 0)
    {
      operator delete(*&__p.st_dev);
    }

    v378 = &unk_1ED949000;
    v379 = operator new(0x20uLL);
    *v379 = &unk_1F5F014B0;
    v379[1] = v377;
    v379[2] = 0;
    *(v379 + 6) = 0;
    v380 = operator new(0x90uLL);
    BBUELFHeader::BBUELFHeader(v380, v377, 0);
    v379[2] = v380;
    *v379 = &unk_1F5F000D8;
    *(this + 48) = v379;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_485;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_485;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v381 = (**this)(this);
      _BBULog(3, 0, v381, "", "Loaded Qupv3Fw\n", v382, v383, v384, v491);
    }
  }

  else
  {
    if (v376)
    {
      goto LABEL_474;
    }

LABEL_481:
    v378 = &unk_1ED949000;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
LABEL_483:
        if (gBBULogVerbosity >= 1)
        {
          v386 = (**this)(this);
          _BBULog(3, 1, v386, "", "File not present: %s\n", v387, v388, v389, "qupv3fw.elf");
        }
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
        goto LABEL_483;
      }
    }
  }

LABEL_485:
  if (BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS == -1)
  {
    if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
    {
      goto LABEL_487;
    }

LABEL_620:
    dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS, &__block_literal_global_13);
    if (BBUpdaterCommon::inRestoreOS(void)::restoreOS)
    {
      goto LABEL_621;
    }

LABEL_488:
    if (BBUpdaterCommon::inRestoreOS(void)::recoveryOS)
    {
      goto LABEL_621;
    }

    memset(&__p, 0, 24);
    memset(&v501, 0, sizeof(v501));
    v500.__r_.__value_.__l.__size_ = 0xAAAAAAAAAAAAAAAALL;
    v500.__r_.__value_.__r.__words[2] = 0xAAAAAAAAAAAAAALL;
    v500.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAA00;
    pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
    v390 = off_1ECFD4E60;
    if (!off_1ECFD4E60)
    {
      SharedData::create_default_global(&v497);
      v391 = *&v497.__r_.__value_.__l.__data_;
      *&v497.__r_.__value_.__l.__data_ = 0uLL;
      v392 = *(&off_1ECFD4E60 + 1);
      off_1ECFD4E60 = v391;
      if (v392 && !atomic_fetch_add(&v392->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v392->__on_zero_shared)(v392);
        std::__shared_weak_count::__release_weak(v392);
      }

      v393 = v497.__r_.__value_.__l.__size_;
      if (v497.__r_.__value_.__l.__size_ && !atomic_fetch_add((v497.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v393->__on_zero_shared)(v393);
        std::__shared_weak_count::__release_weak(v393);
      }

      v390 = off_1ECFD4E60;
    }

    v498 = v390;
    v499 = *(&off_1ECFD4E60 + 1);
    if (*(&off_1ECFD4E60 + 1))
    {
      atomic_fetch_add_explicit((*(&off_1ECFD4E60 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
    v497.__r_.__value_.__r.__words[0] = operator new(0x20uLL);
    *&v497.__r_.__value_.__r.__words[1] = xmmword_1E5390FF0;
    strcpy(v497.__r_.__value_.__l.__data_, "Baseband Mobile Asset PT image");
    os_unfair_lock_lock((v390 + 40));
    if ((v497.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v394 = &v497;
    }

    else
    {
      v394 = v497.__r_.__value_.__r.__words[0];
    }

    ctu::cf::MakeCFString::MakeCFString(v502, v394);
    v395 = (**v390)(v390, v502[0]);
    if (v395)
    {
      ctu::cf::assign();
      CFRelease(v395);
    }

    MEMORY[0x1E6926590](v502);
    os_unfair_lock_unlock((v390 + 40));
    if (SHIBYTE(v497.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v497.__r_.__value_.__l.__data_);
      v396 = v499;
      if (!v499)
      {
        goto LABEL_509;
      }
    }

    else
    {
      v396 = v499;
      if (!v499)
      {
LABEL_509:
        v397 = HIBYTE(v500.__r_.__value_.__r.__words[2]);
        if ((v500.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v397 = v500.__r_.__value_.__l.__size_;
        }

        if (v397)
        {
          goto LABEL_512;
        }

LABEL_518:
        v399 = 0;
LABEL_529:
        *(&v497.__r_.__value_.__s + 23) = 6;
        strcpy(&v497, "pt.mbn");
        v410 = BBUEURUpdateSource::containsFile(this, &v497);
        if ((SHIBYTE(v497.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          if (v410)
          {
            goto LABEL_531;
          }

LABEL_535:
          if (v399)
          {
            (*(*v399 + 8))(v399);
            v412 = 0;
            v399 = 0;
          }

          else
          {
            v412 = 0;
          }

          goto LABEL_552;
        }

        v413 = v410;
        operator delete(v497.__r_.__value_.__l.__data_);
        v414 = v413;
        v378 = &unk_1ED949000;
        if (!v414)
        {
          goto LABEL_535;
        }

LABEL_531:
        *(&v497.__r_.__value_.__s + 23) = 6;
        strcpy(&v497, "pt.mbn");
        v411 = BBUEURUpdateSource::createDataSource(this, &v497, 0);
        v412 = v411;
        if (SHIBYTE(v497.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v497.__r_.__value_.__l.__data_);
          if (!v412)
          {
            goto LABEL_552;
          }
        }

        else if (!v411)
        {
          goto LABEL_552;
        }

        st_ino = HIBYTE(__p.st_gid);
        if ((__p.st_gid & 0x80000000) != 0)
        {
          st_ino = __p.st_ino;
        }

        if (st_ino)
        {
          v416 = (*(*v412 + 24))(v412);
          v417 = operator new[](v416);
          LODWORD(v498) = -1431655766;
          (*(*v412 + 16))(v412, v417, v416, &v498, 0);
          if (v498 == v416)
          {
            getPtImageVersion(v417, v416, v418, v419, v420, &v497);
            if (SHIBYTE(v501.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v501.__r_.__value_.__l.__data_);
            }

            v501 = v497;
            goto LABEL_551;
          }

          if (v378[396] == -1)
          {
            if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
            {
              goto LABEL_549;
            }
          }

          else
          {
            dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
            if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
            {
LABEL_549:
              if (gBBULogVerbosity >= 3)
              {
                v421 = (**this)(this);
                _BBULog(3, 3, v421, "", "PT file (iOS) copied amount is wrong", v422, v423, v424, v491);
              }
            }
          }

LABEL_551:
          operator delete[](v417);
        }

LABEL_552:
        if (v378[396] == -1)
        {
          if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
          {
LABEL_554:
            if (gBBULogVerbosity >= 6)
            {
              v425 = (**this)(this);
              v429 = &__p;
              if ((__p.st_gid & 0x80000000) != 0)
              {
                LOBYTE(v429) = __p.st_dev;
              }

              _BBULog(3, 6, v425, "", "PT version info - MobileAsset[%s] iOS[%s]", v426, v427, v428, v429);
            }
          }
        }

        else
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
          {
            goto LABEL_554;
          }
        }

        v430 = HIBYTE(v501.__r_.__value_.__r.__words[2]);
        if ((v501.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v430 = v501.__r_.__value_.__l.__size_;
        }

        if (v430)
        {
          v431 = HIBYTE(__p.st_gid);
          if ((__p.st_gid & 0x80000000) != 0)
          {
            v431 = __p.st_ino;
          }

          if (v431)
          {
            v497.__r_.__value_.__r.__words[0] = operator new(0x48uLL);
            *&v497.__r_.__value_.__r.__words[1] = xmmword_1E5391000;
            strcpy(v497.__r_.__value_.__l.__data_, "([0-9a-fA-F]{2})([0-9a-fA-F]{2})([0-9a-fA-F]{2})([0-9a-fA-F]{2})");
            v432 = compareVersionString(&v497, &v501, &__p, 1);
            if ((SHIBYTE(v497.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              if (v432 != -1)
              {
                goto LABEL_566;
              }

LABEL_598:
              if (v412)
              {
                (*(*v412 + 8))(v412);
              }

              pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
              v444 = off_1ECFD4E60;
              if (!off_1ECFD4E60)
              {
                SharedData::create_default_global(&v497);
                v445 = *&v497.__r_.__value_.__l.__data_;
                *&v497.__r_.__value_.__l.__data_ = 0uLL;
                v446 = *(&off_1ECFD4E60 + 1);
                off_1ECFD4E60 = v445;
                if (v446 && !atomic_fetch_add(&v446->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v446->__on_zero_shared)(v446);
                  std::__shared_weak_count::__release_weak(v446);
                }

                v447 = v497.__r_.__value_.__l.__size_;
                if (v497.__r_.__value_.__l.__size_ && !atomic_fetch_add((v497.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v447->__on_zero_shared)(v447);
                  std::__shared_weak_count::__release_weak(v447);
                }

                v444 = off_1ECFD4E60;
              }

              v448 = *(&off_1ECFD4E60 + 1);
              v498 = v444;
              v499 = *(&off_1ECFD4E60 + 1);
              if (*(&off_1ECFD4E60 + 1))
              {
                atomic_fetch_add_explicit((*(&off_1ECFD4E60 + 1) + 8), 1uLL, memory_order_relaxed);
              }

              pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
              v497.__r_.__value_.__r.__words[0] = operator new(0x28uLL);
              *&v497.__r_.__value_.__r.__words[1] = xmmword_1E538EBC0;
              strcpy(v497.__r_.__value_.__l.__data_, "Baseband Mobile Asset PT image sent");
              SharedData::setPreference<BOOL>(v444, &v497, 1);
              if (SHIBYTE(v497.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v497.__r_.__value_.__l.__data_);
              }

              if (v448 && !atomic_fetch_add(&v448->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v448->__on_zero_shared)(v448);
                std::__shared_weak_count::__release_weak(v448);
              }

              if (v378[396] == -1)
              {
                if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
                {
LABEL_617:
                  if (gBBULogVerbosity >= 6)
                  {
                    v449 = (**this)(this);
                    _BBULog(3, 6, v449, "", "Load PT from MobileAsset\n", v450, v451, v452, v491);
                  }
                }
              }

              else
              {
                dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
                if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
                {
                  goto LABEL_617;
                }
              }

LABEL_590:
              if (SHIBYTE(v500.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v500.__r_.__value_.__l.__data_);
                if (SHIBYTE(v501.__r_.__value_.__r.__words[2]) < 0)
                {
                  goto LABEL_595;
                }

LABEL_592:
                if (SHIBYTE(__p.st_gid) < 0)
                {
LABEL_596:
                  operator delete(*&__p.st_dev);
                }
              }

              else
              {
                if ((SHIBYTE(v501.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_592;
                }

LABEL_595:
                operator delete(v501.__r_.__value_.__l.__data_);
                if (SHIBYTE(__p.st_gid) < 0)
                {
                  goto LABEL_596;
                }
              }

              goto LABEL_631;
            }

            v442 = v432;
            operator delete(v497.__r_.__value_.__l.__data_);
            v443 = v442;
            v378 = &unk_1ED949000;
            if (v443 == -1)
            {
              goto LABEL_598;
            }
          }
        }

LABEL_566:
        if (!v412)
        {
          v399 = 0;
          goto LABEL_590;
        }

        if (v378[396] == -1)
        {
          if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
          {
LABEL_569:
            if (gBBULogVerbosity >= 6)
            {
              v433 = (**this)(this);
              _BBULog(3, 6, v433, "", "Load PT from iOS\n", v434, v435, v436, v491);
            }
          }
        }

        else
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
          {
            goto LABEL_569;
          }
        }

        pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
        v437 = off_1ECFD4E60;
        if (!off_1ECFD4E60)
        {
          SharedData::create_default_global(&v497);
          v438 = *&v497.__r_.__value_.__l.__data_;
          *&v497.__r_.__value_.__l.__data_ = 0uLL;
          v439 = *(&off_1ECFD4E60 + 1);
          off_1ECFD4E60 = v438;
          if (v439 && !atomic_fetch_add(&v439->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v439->__on_zero_shared)(v439);
            std::__shared_weak_count::__release_weak(v439);
          }

          v440 = v497.__r_.__value_.__l.__size_;
          if (v497.__r_.__value_.__l.__size_ && !atomic_fetch_add((v497.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
          {
            (v440->__on_zero_shared)(v440);
            std::__shared_weak_count::__release_weak(v440);
          }

          v437 = off_1ECFD4E60;
        }

        v441 = *(&off_1ECFD4E60 + 1);
        v498 = v437;
        v499 = *(&off_1ECFD4E60 + 1);
        if (*(&off_1ECFD4E60 + 1))
        {
          atomic_fetch_add_explicit((*(&off_1ECFD4E60 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
        v497.__r_.__value_.__r.__words[0] = operator new(0x28uLL);
        *&v497.__r_.__value_.__r.__words[1] = xmmword_1E538EBC0;
        strcpy(v497.__r_.__value_.__l.__data_, "Baseband Mobile Asset PT image sent");
        SharedData::setPreference<BOOL>(v437, &v497, 0);
        if (SHIBYTE(v497.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v497.__r_.__value_.__l.__data_);
        }

        if (v441 && !atomic_fetch_add(&v441->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v441->__on_zero_shared)(v441);
          std::__shared_weak_count::__release_weak(v441);
        }

        if (v399)
        {
          (*(*v399 + 8))(v399);
        }

        v399 = v412;
        goto LABEL_590;
      }
    }

    if (atomic_fetch_add(&v396->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_509;
    }

    (v396->__on_zero_shared)(v396);
    std::__shared_weak_count::__release_weak(v396);
    v400 = HIBYTE(v500.__r_.__value_.__r.__words[2]);
    if ((v500.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v400 = v500.__r_.__value_.__l.__size_;
    }

    if (!v400)
    {
      goto LABEL_518;
    }

LABEL_512:
    *(&v497.__r_.__value_.__s + 23) = 6;
    strcpy(&v497, "pt.mbn");
    v398 = BBUEURUpdateSource::createDataSourceFromSpecificPath(this, &v500, &v497, 0);
    v399 = v398;
    if (SHIBYTE(v497.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v497.__r_.__value_.__l.__data_);
      if (!v399)
      {
        goto LABEL_529;
      }
    }

    else if (!v398)
    {
      goto LABEL_529;
    }

    v401 = (*(*v399 + 24))(v399);
    v402 = operator new[](v401);
    LODWORD(v498) = -1431655766;
    (*(*v399 + 16))(v399, v402, v401, &v498, 0);
    if (v498 == v401)
    {
      getPtImageVersion(v402, v401, v403, v404, v405, &v497);
      if (SHIBYTE(__p.st_gid) < 0)
      {
        operator delete(*&__p.st_dev);
      }

      *&__p.st_dev = *&v497.__r_.__value_.__l.__data_;
      *&__p.st_uid = *(&v497.__r_.__value_.__l + 2);
      goto LABEL_528;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
        goto LABEL_526;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
LABEL_526:
        if (gBBULogVerbosity >= 3)
        {
          v406 = (**this)(this);
          _BBULog(3, 3, v406, "", "PT file (MobileAsset) copied amount is wrong", v407, v408, v409, v491);
        }
      }
    }

LABEL_528:
    operator delete[](v402);
    goto LABEL_529;
  }

  dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS, &__block_literal_global_7);
  if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS != -1)
  {
    goto LABEL_620;
  }

LABEL_487:
  if ((BBUpdaterCommon::inRestoreOS(void)::restoreOS & 1) == 0)
  {
    goto LABEL_488;
  }

LABEL_621:
  HIBYTE(__p.st_gid) = 6;
  strcpy(&__p, "pt.mbn");
  v453 = BBUEURUpdateSource::containsFile(this, &__p);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    v454 = v453;
    operator delete(*&__p.st_dev);
    v455 = v454;
    v378 = &unk_1ED949000;
    if (!v455)
    {
      goto LABEL_636;
    }
  }

  else if (!v453)
  {
    goto LABEL_636;
  }

  HIBYTE(__p.st_gid) = 6;
  strcpy(&__p, "pt.mbn");
  v399 = BBUEURUpdateSource::createDataSource(this, &__p, 0);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    operator delete(*&__p.st_dev);
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_631;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
    {
      goto LABEL_631;
    }
  }

  if (gBBULogVerbosity >= 6)
  {
    v456 = (**this)(this);
    _BBULog(3, 6, v456, "", "Load PT image from iOS\n", v457, v458, v459, v491);
  }

LABEL_631:
  if (v399)
  {
    v460 = operator new(0x40uLL);
    BBUEURMIImage::BBUEURMIImage(v460, v399, 0);
    *v460 = &unk_1F5F00148;
    *(this + 49) = v460;
    if (v378[396] == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
LABEL_634:
        if ((gBBULogVerbosity & 0x80000000) == 0)
        {
          v461 = (**this)(this);
          _BBULog(3, 0, v461, "", "Loaded PT\n", v462, v463, v464, v491);
        }
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
      {
        goto LABEL_634;
      }
    }
  }

  else
  {
LABEL_636:
    if (v378[396] == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_640;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_640;
      }
    }

    if (gBBULogVerbosity >= 6)
    {
      v465 = (**this)(this);
      _BBULog(3, 6, v465, "", "File not present: %s\n", v466, v467, v468, "pt.mbn");
    }
  }

LABEL_640:
  (*(*this + 264))(this);
  if ((SHIBYTE(v494[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v495.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_644:
    operator delete(v495.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(v494[0]);
  if (SHIBYTE(v495.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_644;
  }
}

void sub_1E5290038(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  if (*(v36 - 129) < 0)
  {
    operator delete(*(v36 - 152));
    if ((*(v36 - 105) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((*(v36 - 105) & 0x80000000) == 0)
  {
LABEL_3:
    if ((a36 & 0x80000000) == 0)
    {
LABEL_8:
      if (a24 < 0)
      {
        operator delete(a19);
      }

      if (a30 < 0)
      {
        operator delete(a25);
      }

      _Unwind_Resume(a1);
    }

LABEL_7:
    operator delete(__p);
    goto LABEL_8;
  }

  operator delete(*(v36 - 128));
  if ((a36 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

BOOL SharedData::setPreference<BOOL>(uint64_t a1, uint64_t a2, int a3)
{
  os_unfair_lock_lock((a1 + 40));
  if (*(a2 + 23) >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  ctu::cf::MakeCFString::MakeCFString(key, v6);
  v7 = MEMORY[0x1E695E4D0];
  if (!a3)
  {
    v7 = MEMORY[0x1E695E4C0];
  }

  v8 = *v7;
  key[1] = v8;
  if (v8)
  {
    v9 = *MEMORY[0x1E695E8B0];
    CFPreferencesSetValue(key[0], v8, *(a1 + 8), *(a1 + 16), *MEMORY[0x1E695E8B0]);
    v10 = CFPreferencesSynchronize(*(a1 + 8), *(a1 + 16), v9) != 0;
    CFRelease(v8);
  }

  else
  {
    v10 = 0;
  }

  MEMORY[0x1E6926590](key);
  os_unfair_lock_unlock((a1 + 40));
  return v10;
}

void sub_1E529072C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10)
{
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a10);
  MEMORY[0x1E6926590](&a9);
  __clang_call_terminate(a1);
}

void BBUEUR25UpdateSource::~BBUEUR25UpdateSource(BBUEUR25UpdateSource *this)
{
  *this = &unk_1F5EFFC18;
  v2 = *(this + 52);
  *(this + 52) = 0;
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(v2);
    this = v3;
    v1 = vars8;
  }

  BBUEUR20UpdateSource::~BBUEUR20UpdateSource(this);
}

{
  *this = &unk_1F5EFFC18;
  v2 = *(this + 52);
  *(this + 52) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  BBUEUR20UpdateSource::~BBUEUR20UpdateSource(this);

  operator delete(v3);
}

uint64_t BBUEURUpdateSource::getZipFile@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 72);
  *a2 = *(this + 64);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

const void **ctu::cf::CFSharedRef<__CFData>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void BBUEURSequencerRamImage::~BBUEURSequencerRamImage(BBUEURSequencerRamImage *this)
{
  *this = &unk_1F5F014B0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }
}

{
  *this = &unk_1F5F014B0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  operator delete(this);
}

uint64_t BBUEURELFImage::getWritePayloadLength(BBUEURELFImage *this)
{
  result = *(this + 1);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

void BBUEURELFImage::generateHash(uint64_t a1, unsigned __int8 *a2, int a3)
{
  if (a2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      BBUDataSource::generateHash(v3, a2, a3);
    }
  }
}

void BBUEURSignedFirmwareSOCViewImage::~BBUEURSignedFirmwareSOCViewImage(BBUEURSignedFirmwareSOCViewImage *this)
{
  *this = &unk_1F5F014B0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }
}

{
  *this = &unk_1F5F014B0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  operator delete(this);
}

void BBUEURXBLscImage::~BBUEURXBLscImage(void **this)
{
  *this = &unk_1F5EFFE30;
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  *this = &unk_1F5F014B0;
  v2 = this[2];
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = this[1];
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }
}

{
  *this = &unk_1F5EFFE30;
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  *this = &unk_1F5F014B0;
  v2 = this[2];
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = this[1];
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  operator delete(this);
}

uint64_t BBUEURXBLscImage::getName(BBUEURXBLscImage *this)
{
  result = this + 32;
  if (*(this + 55) < 0)
  {
    return *result;
  }

  return result;
}

void BBUEURAppsImage::~BBUEURAppsImage(BBUEURAppsImage *this)
{
  *this = &unk_1F5F014B0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }
}

{
  *this = &unk_1F5F014B0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  operator delete(this);
}

void BBUEURQDSP6SWImage::~BBUEURQDSP6SWImage(BBUEURQDSP6SWImage *this)
{
  *this = &unk_1F5F014B0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }
}

{
  *this = &unk_1F5F014B0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  operator delete(this);
}

void BBUEURTZImage::~BBUEURTZImage(BBUEURTZImage *this)
{
  *this = &unk_1F5F014B0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }
}

{
  *this = &unk_1F5F014B0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  operator delete(this);
}

void BBUEURACDBImage::~BBUEURACDBImage(BBUEURACDBImage *this)
{
  *this = &unk_1F5F04F58;
  v1 = *(this + 1);
  if (v1)
  {
    (*(*v1 + 8))(*(this + 1));
  }
}

{
  *this = &unk_1F5F04F58;
  v2 = *(this + 1);
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(*(this + 1));
    this = v3;
    v1 = vars8;
  }

  operator delete(this);
}

void BBUEURMIImage::generateHash(uint64_t a1, unsigned __int8 *a2, int a3)
{
  if (a2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      BBUDataSource::generateHash(v3, a2, a3);
    }
  }
}

void BBUEURBBCFGImage::~BBUEURBBCFGImage(BBUEURBBCFGImage *this)
{
  *this = &unk_1F5F04F58;
  v1 = *(this + 1);
  if (v1)
  {
    (*(*v1 + 8))(*(this + 1));
  }
}

{
  *this = &unk_1F5F04F58;
  v2 = *(this + 1);
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(*(this + 1));
    this = v3;
    v1 = vars8;
  }

  operator delete(this);
}

void BBUEURAPDPImage::~BBUEURAPDPImage(BBUEURAPDPImage *this)
{
  *this = &unk_1F5F014B0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }
}

{
  *this = &unk_1F5F014B0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  operator delete(this);
}

void BBUEURDevcfgImage::~BBUEURDevcfgImage(BBUEURDevcfgImage *this)
{
  *this = &unk_1F5F014B0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }
}

{
  *this = &unk_1F5F014B0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  operator delete(this);
}

void BBUEURHYPImage::~BBUEURHYPImage(BBUEURHYPImage *this)
{
  *this = &unk_1F5F014B0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }
}

{
  *this = &unk_1F5F014B0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  operator delete(this);
}

void BBUEURAOPImage::~BBUEURAOPImage(BBUEURAOPImage *this)
{
  *this = &unk_1F5F014B0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }
}

{
  *this = &unk_1F5F014B0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  operator delete(this);
}

void BBUEUR25MDMDDRImage::~BBUEUR25MDMDDRImage(BBUEUR25MDMDDRImage *this)
{
  *this = &unk_1F5F04F58;
  v1 = *(this + 1);
  if (v1)
  {
    (*(*v1 + 8))(*(this + 1));
  }
}

{
  *this = &unk_1F5F04F58;
  v2 = *(this + 1);
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(*(this + 1));
    this = v3;
    v1 = vars8;
  }

  operator delete(this);
}

void BBUEUR25MDMDDRImage::getWritePayloadData(BBUEUR25MDMDDRImage *this, unsigned __int8 *a2, uint64_t a3, int a4)
{
  if (*(this + 1))
  {
    BBUEURMIImage::getWritePayloadData(this, a2, a3, a4);
  }

  else if (a3)
  {
    bzero(a2, a3);
  }
}

uint64_t BBUEUR25MDMDDRImage::getWritePayloadLength(BBUEUR25MDMDDRImage *this)
{
  if (*(this + 1))
  {
    return (*(this + 8) + 40);
  }

  else
  {
    return 0x20000;
  }
}

void BBUEUR25MDMDDRImage::generateHash(uint64_t a1, unsigned __int8 *a2, int a3)
{
  if (a2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      BBUDataSource::generateHash(v3, a2, a3);
    }
  }
}

void BBUEUROEMMiscImage::~BBUEUROEMMiscImage(BBUEUROEMMiscImage *this)
{
  *this = &unk_1F5F014B0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }
}

{
  *this = &unk_1F5F014B0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  operator delete(this);
}

void BBUEURQTIMiscImage::~BBUEURQTIMiscImage(BBUEURQTIMiscImage *this)
{
  *this = &unk_1F5F014B0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }
}

{
  *this = &unk_1F5F014B0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  operator delete(this);
}

void BBUEURXblCfgImage::~BBUEURXblCfgImage(BBUEURXblCfgImage *this)
{
  *this = &unk_1F5F014B0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }
}

{
  *this = &unk_1F5F014B0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  operator delete(this);
}

void BBUEURUEFIImage::~BBUEURUEFIImage(BBUEURUEFIImage *this)
{
  *this = &unk_1F5F014B0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }
}

{
  *this = &unk_1F5F014B0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  operator delete(this);
}

void BBUEURXblSupportImage::~BBUEURXblSupportImage(BBUEURXblSupportImage *this)
{
  *this = &unk_1F5F014B0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }
}

{
  *this = &unk_1F5F014B0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  operator delete(this);
}

void BBUEURShrmImage::~BBUEURShrmImage(BBUEURShrmImage *this)
{
  *this = &unk_1F5F014B0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }
}

{
  *this = &unk_1F5F014B0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  operator delete(this);
}

void BBUEURCpucpImage::~BBUEURCpucpImage(BBUEURCpucpImage *this)
{
  *this = &unk_1F5F014B0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }
}

{
  *this = &unk_1F5F014B0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  operator delete(this);
}

void BBUEURAOPDevCfgImage::~BBUEURAOPDevCfgImage(BBUEURAOPDevCfgImage *this)
{
  *this = &unk_1F5F014B0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }
}

{
  *this = &unk_1F5F014B0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  operator delete(this);
}

void BBUEURQdsp6SwDtbsImage::~BBUEURQdsp6SwDtbsImage(BBUEURQdsp6SwDtbsImage *this)
{
  *this = &unk_1F5F014B0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }
}

{
  *this = &unk_1F5F014B0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  operator delete(this);
}

void BBUEURQupv3FwImage::~BBUEURQupv3FwImage(BBUEURQupv3FwImage *this)
{
  *this = &unk_1F5F014B0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }
}

{
  *this = &unk_1F5F014B0;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = v2[8];
    if (v3)
    {
      operator delete[](v3);
    }

    v4 = v2[17];
    if (v4)
    {
      operator delete[](v4);
    }

    operator delete(v2);
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  operator delete(this);
}

void BBUEURPTImage::~BBUEURPTImage(BBUEURPTImage *this)
{
  *this = &unk_1F5F04F58;
  v1 = *(this + 1);
  if (v1)
  {
    (*(*v1 + 8))(*(this + 1));
  }
}

{
  *this = &unk_1F5F04F58;
  v2 = *(this + 1);
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(*(this + 1));
    this = v3;
    v1 = vars8;
  }

  operator delete(this);
}

void SharedData::create_default_global(atomic_ullong *a1@<X8>)
{
  v3 = operator new(0x60uLL);
  __p = v3;
  strcpy(v3, "/private/var/wireless/Library/Preferences/com.apple.AppleBasebandManager.Statistics.plist");
  v4.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v4.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v10.st_blksize = v4;
  *v10.st_qspare = v4;
  v10.st_birthtimespec = v4;
  *&v10.st_size = v4;
  v10.st_mtimespec = v4;
  v10.st_ctimespec = v4;
  *&v10.st_uid = v4;
  v10.st_atimespec = v4;
  v9 = xmmword_1E5391010;
  *&v10.st_dev = v4;
  if (!stat(v3, &v10) && remove(v3, v5))
  {
    if (v9 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    unlink(p_p);
  }

  v7 = operator new(0x30uLL);
  MEMORY[0x1E69265F0](v7, @"com.apple.AppleBasebandManager.data", *MEMORY[0x1E695E8B8]);
  v7[3] = 0;
  v7[4] = 0;
  *(v7 + 10) = 0;
  std::shared_ptr<SharedData>::shared_ptr[abi:ne200100]<SharedData,0>(a1, v7);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p);
  }
}

void sub_1E52928D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  operator delete(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

atomic_ullong *std::shared_ptr<SharedData>::shared_ptr[abi:ne200100]<SharedData,0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_1F5F001C0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (a2)
  {
    v6 = *(a2 + 32);
    if (v6)
    {
      if (v6->__shared_owners_ == -1)
      {
        atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
        *(a2 + 24) = a2;
        *(a2 + 32) = v4;
        v7 = v4;
        std::__shared_weak_count::__release_weak(v6);
        v4 = v7;
        if (!atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
      *(a2 + 24) = a2;
      *(a2 + 32) = v4;
      if (!atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_7:
        v8 = v4;
        (*(*v4 + 16))();
        std::__shared_weak_count::__release_weak(v8);
      }
    }
  }

  return a1;
}

void sub_1E5292A40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<SharedData>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_pointer<SharedData *,std::shared_ptr<SharedData>::__shared_ptr_default_delete<SharedData,SharedData>,std::allocator<SharedData>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<SharedData *,std::shared_ptr<SharedData>::__shared_ptr_default_delete<SharedData,SharedData>,std::allocator<SharedData>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = *(v1 + 32);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    v3 = MEMORY[0x1E6926600](v1);

    operator delete(v3);
  }
}

uint64_t std::__shared_ptr_pointer<SharedData *,std::shared_ptr<SharedData>::__shared_ptr_default_delete<SharedData,SharedData>,std::allocator<SharedData>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000001E5391192)
  {
    if (((v2 & 0x80000001E5391192 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E5391192))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E5391192 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *std::unique_ptr<SharedData>::~unique_ptr[abi:ne200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *(v1 + 32);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = MEMORY[0x1E6926600](v1);
    operator delete(v4);
    return v2;
  }

  return result;
}

uint64_t ctu::PthreadMutexGuardPolicy<SharedData>::~PthreadMutexGuardPolicy(uint64_t a1)
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

uint64_t __cxx_global_var_init_4()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<BBUPartitionManager>::~PthreadMutexGuardPolicy, &ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance, &dword_1E5234000);
  }

  return result;
}

uint64_t __cxx_global_var_init_118()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<SharedData>::~PthreadMutexGuardPolicy, &ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance, &dword_1E5234000);
  }

  return result;
}

uint64_t BasebandProvisioning::sendServerReq(CFDictionaryRef *this, const __CFString *a2, const __CFDictionary *a3, CFTypeRef *a4)
{
  v158 = *MEMORY[0x1E69E9840];
  v142 = 0;
  v143 = 0;
  v140 = 0;
  v141 = 0;
  v139 = 0;
  __p = 0;
  v137 = 0;
  if (!a2 || !a4)
  {
    ACFULogging::getLogInstance(this);
LABEL_192:
    ACFULogging::handleMessage();
    v131 = 0;
    goto LABEL_197;
  }

  alloc = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v143 = Mutable;
  if (!Mutable)
  {
    ACFULogging::getLogInstance(0);
    goto LABEL_192;
  }

  buffer.isa = 0;
  v153 = 0;
  v7 = setHttpUriEscapedValue(alloc, Mutable, @"COMMAND_CODE", a2);
  if (v7 || (v7 = setHttpUriEscapedValue(alloc, Mutable, @"TICKET_VERSION", @"2"), v7) || (v7 = setHttpUriEscapedValue(alloc, Mutable, @"VERSION", @"2"), v7))
  {
    ACFULogging::getLogInstance(v7);
    ACFULogging::handleMessage();
    v35 = 0;
    goto LABEL_64;
  }

  Count = CFDictionaryGetCount(this[10]);
  v9 = malloc(8 * Count);
  v10 = malloc(8 * Count);
  v11 = v10;
  if (v9)
  {
    if (!v10)
    {
LABEL_176:
      ACFULogging::getLogInstance(0);
      goto LABEL_178;
    }

    CFDictionaryGetKeysAndValues(this[10], v9, v10);
    if (Count >= 1)
    {
      v13 = v9;
      v14 = v11;
      while (*v13)
      {
        if (!*v14)
        {
          goto LABEL_176;
        }

        v15 = CFGetTypeID(*v14);
        TypeID = CFDataGetTypeID();
        v17 = *v13;
        v18 = *v14;
        v12 = (v15 == TypeID ? setHttpBase64EncodedValue(alloc, Mutable, v17, v18) : setHttpUriEscapedValue(alloc, Mutable, v17, v18));
        if (v12)
        {
          break;
        }

        ++v14;
        ++v13;
        if (!--Count)
        {
          goto LABEL_18;
        }
      }

      goto LABEL_177;
    }

LABEL_18:
    if (CFStringCompare(a2, @"100", 0))
    {
      goto LABEL_240;
    }

    Value = CFDictionaryGetValue(a3, @"MarketingPartNumber");
    v20 = Value;
    if (!Value || (v21 = CFGetTypeID(Value), v12 = CFStringGetTypeID(), v21 == v12) && (v12 = setHttpUriEscapedValue(alloc, Mutable, @"MPN", v20), !v12))
    {
      v22 = CFDictionaryGetValue(a3, @"RegionCode");
      v23 = v22;
      if (!v22 || (v24 = CFGetTypeID(v22), v12 = CFStringGetTypeID(), v24 == v12) && (v12 = setHttpUriEscapedValue(alloc, Mutable, @"RGN", v23), !v12))
      {
LABEL_240:
        v25 = CFDictionaryGetValue(a3, @"BasebandProvisioningLineType");
        v26 = v25;
        if (!v25 || (v27 = CFGetTypeID(v25), v12 = CFStringGetTypeID(), v27 == v12) && (v12 = setHttpUriEscapedValue(alloc, Mutable, @"LINETYPE", v26), !v12))
        {
          v28 = this[11];
          if (!v28)
          {
            goto LABEL_59;
          }

          v29 = CFDictionaryGetValue(v28, @"ChipSerialNo");
          v30 = v29;
          if (!v29 || (v31 = CFGetTypeID(v29), v12 = CFDataGetTypeID(), v31 == v12) && (v12 = setHttpBase64EncodedValue(alloc, Mutable, @"B64_BB_SNUM", v30), !v12))
          {
            v32 = CFStringCompare(a2, @"100", 0);
            v33 = this[11];
            if (v32)
            {
              v34 = CFDictionaryGetValue(v33, @"IMEI");
              v35 = v34 != 0;
              if (v34)
              {
                ReversedIMEIFromString = createReversedIMEIFromString(v34, &v153);
                if ((ReversedIMEIFromString & 1) == 0)
                {
                  goto LABEL_224;
                }

                v37 = v153;
                if (!v153)
                {
                  goto LABEL_224;
                }

                v38 = setHttpBase64EncodedValue(alloc, Mutable, @"B64_IMEI", v153);
                if (v38)
                {
                  goto LABEL_228;
                }

                CFRelease(v37);
                v153 = 0;
              }

              v39 = CFDictionaryGetValue(this[11], @"IMEI2");
              if (!v39)
              {
LABEL_50:
                v47 = CFDictionaryGetValue(this[11], @"ChipID");
                v48 = v47;
                if (!v47 || (v49 = CFGetTypeID(v47), v50 = CFDataGetTypeID(), v49 == v50) && (v50 = setHttpBase64EncodedValue(alloc, Mutable, @"B64_BB_CHIPID", v48), !v50))
                {
                  v51 = CFDictionaryGetValue(this[11], @"EID");
                  if (!v51)
                  {
                    v35 = 1;
                    goto LABEL_62;
                  }

                  v50 = support::cf::copyDataFromHexString(v51, &buffer, v52);
                  v35 = v50;
                  if (buffer.isa)
                  {
                    v53 = v50;
                  }

                  else
                  {
                    v53 = 0;
                  }

                  if (v53)
                  {
                    setHttpBase64EncodedValue(alloc, Mutable, @"B64_EID", buffer.isa);
                    goto LABEL_59;
                  }
                }

                ACFULogging::getLogInstance(v50);
                ACFULogging::handleMessage();
LABEL_62:
                free(v9);
                if (!v11)
                {
                  goto LABEL_64;
                }

                goto LABEL_63;
              }

              ReversedIMEIFromString = createReversedIMEIFromString(v39, &v153);
              if (ReversedIMEIFromString)
              {
                v40 = v153;
                if (v153)
                {
                  v38 = setHttpBase64EncodedValue(alloc, Mutable, @"B64_IMEI2", v153);
                  if (!v38)
                  {
                    CFRelease(v40);
                    v35 = 1;
                    goto LABEL_50;
                  }

LABEL_228:
                  ACFULogging::getLogInstance(v38);
                  ACFULogging::handleMessage();
LABEL_59:
                  v35 = 1;
                  free(v9);
                  if (!v11)
                  {
                    goto LABEL_64;
                  }

                  goto LABEL_63;
                }
              }

LABEL_224:
              ACFULogging::getLogInstance(ReversedIMEIFromString);
LABEL_178:
              ACFULogging::handleMessage();
              v35 = 0;
              free(v9);
              if (!v11)
              {
                goto LABEL_64;
              }

LABEL_63:
              free(v11);
              goto LABEL_64;
            }

            v41 = CFDictionaryGetValue(v33, @"EncryptedSessionKey");
            v42 = v41;
            if (!v41 || (v43 = CFGetTypeID(v41), v12 = CFDataGetTypeID(), v43 == v12) && (v12 = setHttpBase64EncodedValue(alloc, Mutable, @"B64_SESS_KEY", v42), !v12))
            {
              v44 = CFDictionaryGetValue(this[11], @"SKeyHash");
              v45 = v44;
              if (!v44 || (v46 = CFGetTypeID(v44), v12 = CFDataGetTypeID(), v46 == v12) && (v12 = setHttpBase64EncodedValue(alloc, Mutable, @"B64_SKEY_HASH", v45), !v12))
              {
                v35 = 0;
                goto LABEL_50;
              }
            }
          }
        }
      }
    }

LABEL_177:
    ACFULogging::getLogInstance(v12);
    goto LABEL_178;
  }

  ACFULogging::getLogInstance(v10);
  ACFULogging::handleMessage();
  v35 = 0;
  if (v11)
  {
    goto LABEL_63;
  }

LABEL_64:
  isa = buffer.isa;
  if (buffer.isa)
  {
    CFRelease(buffer.isa);
  }

  if (!v35)
  {
    ACFULogging::getLogInstance(isa);
    goto LABEL_192;
  }

  ACFULogging::getLogInstance(isa);
  v55 = operator new(0x30uLL);
  strcpy(v55, "BasebandProvisioning::sendServerReq");
  buffer.isa = v55;
  *&buffer.info = xmmword_1E5391300;
  ACFULogging::handleMessageCFType();
  if (SHIBYTE(buffer.data) < 0)
  {
    operator delete(buffer.isa);
  }

  buffer.isa = 0;
  buffer.info = &v139;
  PostBodyFromDictionary = createPostBodyFromDictionary(alloc, Mutable, &buffer);
  v57 = *buffer.info;
  if (buffer.isa)
  {
    *buffer.info = buffer.isa;
    if (v57)
    {
      goto LABEL_73;
    }
  }

  else
  {
    *buffer.info = 0;
    if (v57)
    {
LABEL_73:
      CFRelease(v57);
    }
  }

  if ((PostBodyFromDictionary & 1) == 0 || !v139 || (ACFULogging::getLogInstance(v57), ACFULogging::handleMessage(), v57 = ctu::cf::assign(), (v57 & 1) == 0))
  {
    ACFULogging::getLogInstance(v57);
    goto LABEL_192;
  }

  ACFULogging::getLogInstance(v57);
  ACFULogging::handleMessage();
  v58 = operator new(0xA0uLL);
  *(v58 + 3) = 850045863;
  *(v58 + 1) = 0;
  *(v58 + 2) = 0;
  *(v58 + 2) = 0u;
  *(v58 + 3) = 0u;
  *(v58 + 4) = 0u;
  *(v58 + 10) = 0;
  *(v58 + 11) = 1018212795;
  *(v58 + 6) = 0u;
  *(v58 + 7) = 0u;
  *(v58 + 124) = 0u;
  *v58 = &unk_1F5F008D8;
  v151 = v58;
  v152 = v58;
  std::mutex::lock((v58 + 24));
  v59 = *(v58 + 34);
  if ((v59 & 2) != 0)
  {
    std::__throw_future_error[abi:ne200100](1u);
  }

  atomic_fetch_add_explicit(v58 + 1, 1uLL, memory_order_relaxed);
  *(v58 + 34) = v59 | 2;
  std::mutex::unlock((v58 + 24));
  v149 = 0xAAAAAAAAAAAAAAAALL;
  v150 = 0xAAAAAAAAAAAAAAAALL;
  buffer.info = 0;
  buffer.data = 0;
  buffer.isa = &buffer.info;
  theData = 0;
  v148 = 0;
  ctu::Http::HttpRequest::create();
  v60 = v148;
  if (v148 && !atomic_fetch_add(&v148->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v60->__on_zero_shared)(v60);
    std::__shared_weak_count::__release_weak(v60);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,ctu::Http::case_insensitive_key_comparer,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&buffer, buffer.info);
  (*(*v149 + 8))(v149, this[4]);
  v61 = v149;
  dispatch::future_callback_impl<std::shared_ptr<ctu::Http::HttpResponse>,std::shared_ptr<ctu::Http::HttpResponse>>(&v151, &buffer.isa);
  (*(*v61 + 16))(v61, buffer.isa);
  if (buffer.isa)
  {
    _Block_release(buffer.isa);
  }

  LODWORD(v62) = *(this + 6);
  (*(*v149 + 96))(v149, v62);
  v63 = v149;
  v64 = this[5];
  cf = v64;
  if (v64)
  {
    CFRetain(v64);
  }

  (*(*v63 + 88))(v63, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  (*(*v149 + 56))(v149, &v140);
  memset(&buffer, 0, 24);
  (*(*v149 + 40))(v149, &buffer);
  if (SHIBYTE(buffer.data) < 0)
  {
    operator delete(buffer.isa);
  }

  *&v145 = 0xAAAAAAAAAAAAAAAALL;
  *(&v145 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v65 = v151;
  v151 = 0;
  std::__assoc_state<std::shared_ptr<ctu::Http::HttpResponse>>::move(v65, &v145);
  if (v65 && !atomic_fetch_add(v65 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v65 + 16))(v65);
  }

  v66 = (*(*v145 + 16))(v145);
  if (v66 == 1)
  {
    v66 = (*(*v145 + 24))(v145);
    if (v66 == 200)
    {
      v131 = *(&v145 + 1);
      v67 = v145;
      v68 = v150;
      if (!v150)
      {
        goto LABEL_107;
      }

      goto LABEL_105;
    }
  }

  ACFULogging::getLogInstance(v66);
  (*(*v145 + 16))(v145);
  (*(*v145 + 24))(v145);
  (*(*v145 + 32))(v145);
  (*(*v145 + 72))(&v144);
  ctu::cf::show(&v153, v144, v69);
  ACFULogging::handleMessage();
  if ((SHIBYTE(v154) & 0x80000000) == 0)
  {
    v70 = v144;
    if (!v144)
    {
      goto LABEL_101;
    }

    goto LABEL_100;
  }

  operator delete(v153);
  v70 = v144;
  if (v144)
  {
LABEL_100:
    CFRelease(v70);
  }

LABEL_101:
  v71 = *(&v145 + 1);
  if (*(&v145 + 1) && !atomic_fetch_add((*(&v145 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v71->__on_zero_shared)(v71);
    std::__shared_weak_count::__release_weak(v71);
  }

  v67 = 0;
  v131 = 0;
  v68 = v150;
  if (v150)
  {
LABEL_105:
    if (!atomic_fetch_add(&v68->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v68->__on_zero_shared)(v68);
      std::__shared_weak_count::__release_weak(v68);
    }
  }

LABEL_107:
  v72 = v151;
  if (v151 && !atomic_fetch_add(v151 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v72 + 16))(v72);
  }

  v73 = std::promise<std::shared_ptr<ctu::Http::HttpResponse>>::~promise(&v152);
  if (v67)
  {
    ACFULogging::getLogInstance(v73);
    (*(*v67 + 24))(v67);
    ACFULogging::handleMessage();
    (*(*v67 + 16))(v67);
    v74 = ctu::Http::asString();
    __pa = buffer.isa;
    data_high = HIBYTE(buffer.data);
    ACFULogging::getLogInstance(v74);
    ACFULogging::handleMessage();
    v75 = (*(*v67 + 48))(&buffer, v67);
    if (data_high < 0)
    {
      operator delete(__pa);
    }

    __p = buffer.isa;
    v137 = HIBYTE(buffer.data);
    ACFULogging::getLogInstance(v75);
    v76 = ACFULogging::handleMessage();
    ACFULogging::getLogInstance(v76);
    ACFULogging::handleMessage();
    v77 = (*(*v67 + 40))(&theData, v67);
    v78 = theData;
    v149 = 0;
    if (theData)
    {
      BytePtr = CFDataGetBytePtr(theData);
      Length = CFDataGetLength(v78);
      theString = CFStringCreateWithBytes(alloc, BytePtr, Length, 0x8000100u, 0);
      if (theString)
      {
        v81 = CFDictionaryCreateMutable(alloc, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (v81)
        {
          *&v82 = 0xAAAAAAAAAAAAAAAALL;
          *(&v82 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *&v157[12] = v82;
          v156 = v82;
          *v157 = v82;
          *&buffer.isa = v82;
          *&buffer.data = v82;
          ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(alloc, theString, @"&");
          v84 = ArrayBySeparatingStrings;
          if (!ArrayBySeparatingStrings || (v85 = CFArrayGetCount(ArrayBySeparatingStrings), (v86 = v85) == 0))
          {
            ACFULogging::getLogInstance(0);
            ACFULogging::handleMessage();
            CFRelease(theString);
            v124 = 0;
LABEL_165:
            CFRelease(v81);
            if (v149)
            {
              CFRelease(v149);
              v149 = 0;
            }

            if (v84)
            {
              CFRelease(v84);
            }

            v73 = theData;
            if (theData)
            {
              goto LABEL_170;
            }

            goto LABEL_171;
          }

          if (v85 >= 1)
          {
            v87 = 0;
            while (1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v84, v87);
              location = CFStringFind(ValueAtIndex, @"=", 0).location;
              if (location != -1)
              {
                break;
              }

              ACFULogging::getLogInstance(0xFFFFFFFFFFFFFFFFLL);
              CFStringGetCStringPtr(ValueAtIndex, 0x8000100u);
              ACFULogging::handleMessage();
LABEL_120:
              if (v86 == ++v87)
              {
                goto LABEL_130;
              }
            }

            v90 = CFStringGetLength(ValueAtIndex);
            v160.location = 0;
            v160.length = location;
            v91 = CFStringCreateWithSubstring(alloc, ValueAtIndex, v160);
            v161.location = location + 1;
            v161.length = v90 + ~location;
            v92 = CFStringCreateWithSubstring(alloc, ValueAtIndex, v161);
            v93 = v92;
            if (v91 && v92)
            {
              CFDictionarySetValue(v81, v91, v92);
            }

            else
            {
              ACFULogging::getLogInstance(v92);
              CFStringGetCStringPtr(v91, 0x8000100u);
              CFStringGetCStringPtr(v93, 0x8000100u);
              ACFULogging::handleMessage();
              if (!v91)
              {
                goto LABEL_128;
              }
            }

            CFRelease(v91);
LABEL_128:
            if (v93)
            {
              CFRelease(v93);
            }

            goto LABEL_120;
          }

LABEL_130:
          v94 = CFDictionaryGetValue(v81, @"IMEI");
          v95 = v94;
          if (v94)
          {
            ACFULogging::getLogInstance(v94);
            CFStringGetCStringPtr(v95, 0x8000100u);
            ACFULogging::handleMessage();
          }

          v96 = CFDictionaryGetValue(v81, @"IMEI2");
          v97 = v96;
          if (v96)
          {
            ACFULogging::getLogInstance(v96);
            CFStringGetCStringPtr(v97, 0x8000100u);
            ACFULogging::handleMessage();
          }

          v98 = CFDictionaryGetValue(v81, @"EID");
          v99 = v98;
          if (v98)
          {
            ACFULogging::getLogInstance(v98);
            CFStringGetCStringPtr(v99, 0x8000100u);
            ACFULogging::handleMessage();
          }

          v100 = CFDictionaryGetValue(v81, @"WIFI_MAC");
          v101 = v100;
          if (v100)
          {
            ACFULogging::getLogInstance(v100);
            CFStringGetCStringPtr(v101, 0x8000100u);
            ACFULogging::handleMessage();
          }

          v102 = CFDictionaryGetValue(v81, @"BT_MAC");
          v103 = v102;
          if (v102)
          {
            ACFULogging::getLogInstance(v102);
            CFStringGetCStringPtr(v103, 0x8000100u);
            ACFULogging::handleMessage();
          }

          v104 = CFDictionaryGetValue(v81, @"USB_ETHER_MAC");
          v105 = v104;
          if (v104)
          {
            ACFULogging::getLogInstance(v104);
            CFStringGetCStringPtr(v105, 0x8000100u);
            ACFULogging::handleMessage();
          }

          v106 = CFDictionaryGetValue(v81, @"WIFI_MAC2");
          v107 = v106;
          if (v106)
          {
            ACFULogging::getLogInstance(v106);
            CFStringGetCStringPtr(v107, 0x8000100u);
            ACFULogging::handleMessage();
          }

          v108 = CFDictionaryGetValue(v81, @"BT_MAC2");
          v109 = v108;
          if (v108)
          {
            ACFULogging::getLogInstance(v108);
            CFStringGetCStringPtr(v109, 0x8000100u);
            ACFULogging::handleMessage();
          }

          v110 = CFDictionaryGetValue(v81, @"ETH_MAC");
          v111 = v110;
          if (v110)
          {
            ACFULogging::getLogInstance(v110);
            CFStringGetCStringPtr(v111, 0x8000100u);
            ACFULogging::handleMessage();
          }

          v112 = CFDictionaryGetValue(v81, @"ETHER_MAC2");
          v113 = v112;
          if (v112)
          {
            ACFULogging::getLogInstance(v112);
            CFStringGetCStringPtr(v113, 0x8000100u);
            ACFULogging::handleMessage();
          }

          v114 = CFDictionaryGetValue(v81, @"T_MAC");
          v115 = v114;
          if (v114)
          {
            ACFULogging::getLogInstance(v114);
            CFStringGetCStringPtr(v115, 0x8000100u);
            ACFULogging::handleMessage();
          }

          v116 = CFDictionaryGetValue(v81, @"B64_SECDATA");
          v117 = v116;
          if (!v116)
          {
            goto LABEL_163;
          }

          ACFULogging::getLogInstance(v116);
          ACFULogging::handleMessage();
          v118 = decodeBase64(alloc, v117, &v149);
          if (!v118)
          {
            if (!v149)
            {
LABEL_219:
              ACFULogging::getLogInstance(0);
              goto LABEL_220;
            }

            v118 = CFDataGetLength(v149);
            if (v118 > 0x4B)
            {
              v159.location = 0;
              v159.length = 76;
              CFDataGetBytes(v149, v159, &buffer);
              if (!*&v157[24])
              {
                goto LABEL_163;
              }

              v119 = CFDataGetBytePtr(v149);
              v120 = CFDataCreate(alloc, v119 + 76, *&v157[24]);
              if (v120)
              {
                CFDictionarySetValue(v81, @"MANIFESTDATA", v120);
                ACFULogging::getLogInstance(v121);
                v122 = operator new(0x30uLL);
                strcpy(v122, "BasebandProvisioning::copyResponse");
                v153 = v122;
                v154 = xmmword_1E5391310;
                ACFULogging::handleMessageCFType();
                if ((SHIBYTE(v154) & 0x80000000) == 0)
                {
                  v123 = this[9];
                  this[9] = v120;
                  if (!v123)
                  {
                    goto LABEL_163;
                  }

                  goto LABEL_162;
                }

                operator delete(v153);
                v123 = this[9];
                this[9] = v120;
                if (v123)
                {
LABEL_162:
                  CFRelease(v123);
                }

LABEL_163:
                *a4 = CFRetain(v81);
                v124 = 1;
LABEL_164:
                CFRelease(theString);
                goto LABEL_165;
              }

              goto LABEL_219;
            }
          }

          ACFULogging::getLogInstance(v118);
LABEL_220:
          ACFULogging::handleMessage();
          v124 = 0;
          goto LABEL_164;
        }

        ACFULogging::getLogInstance(0);
        ACFULogging::handleMessage();
        CFRelease(theString);
LABEL_212:
        v124 = 0;
        v73 = theData;
        if (theData)
        {
LABEL_170:
          CFRelease(v73);
        }

LABEL_171:
        if (v124)
        {
          v125 = 1;
          if ((v137 & 0x80000000) == 0)
          {
            goto LABEL_173;
          }

LABEL_198:
          operator delete(__p);
          v126 = v131;
          if (!v131)
          {
            goto LABEL_200;
          }

          goto LABEL_199;
        }

        goto LABEL_196;
      }

      ACFULogging::getLogInstance(0);
    }

    else
    {
      ACFULogging::getLogInstance(v77);
    }

    ACFULogging::handleMessage();
    goto LABEL_212;
  }

LABEL_196:
  ACFULogging::getLogInstance(v73);
  ACFULogging::handleMessage();
LABEL_197:
  v125 = 0;
  if (v137 < 0)
  {
    goto LABEL_198;
  }

LABEL_173:
  v126 = v131;
  if (!v131)
  {
LABEL_200:
    v127 = v139;
    if (!v139)
    {
      goto LABEL_202;
    }

    goto LABEL_201;
  }

LABEL_199:
  if (atomic_fetch_add(&v126->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_200;
  }

  (v126->__on_zero_shared)(v126);
  std::__shared_weak_count::__release_weak(v126);
  v127 = v139;
  if (v139)
  {
LABEL_201:
    CFRelease(v127);
  }

LABEL_202:
  if (v140)
  {
    v141 = v140;
    operator delete(v140);
  }

  if (v143)
  {
    CFRelease(v143);
  }

  v128 = *MEMORY[0x1E69E9840];
  return v125;
}

void sub_1E529482C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28, uint64_t a29, char a30, void *a31, uint64_t a32, uint64_t a33, char a34, int a35, __int16 a36, char a37, char a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, char a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, char a50)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t createReversedIMEIFromString(__CFString *a1, CFTypeRef *a2)
{
  v3 = a1;
  cf.isa = 0;
  Length = CFStringGetLength(a1);
  v6 = MEMORY[0x1E695E480];
  if (Length == 15)
  {
    v7 = *MEMORY[0x1E695E480];
    v21.length = CFStringGetLength(v3) - 1;
    v21.location = 0;
    v8 = CFStringCreateWithSubstring(v7, v3, v21);
    v3 = v8;
  }

  else
  {
    v8 = 0;
  }

  v9 = support::cf::copyDataFromHexString(v3, &cf, v5);
  if (v9)
  {
    if (cf.isa)
    {
      v10 = CFRetain(cf.isa);
      v11 = 1;
      if (!v8)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    ACFULogging::getLogInstance(0);
  }

  else
  {
    ACFULogging::getLogInstance(v9);
  }

  ACFULogging::handleMessage();
  v10 = 0;
  v11 = 0;
  if (v8)
  {
LABEL_7:
    CFRelease(v8);
  }

LABEL_8:
  isa = cf.isa;
  if (cf.isa)
  {
    CFRelease(cf.isa);
  }

  if (!v11)
  {
    ACFULogging::getLogInstance(isa);
    ACFULogging::handleMessage();
    if (!v10)
    {
      return 0;
    }

    goto LABEL_27;
  }

  if (!v10)
  {
    ACFULogging::getLogInstance(isa);
    ACFULogging::handleMessage();
    return 0;
  }

  v13 = CFDataGetLength(v10);
  if (v13 != 7)
  {
    goto LABEL_25;
  }

  BYTE6(cf.isa) = *CFDataGetBytePtr(v10);
  BYTE5(cf.isa) = CFDataGetBytePtr(v10)[1];
  BYTE4(cf.isa) = CFDataGetBytePtr(v10)[2];
  BYTE3(cf.isa) = CFDataGetBytePtr(v10)[3];
  BYTE2(cf.isa) = CFDataGetBytePtr(v10)[4];
  BYTE1(cf.isa) = CFDataGetBytePtr(v10)[5];
  LOBYTE(cf.isa) = CFDataGetBytePtr(v10)[6];
  v13 = CFDataCreate(*v6, &cf, 7);
  if (!v13)
  {
LABEL_25:
    ACFULogging::getLogInstance(v13);
    v19 = ACFULogging::handleMessage();
    ACFULogging::getLogInstance(v19);
    goto LABEL_26;
  }

  v14 = v13;
  v15 = CFRetain(v13);
  CFRelease(v14);
  ACFULogging::getLogInstance(v16);
  if (!v15)
  {
LABEL_26:
    ACFULogging::handleMessage();
LABEL_27:
    CFRelease(v10);
    return 0;
  }

  v17 = operator new(0x38uLL);
  strcpy(v17, "BasebandProvisioning::createReversedIMEIFromString");
  cf.isa = v17;
  *&cf.info = xmmword_1E5391320;
  ACFULogging::handleMessageCFType();
  if (SHIBYTE(cf.data) < 0)
  {
    operator delete(cf.isa);
  }

  *a2 = CFRetain(v15);
  CFRelease(v10);
  CFRelease(v15);
  return 1;
}

void sub_1E5294E2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **ctu::cf::detail::TakeOwnershipProxy<__CFData const>::~TakeOwnershipProxy(const void **a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *v2;
  if (v3)
  {
    *v2 = v3;
    if (v4)
    {
      goto LABEL_5;
    }
  }

  else
  {
    *v2 = 0;
    if (v4)
    {
LABEL_5:
      CFRelease(v4);
    }
  }

  return a1;
}

{
  v3 = *a1;
  v2 = a1[1];
  v4 = *v2;
  if (v3)
  {
    *v2 = v3;
    if (v4)
    {
      goto LABEL_5;
    }
  }

  else
  {
    *v2 = 0;
    if (v4)
    {
LABEL_5:
      CFRelease(v4);
    }
  }

  return a1;
}

uint64_t createBasebandProvInfo(ACFULogging *a1, void *a2, ACFUFirmware **a3, __CFDictionary **a4, uint64_t a5, uint64_t a6)
{
  v131 = *MEMORY[0x1E69E9840];
  value = 0;
  cf = 0;
  __dst = 0;
  v93 = 0;
  v94 = 0;
  v91 = 0;
  v92 = 0xAAAAAAAAAAAAAAAALL;
  v89 = 0;
  v90 = 0;
  v87 = 0;
  v88 = 0;
  if (!*a2 || !*a3 || !a4)
  {
    ACFULogging::getLogInstance(a1);
LABEL_131:
    ACFULogging::handleMessage();
    goto LABEL_132;
  }

  v9 = a1;
  v82 = a4;
  v10 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v12 = Mutable;
  if (!Mutable)
  {
    ACFULogging::getLogInstance(0);
    goto LABEL_131;
  }

  if (!v9)
  {
    goto LABEL_29;
  }

  if (capabilities::radio::vendor(Mutable) == 3)
  {
    *&v81[1] = a6;
    *__p = 0;
    *&__p[8] = &cf;
    strcpy(bytes, "DeadBeef");
    v13 = operator new(0xFA0uLL);
    bzero(v13, 0xFA0uLL);
    v14 = operator new(0x4C4uLL);
    bzero(v14, 0x4C4uLL);
    v15 = CFDataCreate(v10, bytes, 9);
    v16 = v15;
    theDict = v15;
    if (v15)
    {
      *v13 = CFDataGetLength(v15);
      v132.length = CFDataGetLength(v16);
      v132.location = 0;
      CFDataGetBytes(v16, v132, v13 + 2);
      v101 = 0xAAAAAAAAAAAAAAAALL;
      support::transport::ARI::create("BasebandProvisioning", 0x2710, 0, 0, &v101);
      v18 = v101;
      if (!v101 || (v19 = *(v101 + 3), v17 = KTLStartProvision(), (v17 & 1) == 0))
      {
        ACFULogging::getLogInstance(v17);
        ACFULogging::handleMessage();
        if (!v18)
        {
          v20 = 0;
          goto LABEL_20;
        }

        (*(*v18 + 8))(v18);
LABEL_19:
        v20 = 0;
        LOBYTE(v18) = 0;
LABEL_20:
        operator delete(v14);
        operator delete(v13);
        if (v16)
        {
          CFRelease(v16);
        }

        v21 = cf;
        a6 = *&v81[1];
        if (v20)
        {
          cf = v20;
          if (!v21)
          {
            goto LABEL_27;
          }
        }

        else
        {
          cf = 0;
          if (!v21)
          {
            goto LABEL_27;
          }
        }

        CFRelease(v21);
LABEL_27:
        if ((v18 & 1) == 0)
        {
          ACFULogging::getLogInstance(v21);
          goto LABEL_131;
        }

        goto LABEL_28;
      }

      (*(*v18 + 8))(v18);
      v20 = CFDataCreate(v10, v14 + 48, *(v14 + 23));
      *__p = v20;
      if (v20)
      {
        LOBYTE(v18) = 1;
        goto LABEL_20;
      }
    }

    ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage();
    goto LABEL_19;
  }

LABEL_28:
  CFDictionaryAddValue(v12, @"EncryptedSessionKey", cf);
LABEL_29:
  v22 = (***a2)(__p);
  v23 = *__p;
  v24 = *&__p[8];
  if (*&__p[8])
  {
    atomic_fetch_add_explicit((*&__p[8] + 8), 1uLL, memory_order_relaxed);
    v25 = *&__p[8];
    v90 = v23;
    v91 = v24;
    v26 = *&__p[16];
    LODWORD(v92) = *&__p[16];
    if (*&__p[8])
    {
      if (!atomic_fetch_add((*&__p[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v25->__on_zero_shared)(v25);
        std::__shared_weak_count::__release_weak(v25);
      }

      v26 = v92;
    }
  }

  else
  {
    v90 = *__p;
    v91 = 0;
    v26 = *&__p[16];
    LODWORD(v92) = *&__p[16];
  }

  if (v26)
  {
    ACFULogging::getLogInstance(v22);
    ACFULogging::handleMessage();
LABEL_132:
    v74 = 0;
    goto LABEL_153;
  }

  *__p = v90;
  *&__p[8] = v91;
  if (v91)
  {
    atomic_fetch_add_explicit(&v91->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(v90 + 16) == 1)
  {
    v27 = *(v90 + 8);
    if (v27)
    {
      BytePtr = CFDataGetBytePtr(v27);
      Length = CFDataGetLength(*(v90 + 8));
      if (Length <= 4)
      {
        __dst = 0;
        memcpy(&__dst, BytePtr, Length);
      }
    }
  }

  if (v91 && !atomic_fetch_add(&v91->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v91->__on_zero_shared)(v91);
    std::__shared_weak_count::__release_weak(v91);
  }

  v30 = CFDataCreate(v10, &__dst, 4);
  ByteSwappedData = v94;
  v94 = v30;
  if (ByteSwappedData)
  {
    CFRelease(ByteSwappedData);
  }

  if (!v30)
  {
    goto LABEL_66;
  }

  CFDictionaryAddValue(v12, @"ChipID", v30);
  *__p = v90;
  *&__p[8] = v91;
  if (v91)
  {
    atomic_fetch_add_explicit(&v91->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ByteSwappedData = support::cf::createByteSwappedData(*(v90 + 40), &value);
  if (v91 && !atomic_fetch_add(&v91->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v32 = ByteSwappedData;
    (v91->__on_zero_shared)(v91);
    std::__shared_weak_count::__release_weak(v91);
    ByteSwappedData = v32;
  }

  if ((ByteSwappedData & 1) == 0)
  {
LABEL_66:
    ACFULogging::getLogInstance(ByteSwappedData);
    goto LABEL_131;
  }

  CFDictionaryAddValue(v12, @"ChipSerialNo", value);
  v34 = capabilities::radio::vendor(v33);
  if (v34 != 3)
  {
    goto LABEL_89;
  }

  v36 = *a3;
  v37 = a3[1];
  v85 = *a3;
  v86 = v37;
  if (v37)
  {
    atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  theDict = 0;
  v84 = &v93;
  v101 = 0;
  v130 = 0xAAAAAAAAAAAAAAAALL;
  *&v38 = 0xAAAAAAAAAAAAAAAALL;
  *(&v38 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v128 = v38;
  v129 = v38;
  v126 = v38;
  v127 = v38;
  v124 = v38;
  v125 = v38;
  v122 = v38;
  v123 = v38;
  v120 = v38;
  v121 = v38;
  v118 = v38;
  v119 = v38;
  v116 = v38;
  v117 = v38;
  v114 = v38;
  v115 = v38;
  v112 = v38;
  v113 = v38;
  v110 = v38;
  v111 = v38;
  v108 = v38;
  v109 = v38;
  v106 = v38;
  v107 = v38;
  v104 = v38;
  v105 = v38;
  *__p = v38;
  *&__p[16] = v38;
  v99 = 0xAAAAAAAAAAAAAAAALL;
  v100 = 0;
  if (!v36)
  {
    goto LABEL_133;
  }

  if (BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS == -1)
  {
    if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
    {
      goto LABEL_60;
    }
  }

  else
  {
    v44 = v36;
    dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS, &__block_literal_global_7);
    v36 = v44;
    if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
    {
LABEL_60:
      if (BBUpdaterCommon::inRestoreOS(void)::restoreOS)
      {
        goto LABEL_71;
      }

      goto LABEL_61;
    }
  }

  v45 = v36;
  dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS, &__block_literal_global_13);
  v36 = v45;
  if (BBUpdaterCommon::inRestoreOS(void)::restoreOS)
  {
    goto LABEL_71;
  }

LABEL_61:
  if ((BBUpdaterCommon::inRestoreOS(void)::recoveryOS & 1) == 0)
  {
    PersonalizedFirmwarePath = ACFUDataAccess::createPersonalizedFirmwarePath(@"Baseband", v35);
    v101 = PersonalizedFirmwarePath;
    if (PersonalizedFirmwarePath)
    {
      GetBasebandTatsuTagToFileNameMap(bytes);
      RTKitFirmware::create();
      v40 = v98;
      v98 = 0;
      std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(bytes, *&bytes[8]);
      if (v40)
      {
        Manifest = ACFUFirmware::getManifest(v40);
        v43 = Manifest;
        goto LABEL_72;
      }

      ACFULogging::getLogInstance(v41);
      ACFULogging::handleMessage();
LABEL_136:
      v48 = 0;
      v49 = 0;
      goto LABEL_78;
    }

LABEL_133:
    ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage();
    PersonalizedFirmwarePath = 0;
    goto LABEL_136;
  }

LABEL_71:
  Manifest = ACFUFirmware::getManifest(v36);
  v43 = Manifest;
  PersonalizedFirmwarePath = 0;
  v40 = 0;
LABEL_72:
  if (!v43 || (v46 = CFDataGetBytePtr(v43), v47 = CFDataGetLength(v43), Manifest = Img4DecodeInitManifest(v46, v47, __p), Manifest) || (Img4DecodeGetObjectPropertyData(__p, 1296125520, 1886546793, &v100, &v99), Manifest))
  {
    ACFULogging::getLogInstance(Manifest);
  }

  else
  {
    v48 = CFDataCreate(v10, v100, v99);
    theDict = v48;
    if (v48)
    {
      v49 = 1;
      if (!v40)
      {
        goto LABEL_78;
      }

      goto LABEL_77;
    }

    ACFULogging::getLogInstance(0);
  }

  ACFULogging::handleMessage();
  v48 = 0;
  v49 = 0;
  if (v40)
  {
LABEL_77:
    (*(*v40 + 56))(v40);
  }

LABEL_78:
  if (PersonalizedFirmwarePath)
  {
    CFRelease(PersonalizedFirmwarePath);
    v48 = theDict;
    v50 = v84;
    v34 = *v84;
    if (theDict)
    {
      goto LABEL_80;
    }
  }

  else
  {
    v50 = &v93;
    v34 = v93;
    if (v48)
    {
LABEL_80:
      *v50 = v48;
      if (v34)
      {
        goto LABEL_84;
      }

      goto LABEL_85;
    }
  }

  *v50 = 0;
  if (v34)
  {
LABEL_84:
    CFRelease(v34);
  }

LABEL_85:
  if (v86 && !atomic_fetch_add(&v86->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v86->__on_zero_shared)(v86);
    std::__shared_weak_count::__release_weak(v86);
  }

  if ((v49 & 1) == 0)
  {
    ACFULogging::getLogInstance(v34);
LABEL_175:
    ACFULogging::handleMessage();
    goto LABEL_152;
  }

LABEL_89:
  if (!v93)
  {
    ACFULogging::getLogInstance(v34);
    goto LABEL_131;
  }

  CFDictionaryAddValue(v12, @"SKeyHash", v93);
  v52 = capabilities::radio::vendor(v51);
  if (v52 != 3)
  {
    goto LABEL_111;
  }

  *bytes = 0;
  *&bytes[8] = &v89;
  theDict = 0;
  v53 = dlopen("/usr/local/lib/libVinylNonUpdater.dylib", 1);
  v54 = v53;
  if (!v53)
  {
    v52 = v89;
    goto LABEL_109;
  }

  v55 = dlsym(v53, "VinyleUICCPerformOperation");
  if (v55)
  {
    v56 = v55(0, &theDict, a6, 1);
    ACFULogging::getLogInstance(v56);
    v57 = ACFULogging::handleMessage();
    Copy = 0;
    if (!v56 && theDict)
    {
      ACFULogging::getLogInstance(v57);
      v59 = operator new(0x30uLL);
      strcpy(v59, "BasebandProvisioning::copyVinylEidSinope");
      HIBYTE(v81[1]) = 0;
      strcpy(v81, "copyVinylEidSinoProvisioning::");
      *__p = v59;
      *&__p[8] = xmmword_1E5391330;
      ACFULogging::handleMessageCFType();
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      v60 = CFDictionaryGetValue(theDict, @"EID");
      if (v60 && (TypeID = CFStringGetTypeID(), v62 = CFGetTypeID(v60), TypeID == v62))
      {
        ACFULogging::getLogInstance(v62);
        v63 = operator new(0x30uLL);
        *v63 = 0x646E616265736142;
        *(v63 + 10) = 14906;
        *(v63 + 4) = DWORD2(v81[1]);
        *(v63 + 1) = *&v81[1];
        strcpy(v63 + 38, "pe");
        *(v63 + 22) = v81[0];
        *__p = v63;
        *&__p[8] = xmmword_1E5391330;
        ACFULogging::handleMessageCFType();
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        Copy = CFStringCreateCopy(v10, v60);
        *bytes = Copy;
      }

      else
      {
        Copy = 0;
      }

      CFRelease(theDict);
    }
  }

  else
  {
    Copy = 0;
  }

  dlclose(v54);
  v52 = v89;
  if (!Copy)
  {
LABEL_109:
    v89 = 0;
    if (!v52)
    {
      goto LABEL_111;
    }

    goto LABEL_110;
  }

  v89 = Copy;
  if (!v52)
  {
    goto LABEL_111;
  }

LABEL_110:
  CFRelease(v52);
LABEL_111:
  if (v89)
  {
    CFDictionaryAddValue(v12, @"EID", v89);
  }

  if ((v9 & 1) != 0 || capabilities::radio::vendor(v52) != 3)
  {
    goto LABEL_151;
  }

  *bytes = 0;
  *&bytes[8] = &v88;
  theDict = 0;
  v84 = &v87;
  *&v107 = 0xAAAAAAAAAAAAAAAALL;
  *&v64 = 0xAAAAAAAAAAAAAAAALL;
  *(&v64 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v105 = v64;
  v106 = v64;
  *&__p[16] = v64;
  v104 = v64;
  *__p = v64;
  v101 = 0xAAAAAAAAAAAAAAAALL;
  support::transport::ARI::create("BasebandProvisioning", 0x2710, 0, 0, &v101);
  v66 = v101;
  if (!v101 || (v67 = *(v101 + 3), v65 = KTLGetIMEI_V2(), (v65 & 1) == 0))
  {
    ACFULogging::getLogInstance(v65);
    ACFULogging::handleMessage();
    if (!v66)
    {
      goto LABEL_141;
    }

    (*(*v66 + 8))(v66);
LABEL_140:
    v66 = 0;
    goto LABEL_141;
  }

  v68 = (*(*v66 + 8))(v66);
  ACFULogging::getLogInstance(v68);
  v69 = ACFULogging::handleMessage();
  ACFULogging::getLogInstance(v69);
  ACFULogging::handleMessage();
  v66 = CFStringCreateWithCString(v10, __p, 0x8000100u);
  *bytes = v66;
  if (!v66)
  {
    ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage();
    goto LABEL_140;
  }

  v70 = CFStringCreateWithCString(v10, &__p[20], 0x8000100u);
  theDict = v70;
  if (v70)
  {
    v71 = v87;
    v87 = v70;
    if (v71)
    {
      CFRelease(v71);
    }

    v72 = v88;
    v88 = v66;
    if (!v72)
    {
      goto LABEL_148;
    }

    v73 = 1;
    goto LABEL_146;
  }

  ACFULogging::getLogInstance(0);
  ACFULogging::handleMessage();
LABEL_141:
  v75 = v87;
  v87 = 0;
  if (v75)
  {
    CFRelease(v75);
  }

  v72 = v88;
  if (!v66)
  {
    v88 = 0;
    if (v72)
    {
      CFRelease(v72);
    }

    goto LABEL_174;
  }

  v88 = v66;
  if (!v72)
  {
LABEL_174:
    ACFULogging::getLogInstance(v72);
    goto LABEL_175;
  }

  v73 = 0;
LABEL_146:
  CFRelease(v72);
  if (!v73)
  {
    goto LABEL_174;
  }

  v66 = v88;
LABEL_148:
  CFDictionaryAddValue(v12, @"IMEI", v66);
  if (v87)
  {
    v76 = CFStringGetLength(v87);
    if (v76)
    {
      ACFULogging::getLogInstance(v76);
      CFStringGetLength(v87);
      ACFULogging::handleMessage();
      CFDictionaryAddValue(v12, @"IMEI2", v87);
    }
  }

LABEL_151:
  *v82 = v12;
LABEL_152:
  v74 = 1;
LABEL_153:
  if (v87)
  {
    CFRelease(v87);
  }

  if (v88)
  {
    CFRelease(v88);
  }

  if (v89)
  {
    CFRelease(v89);
  }

  v77 = v91;
  if (!v91 || atomic_fetch_add(&v91->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v78 = v93;
    if (!v93)
    {
      goto LABEL_163;
    }

    goto LABEL_162;
  }

  (v77->__on_zero_shared)(v77);
  std::__shared_weak_count::__release_weak(v77);
  v78 = v93;
  if (v93)
  {
LABEL_162:
    CFRelease(v78);
  }

LABEL_163:
  if (v94)
  {
    CFRelease(v94);
  }

  if (value)
  {
    CFRelease(value);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v79 = *MEMORY[0x1E69E9840];
  return v74;
}

void sub_1E5295E50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, const void *a21, uint64_t a22, uint64_t a23, uint64_t a24, const void *a25, const void *a26, const void *a27, __int16 a28, uint64_t a29, uint64_t a30, const void *a31, const void *a32, uint64_t a33, const void *a34, const void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, const void *a40)
{
  ctu::cf::detail::TakeOwnershipProxy<__CFString const>::~TakeOwnershipProxy(&a21);
  ctu::cf::detail::TakeOwnershipProxy<__CFString const>::~TakeOwnershipProxy(&a40);
  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef(&a25);
  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef(&a26);
  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef(&a27);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a28);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a31);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a32);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a34);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a35);
  _Unwind_Resume(a1);
}

const void **ctu::cf::detail::TakeOwnershipProxy<__CFString const>::~TakeOwnershipProxy(const void **a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *v2;
  if (v3)
  {
    *v2 = v3;
    if (v4)
    {
      goto LABEL_5;
    }
  }

  else
  {
    *v2 = 0;
    if (v4)
    {
LABEL_5:
      CFRelease(v4);
    }
  }

  return a1;
}

uint64_t configureProvisioner(std::string *a1, CFDictionaryRef theDict)
{
  v24 = 0xAAAAAAAA0000003CLL;
  memset(&v23, 0, sizeof(v23));
  Value = CFDictionaryGetValue(theDict, @"AuthInstallProvisioningServerURL");
  v4 = Value;
  if (!Value)
  {
    ACFULogging::getLogInstance(0);
    goto LABEL_38;
  }

  v5 = CFGetTypeID(Value);
  TypeID = CFStringGetTypeID();
  if (v5 != TypeID)
  {
    ACFULogging::getLogInstance(TypeID);
    goto LABEL_38;
  }

  CStringPtr = CFStringGetCStringPtr(v4, 0x8000100u);
  std::string::__assign_external(&v23, CStringPtr);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v21, v23.__r_.__value_.__l.__data_, v23.__r_.__value_.__l.__size_);
  }

  else
  {
    v21 = v23;
  }

  v22 = v24;
  if (&v21 != a1)
  {
    if (SHIBYTE(a1->__r_.__value_.__r.__words[2]) < 0)
    {
      if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v8 = &v21;
      }

      else
      {
        v8 = v21.__r_.__value_.__r.__words[0];
      }

      if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v21.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v21.__r_.__value_.__l.__size_;
      }

      std::string::__assign_no_alias<false>(&a1->__r_.__value_.__l.__data_, v8, size);
    }

    else if ((*(&v21.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>(a1, v21.__r_.__value_.__l.__data_, v21.__r_.__value_.__l.__size_);
    }

    else
    {
      *a1 = v21;
    }
  }

  LODWORD(a1[1].__r_.__value_.__l.__data_) = v22;
  v10 = dispatch_queue_create("BasebandProvisioning", 0);
  v11 = a1[1].__r_.__value_.__l.__size_;
  a1[1].__r_.__value_.__l.__size_ = v10;
  if (v11)
  {
    dispatch_release(v11);
    v10 = a1[1].__r_.__value_.__l.__size_;
  }

  if (!v10)
  {
    goto LABEL_40;
  }

  getReverseProxySettings(a1, &v25);
  v12 = &a1[1].__r_.__value_.__r.__words[2];
  if (v12 != &v25)
  {
    v13 = *v12;
    v14 = v25;
    *v12 = v25;
    v25 = 0;
    if (!v13)
    {
      goto LABEL_27;
    }

    CFRelease(v13);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  v14 = *v12;
LABEL_27:
  if (!v14)
  {
LABEL_40:
    ACFULogging::getLogInstance(0);
    goto LABEL_41;
  }

  v15 = CFGetTypeID(v14);
  v16 = CFDictionaryGetTypeID();
  ACFULogging::getLogInstance(v16);
  if (v15 == v16)
  {
    v17 = ACFULogging::handleMessage();
    v18 = 1;
    if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_41:
  v17 = ACFULogging::handleMessage();
  v18 = 0;
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_30:
    operator delete(v21.__r_.__value_.__l.__data_);
  }

LABEL_31:
  if ((v18 & 1) == 0)
  {
    ACFULogging::getLogInstance(v17);
LABEL_38:
    ACFULogging::handleMessage();
    v19 = 0;
    if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return v19;
    }

    goto LABEL_39;
  }

  v19 = 1;
  if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    return v19;
  }

LABEL_39:
  operator delete(v23.__r_.__value_.__l.__data_);
  return v19;
}

void sub_1E52963BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((a24 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a24 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a19);
  _Unwind_Resume(exception_object);
}

uint64_t provisionBaseband(ACFULogging *a1, uint64_t *a2, ACFUFirmware **a3, __CFDictionary **a4, uint64_t *a5)
{
  v66 = a4;
  v79 = 0xAAAAAAAAAAAAAAAALL;
  memset(&v78, 0, sizeof(v78));
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v76 = 0;
  cf = 0;
  theDict = 0;
  ACFULogging::getLogInstance(a1);
  v9 = ACFULogging::handleMessage();
  if (!a1 || !*a2 || !*a3 || !v66)
  {
    ACFULogging::getLogInstance(v9);
    goto LABEL_80;
  }

  v10 = configureProvisioner(&v78, a1);
  if ((v10 & 1) == 0)
  {
    ACFULogging::getLogInstance(v10);
    goto LABEL_80;
  }

  ACFULogging::getLogInstance(v10);
  ACFULogging::handleMessage();
  APProvisioningInfo = createAPProvisioningInfo(&cf);
  if ((APProvisioningInfo & 1) == 0 || (v12 = cf) == 0)
  {
    ACFULogging::getLogInstance(APProvisioningInfo);
    goto LABEL_80;
  }

  CFRetain(cf);
  v13 = v83;
  *&v83 = v12;
  if (v13)
  {
    CFRelease(v13);
  }

  CFRelease(v12);
  ACFULogging::getLogInstance(v14);
  v15 = operator new(0x30uLL);
  strcpy(v15, "BasebandProvisioning::provisionBaseband");
  HIBYTE(v65[1]) = 0;
  strcpy(v65, "provisionBasebanProvisioning::");
  v85[0] = v15;
  *&v85[1] = xmmword_1E5391340;
  ACFULogging::handleMessageCFType();
  if (SHIBYTE(v85[2]) < 0)
  {
    operator delete(v85[0]);
  }

  v17 = a2[1];
  v73 = *a2;
  v74 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = a3[1];
  v71 = *a3;
  v72 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v19 = a5[1];
  v69 = *a5;
  v70 = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v20 = createBasebandProvInfo(1, &v73, &v71, &v76, v16, a1);
  v21 = v20;
  if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
  }

  v22 = v72;
  if (v72 && !atomic_fetch_add(&v72->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
  }

  v23 = v74;
  if (v74 && !atomic_fetch_add(&v74->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
  }

  if ((v21 & 1) == 0)
  {
    goto LABEL_73;
  }

  v24 = v76;
  if (!v76)
  {
    goto LABEL_73;
  }

  CFRetain(v76);
  v25 = *(&v83 + 1);
  *(&v83 + 1) = v24;
  if (v25)
  {
    CFRelease(v25);
  }

  CFRelease(v24);
  ACFULogging::getLogInstance(v26);
  v27 = operator new(0x30uLL);
  *v27 = 0x646E616265736142;
  *(v27 + 10) = 14906;
  *(v27 + 4) = DWORD2(v65[1]);
  *(v27 + 1) = *&v65[1];
  *(v27 + 19) = 100;
  *(v27 + 22) = v65[0];
  v85[0] = v27;
  *&v85[1] = xmmword_1E5391340;
  v28 = ACFULogging::handleMessageCFType();
  if (SHIBYTE(v85[2]) < 0)
  {
    operator delete(v85[0]);
  }

  ACFULogging::getLogInstance(v28);
  ACFULogging::handleMessage();
  v29 = BasebandProvisioning::sendServerReq(&v78, @"100", a1, &theDict);
  v30 = v29;
  ACFULogging::getLogInstance(v29);
  if (!v30)
  {
    goto LABEL_77;
  }

  v31 = operator new(0x30uLL);
  strcpy(v31, "BasebandProvisioning::createProvisionedInfo");
  v65[1] = *"createProvisionedInfo";
  v85[0] = v31;
  v65[0] = xmmword_1E5391350;
  *&v85[1] = xmmword_1E5391350;
  ACFULogging::handleMessageCFType();
  if (SHIBYTE(v85[2]) < 0)
  {
    operator delete(v85[0]);
  }

  Value = CFDictionaryGetValue(theDict, @"STATUS");
  ACFULogging::getLogInstance(Value);
  if (!Value)
  {
LABEL_77:
    v62 = ACFULogging::handleMessage();
    ACFULogging::getLogInstance(v62);
    goto LABEL_80;
  }

  v33 = operator new(0x30uLL);
  qmemcpy(v33, "BasebandProvisioning::", 22);
  *(v33 + 22) = v65[1];
  strcpy(v33 + 35, "onedInfo");
  v85[0] = v33;
  *&v85[1] = v65[0];
  ACFULogging::handleMessageCFType();
  if (SHIBYTE(v85[2]) < 0)
  {
    operator delete(v85[0]);
  }

  v34 = CFStringCompare(Value, @"0", 0);
  if (v34)
  {
    ACFULogging::getLogInstance(v34);
    goto LABEL_77;
  }

  ACFULogging::getLogInstance(0);
  v35 = ACFULogging::handleMessage();
  v36 = *a5;
  v37 = a5[1];
  v67 = v36;
  v68 = v37;
  if (v37)
  {
    atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v20 = capabilities::radio::vendor(v35);
  if (v20 != 3)
  {
    goto LABEL_59;
  }

  v38 = operator new(0xC02uLL);
  v39 = operator new(0xACuLL);
  bzero(v38, 0xC02uLL);
  *(v39 + 39) = 0u;
  *(v39 + 8) = 0u;
  *(v39 + 9) = 0u;
  *(v39 + 6) = 0u;
  *(v39 + 7) = 0u;
  *(v39 + 4) = 0u;
  *(v39 + 5) = 0u;
  *(v39 + 2) = 0u;
  *(v39 + 3) = 0u;
  *v39 = 0u;
  *(v39 + 1) = 0u;
  if (!*(&v82 + 1))
  {
    ACFULogging::getLogInstance(0);
LABEL_86:
    v49 = 0;
    ACFULogging::handleMessage();
    goto LABEL_88;
  }

  *v38 = CFDataGetLength(*(&v82 + 1));
  v40 = *(&v82 + 1);
  v86.length = CFDataGetLength(*(&v82 + 1));
  v86.location = 0;
  CFDataGetBytes(v40, v86, v38 + 2);
  ACFULogging::getLogInstance(v41);
  v63 = *v38;
  ACFULogging::handleMessage();
  LODWORD(v42) = *v38;
  if (*v38)
  {
    v43 = 0;
    v44 = 0;
    do
    {
      v45 = v43 + v42;
      v85[1] = 0xAAAAAAAAAAAAAAAALL;
      v85[2] = 0xAAAAAAAAAAAAAAAALL;
      if (v45 >= 0x10)
      {
        v46 = 16;
      }

      else
      {
        v46 = v45;
      }

      v85[0] = 0xAAAAAAAAAAAAAAAALL;
      v47 = ctu::hex(&v38[v44 + 2], v46);
      ACFULogging::getLogInstance(v47);
      ACFULogging::handleMessage();
      if (SHIBYTE(v85[2]) < 0)
      {
        operator delete(v85[0]);
      }

      v44 += 16;
      v42 = *v38;
      v43 -= 16;
    }

    while (v44 < v42);
  }

  support::transport::ARI::create("BasebandProvisioning", 0x2710, 0, 0, v85);
  v49 = v85[0];
  if (!v85[0])
  {
    ACFULogging::getLogInstance(v48);
    goto LABEL_86;
  }

  v50 = *(v85[0] + 3);
  v51 = KTLFinishProvision();
  if (v51)
  {
    memset(v85, 170, 24);
    ctu::hex((v39 + 11), 7);
    memset(v84, 170, sizeof(v84));
    v52 = ctu::hex((v39 + 15), 7);
    ACFULogging::getLogInstance(v52);
    v53 = ACFULogging::handleMessage();
    ACFULogging::getLogInstance(v53);
    ACFULogging::handleMessage();
    if (SHIBYTE(v84[2]) < 0)
    {
      operator delete(v84[0]);
      if ((SHIBYTE(v85[2]) & 0x80000000) == 0)
      {
        goto LABEL_56;
      }
    }

    else if ((SHIBYTE(v85[2]) & 0x80000000) == 0)
    {
      goto LABEL_56;
    }

    operator delete(v85[0]);
LABEL_56:
    v54 = 1;
    operator delete(v39);
    operator delete(v38);
    if (!v49)
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

  ACFULogging::getLogInstance(v51);
  v64 = v39[5];
  ACFULogging::handleMessage();
LABEL_88:
  v54 = 0;
  operator delete(v39);
  operator delete(v38);
  if (v49)
  {
LABEL_57:
    v20 = (*(*v49 + 8))(v49);
  }

LABEL_58:
  if ((v54 & 1) == 0)
  {
    ACFULogging::getLogInstance(v20);
    v20 = ACFULogging::handleMessage();
    v55 = 0;
    if (!v37)
    {
      goto LABEL_62;
    }

    goto LABEL_60;
  }

LABEL_59:
  v55 = 1;
  if (!v37)
  {
    goto LABEL_62;
  }

LABEL_60:
  if (!atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v37->__on_zero_shared)(v37);
    std::__shared_weak_count::__release_weak(v37);
  }

LABEL_62:
  if ((v55 & 1) == 0)
  {
LABEL_73:
    ACFULogging::getLogInstance(v20);
    goto LABEL_80;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v57 = Mutable;
  if (!Mutable)
  {
    ACFULogging::getLogInstance(0);
LABEL_80:
    ACFULogging::handleMessage();
    v59 = 0;
    v60 = theDict;
    if (!theDict)
    {
      goto LABEL_66;
    }

    goto LABEL_65;
  }

  CFDictionaryAddValue(Mutable, @"ProvisionedInfo", theDict);
  CFDictionaryAddValue(v57, @"BasebandProvInfo", v76);
  *v66 = v57;
  ACFULogging::getLogInstance(v58);
  ACFULogging::handleMessage();
  v59 = 1;
  v60 = theDict;
  if (theDict)
  {
LABEL_65:
    CFRelease(v60);
  }

LABEL_66:
  BasebandProvisioning::~BasebandProvisioning(&v78);
  return v59;
}

void sub_1E5296EC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, char a23, uint64_t a24, char a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  if (*(v35 - 89) < 0)
  {
    operator delete(*(v35 - 112));
    operator delete(v33);
    operator delete(v32);
    if (!v34)
    {
LABEL_4:
      std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a21);
      BasebandProvisioning::~BasebandProvisioning(&a32);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    operator delete(v33);
    operator delete(v32);
    if (!v34)
    {
      goto LABEL_4;
    }
  }

  (*(*v34 + 8))(v34);
  goto LABEL_4;
}

void sub_1E529704C()
{
  operator delete(v1);
  operator delete(v0);
  if (!v2)
  {
    JUMPOUT(0x1E529700CLL);
  }

  JUMPOUT(0x1E5296FE4);
}

void sub_1E5297088()
{
  if (*(v2 - 89) < 0)
  {
    operator delete(*(v2 - 112));
  }

  operator delete(v1);
  operator delete(v0);
  JUMPOUT(0x1E529700CLL);
}

uint64_t createAPProvisioningInfo(__CFDictionary **a1)
{
  v61 = *MEMORY[0x1E69E9840];
  ACFULogging::getLogInstance(a1);
  if (!a1)
  {
    goto LABEL_68;
  }

  ACFULogging::handleMessage();
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    ACFULogging::getLogInstance(0);
    goto LABEL_68;
  }

  v4 = Mutable;
  if (BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::onceToken == -1)
  {
    v5 = BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer;
    if (!BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer)
    {
      goto LABEL_8;
    }
  }

  else
  {
    dispatch_once(&BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::onceToken, &__block_literal_global_6);
    v5 = BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer;
    if (!BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer)
    {
      goto LABEL_8;
    }
  }

  v6 = v5(@"MLBSerialNumber", 0);
  if (v6)
  {
    v7 = v6;
    CFDictionarySetValue(v4, @"MLB", v6);
    CFRelease(v7);
  }

  if (BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::onceToken != -1)
  {
    dispatch_once(&BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::onceToken, &__block_literal_global_6);
    v8 = BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer;
    if (!BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

LABEL_8:
  v8 = BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer;
  if (!BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer)
  {
    goto LABEL_12;
  }

LABEL_9:
  v9 = v8(@"ModelNumber", 0);
  if (v9)
  {
    v10 = v9;
    CFDictionarySetValue(v4, @"MPN", v9);
    CFRelease(v10);
  }

  if (BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::onceToken != -1)
  {
    dispatch_once(&BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::onceToken, &__block_literal_global_6);
    v11 = BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer;
    if (!BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

LABEL_12:
  v11 = BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer;
  if (!BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer)
  {
    goto LABEL_16;
  }

LABEL_13:
  v12 = v11(@"RegionInfo", 0);
  if (v12)
  {
    v13 = v12;
    CFDictionarySetValue(v4, @"RGN", v12);
    CFRelease(v13);
  }

  if (BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::onceToken != -1)
  {
    dispatch_once(&BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::onceToken, &__block_literal_global_6);
    v14 = BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer;
    if (!BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer)
    {
      goto LABEL_22;
    }

    goto LABEL_17;
  }

LABEL_16:
  v14 = BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer;
  if (!BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer)
  {
    goto LABEL_22;
  }

LABEL_17:
  v15 = v14(@"UniqueChipID", 0);
  if (v15)
  {
    v16 = v15;
    *&valuePtr[0] = 0;
    if (CFNumberGetValue(v15, kCFNumberSInt64Type, valuePtr))
    {
      v17 = CFStringCreateWithFormat(v2, 0, @"%qu", *&valuePtr[0], "createAPProvisioningInfo");
      if (!v17)
      {
        ACFULogging::getLogInstance(0);
        goto LABEL_68;
      }

      v18 = v17;
      CFDictionarySetValue(v4, @"ECID", v17);
      CFRelease(v18);
    }

    CFRelease(v16);
  }

LABEL_22:
  *&v19 = 0xAAAAAAAAAAAAAAAALL;
  *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
  valuePtr[6] = v19;
  valuePtr[7] = v19;
  valuePtr[4] = v19;
  valuePtr[5] = v19;
  valuePtr[2] = v19;
  valuePtr[3] = v19;
  valuePtr[0] = v19;
  valuePtr[1] = v19;
  v59 = 128;
  v20 = sysctlbyname("hw.target", valuePtr, &v59, 0, 0);
  if (v20)
  {
    ACFULogging::getLogInstance(v20);
    v21 = __error();
    strerror(*v21);
    ACFULogging::handleMessage();
    v22 = @"unknown";
  }

  else
  {
    v22 = CFStringCreateWithCString(v2, valuePtr, 0x8000100u);
    if (!v22)
    {
      goto LABEL_32;
    }
  }

  MutableCopy = CFStringCreateMutableCopy(v2, 0, v22);
  CFStringLowercase(MutableCopy, 0);
  Length = CFStringGetLength(MutableCopy);
  if (CFStringHasSuffix(MutableCopy, @"ap") == 1)
  {
    v25 = -2;
    v26.length = 2;
  }

  else
  {
    if (CFStringHasSuffix(MutableCopy, @"dev") != 1)
    {
      goto LABEL_30;
    }

    v25 = -3;
    v26.length = 3;
  }

  v26.location = v25 + Length;
  CFStringDelete(MutableCopy, v26);
LABEL_30:
  CFRelease(v22);
  if (MutableCopy)
  {
    CFStringUppercase(MutableCopy, 0);
    CFDictionarySetValue(v4, @"PRODUCT", MutableCopy);
    CFRelease(MutableCopy);
  }

LABEL_32:
  if (BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::onceToken == -1)
  {
    v27 = BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer;
    if (!BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer)
    {
      goto LABEL_36;
    }
  }

  else
  {
    dispatch_once(&BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::onceToken, &__block_literal_global_6);
    v27 = BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer;
    if (!BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer)
    {
      goto LABEL_36;
    }
  }

  v28 = v27(@"SerialNumber", 0);
  if (v28)
  {
    v29 = v28;
    CFDictionarySetValue(v4, @"SN", v28);
    CFRelease(v29);
  }

LABEL_36:
  v30 = copy_mac_address_existence(@"WifiAddress");
  if (v30)
  {
    v31 = v30;
    CFDictionarySetValue(v4, @"WIFI_MAC", v30);
    CFRelease(v31);
  }

  v32 = copy_mac_address_existence(@"BluetoothAddress");
  if (v32)
  {
    v33 = v32;
    CFDictionarySetValue(v4, @"BT_MAC", v32);
    CFRelease(v33);
  }

  v34 = copy_mac_address_existence(@"EthernetMacAddress");
  if (v34)
  {
    v35 = v34;
    CFDictionarySetValue(v4, @"USB_ETHER_MAC", v34);
    CFRelease(v35);
  }

  v36 = copy_mac_address_existence(@"SecondaryWifiMacAddress");
  if (v36)
  {
    v37 = v36;
    CFDictionarySetValue(v4, @"WIFI_MAC2", v36);
    CFRelease(v37);
  }

  v38 = copy_mac_address_existence(@"SecondaryBluetoothMacAddress");
  if (v38)
  {
    v39 = v38;
    CFDictionarySetValue(v4, @"BT_MAC2", v38);
    CFRelease(v39);
  }

  v40 = copy_mac_address_existence(@"SecondaryEthernetMacAddress");
  if (v40)
  {
    v41 = v40;
    CFDictionarySetValue(v4, @"ETH_MAC", v40);
    CFRelease(v41);
  }

  v42 = copy_mac_address_existence(@"ExtendedLOMMacAddress");
  if (v42)
  {
    v43 = v42;
    CFDictionarySetValue(v4, @"ETHER_MAC2", v42);
    CFRelease(v43);
  }

  v44 = copy_mac_address_existence(@"PintoMacAddress");
  if (v44)
  {
    v45 = v44;
    CFDictionarySetValue(v4, @"PINTO_MAC", v44);
    CFRelease(v45);
  }

  v46 = copy_mac_address_existence(@"ThreadRadioMacAddressForProvisioning");
  if (v46)
  {
    v47 = v46;
    CFDictionarySetValue(v4, @"T_MAC", v46);
    CFRelease(v47);
  }

  if (BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::onceToken == -1)
  {
    v48 = BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer;
    if (!BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer)
    {
      goto LABEL_59;
    }
  }

  else
  {
    dispatch_once(&BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::onceToken, &__block_literal_global_6);
    v48 = BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer;
    if (!BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer)
    {
      goto LABEL_59;
    }
  }

  v49 = v48(@"UniqueDeviceID", 0);
  if (v49)
  {
    v50 = v49;
    CFDictionarySetValue(v4, @"UDID", v49);
    CFRelease(v50);
  }

  if (BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::onceToken != -1)
  {
    dispatch_once(&BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::onceToken, &__block_literal_global_6);
    v51 = BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer;
    if (!BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer)
    {
      goto LABEL_65;
    }

    goto LABEL_60;
  }

LABEL_59:
  v51 = BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer;
  if (!BBUpdaterCommon::BBUMGCopyAnswer(__CFString const*)::sCopyAnswer)
  {
LABEL_65:
    *a1 = v4;
    result = 1;
    v57 = *MEMORY[0x1E69E9840];
    return result;
  }

LABEL_60:
  v52 = v51(@"BoardId", 0);
  if (!v52)
  {
    goto LABEL_65;
  }

  v53 = v52;
  *&valuePtr[0] = 0;
  if (!CFNumberGetValue(v52, kCFNumberSInt64Type, valuePtr))
  {
LABEL_64:
    CFRelease(v53);
    goto LABEL_65;
  }

  v54 = CFStringCreateWithFormat(v2, 0, @"%qx", *&valuePtr[0]);
  if (v54)
  {
    v55 = v54;
    CFDictionarySetValue(v4, @"BoardId", v54);
    CFRelease(v55);
    goto LABEL_64;
  }

  ACFULogging::getLogInstance(0);
LABEL_68:
  ACFULogging::handleMessage();
  result = 0;
  v58 = *MEMORY[0x1E69E9840];
  return result;
}
CFDictionaryRef get_asp_magazine_stats_dict(int a1, int a2)
{
  v6 = 0;
  v7 = 0;
  if (!getStatsMagazineBufferFromPast(0, a1, a2, &v7, &v6))
  {
    return 0;
  }

  if (a2)
  {
    v3 = 1;
  }

  else
  {
    v3 = 3;
  }

  stats_dict = _get_stats_dict(v7, v6 >> 3, v3);
  free(v7);
  return stats_dict;
}

CFDictionaryRef _get_stats_dict(char *a1, int a2, uint64_t a3)
{
  v743 = *MEMORY[0x277D85DE8];
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    Copy = 0;
    goto LABEL_4198;
  }

  v7 = Mutable;
  if (!a2)
  {
    goto LABEL_4196;
  }

  v8 = a3 & 3;
  v737 = 0;
  v738 = 0;
  v736 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  do
  {
    v15 = *a1;
    v14 = a1 + 8;
    v13 = v15;
    v16 = HIDWORD(v15);
    if ((a2 - 1) < HIDWORD(v15))
    {
      break;
    }

    capacity = v16;
    v739 = a2 - 1;
    if (v13 > 49)
    {
      if (v13 > 128)
      {
        if (v13 == 129)
        {
          v11 = *v14;
          v17 = "pagesPerVirtualBlockSlc";
          goto LABEL_30;
        }

        if (v13 == 677)
        {
          v12 = *v14;
          v17 = "magazineInstanceMeta";
          goto LABEL_30;
        }
      }

      else
      {
        if (v13 == 50)
        {
          v736 = *v14;
          v17 = "pagesPerVirtualBlock";
          goto LABEL_30;
        }

        if (v13 == 84)
        {
          v10 = *v14;
          v17 = "intermediateBandErases";
          goto LABEL_30;
        }
      }
    }

    else if (v13 > 19)
    {
      if (v13 == 20)
      {
        v737 = *v14;
        v17 = "bandErases";
        goto LABEL_30;
      }

      if (v13 == 49)
      {
        v9 = *v14;
        v17 = "bytesPerPage";
        goto LABEL_30;
      }
    }

    else
    {
      if (v13 == 1)
      {
        v17 = "version";
        goto LABEL_30;
      }

      if (v13 == 4)
      {
        v738 = *v14;
        v17 = "hostWrites";
        goto LABEL_30;
      }
    }

    if ((a3 & 1) != 0 && v13 == 678)
    {
      v17 = "magazineResolutionRegionsSizes";
      goto LABEL_30;
    }

    if ((a3 & 1) != 0 && v13 == 679)
    {
      v17 = "magazineResolutionRegions";
      goto LABEL_30;
    }

    if ((a3 & 1) != 0 && v13 == 680)
    {
      v734 = v11;
      v735 = v9;
      v733 = v10;
      v20 = v12;
      v21 = v7;
      v22 = a3;
      v23 = v8;
      v24 = CFStringCreateWithCString(0, "magazineFWVersion", 0x8000100u);
      v25 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      v26 = v16;
      v27 = v25;
      if (v26)
      {
        if (capacity >= 3)
        {
          v28 = 3;
        }

        else
        {
          v28 = capacity;
        }

        v29 = v14;
        do
        {
          v30 = CFNumberCreate(0, kCFNumberSInt64Type, v29);
          CFArrayAppendValue(v27, v30);
          CFRelease(v30);
          v29 += 8;
          --v28;
        }

        while (v28);
      }

      v7 = v21;
      CFDictionarySetValue(v21, v24, v27);
      CFRelease(v27);
      CFRelease(v24);
      v8 = v23;
      a3 = v22;
      v12 = v20;
      v10 = v733;
      goto LABEL_44;
    }

    if ((a3 & 1) != 0 && v13 == 2)
    {
      v17 = "hostWriteXacts";
      goto LABEL_30;
    }

    if ((a3 & 1) != 0 && v13 == 3)
    {
      v17 = "hostReadXacts";
      goto LABEL_30;
    }

    if ((a3 & 1) != 0 && v13 == 5)
    {
      v17 = "hostWritesDyn";
      goto LABEL_30;
    }

    if ((a3 & 1) != 0 && v13 == 6)
    {
      v17 = "hostWritesStatic";
      goto LABEL_30;
    }

    if ((a3 & 1) != 0 && v13 == 27)
    {
      v17 = "hostWritesMeta";
      goto LABEL_30;
    }

    if ((a3 & 1) != 0 && v13 == 99)
    {
      v17 = "hostWritesPhoto";
      goto LABEL_30;
    }

    if ((a3 & 1) != 0 && v13 == 107)
    {
      v17 = "pushSyncWrites";
      goto LABEL_30;
    }

    if ((a3 & 1) != 0 && v13 == 1066)
    {
      v17 = "pushWrittenSegCombines";
      goto LABEL_30;
    }

    if ((a3 & 1) != 0 && v13 == 191)
    {
      v17 = "hostPassiveIO";
      goto LABEL_30;
    }

    if ((a3 & 1) != 0 && v13 == 7)
    {
      v17 = "hostReads";
      goto LABEL_30;
    }

    if ((a3 & 1) != 0 && v13 == 8)
    {
      v17 = "validLbas";
LABEL_30:
      v18 = CFStringCreateWithCString(0, v17, 0x8000100u);
      v19 = CFNumberCreate(0, kCFNumberSInt64Type, v14);
      if (v18)
      {
        goto LABEL_31;
      }

      goto LABEL_33;
    }

    v734 = v11;
    v735 = v9;
    v31 = v7;
    v732 = v8;
    if ((a3 & 1) != 0 && v13 == 9)
    {
      v32 = "shutdowns";
LABEL_99:
      v18 = CFStringCreateWithCString(0, v32, 0x8000100u);
LABEL_100:
      v19 = CFNumberCreate(0, kCFNumberSInt64Type, v14);
      goto LABEL_101;
    }

    if ((a3 & 1) != 0 && v13 == 10)
    {
      v32 = "boots";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 11)
    {
      v32 = "uncleanBoots";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 12)
    {
      v32 = "IND_pool_free";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 895)
    {
      v32 = "IND_pool_freeMinSilo";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 13)
    {
      v32 = "IND_pool_count";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 739)
    {
      v32 = "IND_pool_allocatedP";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 14)
    {
      v33 = CFStringCreateWithCString(0, "hostWriteLogHisto", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0xA)
        {
          v35 = 10;
        }

        else
        {
          v35 = capacity;
        }

        v36 = v14;
        do
        {
          v37 = CFNumberCreate(0, kCFNumberSInt64Type, v36);
          CFArrayAppendValue(v34, v37);
          CFRelease(v37);
          v36 += 8;
          --v35;
        }

        while (v35);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 15)
    {
      v33 = CFStringCreateWithCString(0, "hostReadLogHisto", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0xA)
        {
          v38 = 10;
        }

        else
        {
          v38 = capacity;
        }

        v39 = v14;
        do
        {
          v40 = CFNumberCreate(0, kCFNumberSInt64Type, v39);
          CFArrayAppendValue(v34, v40);
          CFRelease(v40);
          v39 += 8;
          --v38;
        }

        while (v38);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 17)
    {
      v32 = "wearLevMoves";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 18)
    {
      v32 = "nandWrites";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 19)
    {
      v32 = "nandReads";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 916)
    {
      v32 = "nandUtilWrites";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 917)
    {
      v32 = "nandUtilReads";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1024)
    {
      v32 = "blockErases";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1314)
    {
      v32 = "totalPadding";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1360)
    {
      v32 = "immediatePadding";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 414)
    {
      v32 = "ueccReads";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 22)
    {
      v32 = "numPfail";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 23)
    {
      v32 = "numEfail";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 24)
    {
      v32 = "numPerformanceRefreshes";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 404)
    {
      v32 = "numReliabilityRefreshes";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1274)
    {
      v32 = "numPerfOptionalRefreshes";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 817)
    {
      v32 = "readReconstructReliabilityRefreshes";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 818)
    {
      v32 = "readReconstructPerformanceRefreshes";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 819)
    {
      v32 = "readWithAuxReliabilityRefreshes";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 820)
    {
      v32 = "readWithAuxPerformanceRefreshes";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 28)
    {
      v32 = "numSleepOps";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 30)
    {
      v32 = "cntTimeWentBackWardOnBoot";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 31)
    {
      v32 = "cntTimeWentBackWard";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 337)
    {
      v32 = "cntCalTimeWentBackWard";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 34)
    {
      v32 = "powerOnHours";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 92)
    {
      v32 = "shutdownDuringGC";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 36)
    {
      v32 = "smartCritWarnings";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 37)
    {
      v32 = "numFlushes";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 190)
    {
      v32 = "numFences";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 38)
    {
      v32 = "numUnmap";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 39)
    {
      v32 = "numUnmapSec";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 41)
    {
      v32 = "clogProgram";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 42)
    {
      v32 = "clogPFail";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 43)
    {
      v32 = "clogRead";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 44)
    {
      v32 = "clogRFail";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 996)
    {
      v32 = "clogFindFail";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 997)
    {
      v32 = "clogFindBlank";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 998)
    {
      v32 = "clogFindUnc";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 999)
    {
      v32 = "clogFindUnexpected";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 45)
    {
      v32 = "maxHighEnduranceBlockErases";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 334)
    {
      v32 = "numFirmwareWrites";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 198)
    {
      v32 = "numSyscfgWrites";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 46)
    {
      v32 = "numFactoryBad";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 47)
    {
      v32 = "numGrownBad";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 379)
    {
      v32 = "numRetiredBlocks";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 48)
    {
      v32 = "numFreeVirtualBlocks";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 51)
    {
      v32 = "blocksPerVirtualBlock";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 52)
    {
      v32 = "numVirtualBlocks";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 53)
    {
      v32 = "exportVersion";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 54)
    {
      v33 = CFStringCreateWithCString(0, "ECBins", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0x64)
        {
          v41 = 100;
        }

        else
        {
          v41 = capacity;
        }

        v42 = v14;
        do
        {
          v43 = CFNumberCreate(0, kCFNumberSInt64Type, v42);
          CFArrayAppendValue(v34, v43);
          CFRelease(v43);
          v42 += 8;
          --v41;
        }

        while (v41);
      }

      goto LABEL_120;
    }

    if ((a3 & 2) != 0 && v13 == 55)
    {
      v33 = CFStringCreateWithCString(0, "RCBins", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0x64)
        {
          v44 = 100;
        }

        else
        {
          v44 = capacity;
        }

        v45 = v14;
        do
        {
          v46 = CFNumberCreate(0, kCFNumberSInt64Type, v45);
          CFArrayAppendValue(v34, v46);
          CFRelease(v46);
          v45 += 8;
          --v44;
        }

        while (v44);
      }

      goto LABEL_120;
    }

    if ((a3 & 2) != 0 && v13 == 56)
    {
      v32 = "utilFormatTime";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 57)
    {
      v32 = "calendarTime";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 58)
    {
      v32 = "wallTime";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 791)
    {
      v32 = "lastRTCtime";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1189)
    {
      v32 = "lastLbaFormatTime";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1325)
    {
      v32 = "lastWipe";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1190)
    {
      v33 = CFStringCreateWithCString(0, "powerDownTime", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0xB)
        {
          v47 = 11;
        }

        else
        {
          v47 = capacity;
        }

        v48 = v14;
        do
        {
          v49 = CFNumberCreate(0, kCFNumberSInt64Type, v48);
          CFArrayAppendValue(v34, v49);
          CFRelease(v49);
          v48 += 8;
          --v47;
        }

        while (v47);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 1244)
    {
      v32 = "calendarTimeWentBackward";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 90)
    {
      v33 = CFStringCreateWithCString(0, "qosPerCmdQ", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0xA0)
        {
          v50 = 160;
        }

        else
        {
          v50 = capacity;
        }

        v51 = v14;
        do
        {
          v52 = CFNumberCreate(0, kCFNumberSInt64Type, v51);
          CFArrayAppendValue(v34, v52);
          CFRelease(v52);
          v51 += 8;
          --v50;
        }

        while (v50);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 91)
    {
      v33 = CFStringCreateWithCString(0, "maxQosPerCmdQ", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0xA)
        {
          v53 = 10;
        }

        else
        {
          v53 = capacity;
        }

        v54 = v14;
        do
        {
          v55 = CFNumberCreate(0, kCFNumberSInt64Type, v54);
          CFArrayAppendValue(v34, v55);
          CFRelease(v55);
          v54 += 8;
          --v53;
        }

        while (v53);
      }

      goto LABEL_120;
    }

    if ((a3 & 2) != 0 && v13 == 59)
    {
      v32 = "cmdq_flush_us";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 60)
    {
      v32 = "cmdq_unmap_us";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 61)
    {
      v32 = "cmdq_pri0_r_us";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 62)
    {
      v32 = "cmdq_pri0_w_us";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 63)
    {
      v32 = "cmdq_pri1_r_us";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 64)
    {
      v32 = "cmdq_pri1_w_us";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 65)
    {
      v32 = "cmdq_pri2_r_us";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 66)
    {
      v32 = "cmdq_pri2_w_us";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 67)
    {
      v32 = "cmdq_pri3_r_us";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 68)
    {
      v32 = "cmdq_pri3_w_us";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 69)
    {
      v32 = "host_idle_ms";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 70)
    {
      v32 = "cmd_hysteresis_window_us";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 109)
    {
      v32 = "cmd_rw_hysteresis_us";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 71)
    {
      v32 = "cmd_lowPriHoldoffDelay_us";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 72)
    {
      v32 = "cmd_lowPriHoldoffEnabled";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 73)
    {
      v32 = "cmd_expedite_num_success";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 75)
    {
      v32 = "cmd_expedite_num_failures";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 76)
    {
      v32 = "num_trimerase";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 77)
    {
      v32 = "staticSizeInMB";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 265)
    {
      v33 = CFStringCreateWithCString(0, "readCountHisto", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 5)
        {
          v56 = 5;
        }

        else
        {
          v56 = capacity;
        }

        v57 = v14;
        do
        {
          v58 = CFNumberCreate(0, kCFNumberSInt64Type, v57);
          CFArrayAppendValue(v34, v58);
          CFRelease(v58);
          v57 += 8;
          --v56;
        }

        while (v56);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 80)
    {
      v32 = "slcInvalidations";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 81)
    {
      v32 = "slcGCInvalidations";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 82)
    {
      v32 = "hostSectorsDuringGCon";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1019)
    {
      v32 = "intermediateBlockErases";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 85)
    {
      v32 = "intermediatePartitionStart";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 86)
    {
      v32 = "userPartitionStart";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 87)
    {
      v32 = "iolog_lbas";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 93)
    {
      v33 = CFStringCreateWithCString(0, "numBandsRefreshedForAgePerTier", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 3)
        {
          v59 = 3;
        }

        else
        {
          v59 = capacity;
        }

        v60 = v14;
        do
        {
          v61 = CFNumberCreate(0, kCFNumberSInt64Type, v60);
          CFArrayAppendValue(v34, v61);
          CFRelease(v61);
          v60 += 8;
          --v59;
        }

        while (v59);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 94)
    {
      v33 = CFStringCreateWithCString(0, "bdrDeltaHot", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0x14)
        {
          v62 = 20;
        }

        else
        {
          v62 = capacity;
        }

        v63 = v14;
        do
        {
          v64 = CFNumberCreate(0, kCFNumberSInt64Type, v63);
          CFArrayAppendValue(v34, v64);
          CFRelease(v64);
          v63 += 8;
          --v62;
        }

        while (v62);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 112)
    {
      v32 = "numBandsPaddedForAge";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 95)
    {
      v32 = "numRefreshOnClockLoss";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 96)
    {
      v32 = "numRefreshOnErrNandRefreshRel";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 381)
    {
      v32 = "numRefreshOnErrNandRefreshPerf";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1264)
    {
      v32 = "numRefreshOnErrNandRefreshPerfOpt";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1289)
    {
      v32 = "numRefreshOnErrNandRefreshPerfOptOpen";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 130)
    {
      v32 = "bdrPadding";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 97)
    {
      v32 = "numBGRefreshMoves";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 98)
    {
      v32 = "numBGPaddingMoves";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 110)
    {
      v32 = "photoFlowMode";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 113)
    {
      v33 = CFStringCreateWithCString(0, "bandsPerHostFlow", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 4)
        {
          v65 = 4;
        }

        else
        {
          v65 = capacity;
        }

        v66 = v14;
        do
        {
          v67 = CFNumberCreate(0, kCFNumberSInt64Type, v66);
          CFArrayAppendValue(v34, v67);
          CFRelease(v67);
          v66 += 8;
          --v65;
        }

        while (v65);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 114)
    {
      v33 = CFStringCreateWithCString(0, "bandsPerSpecialFlow", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 5)
        {
          v68 = 5;
        }

        else
        {
          v68 = capacity;
        }

        v69 = v14;
        do
        {
          v70 = CFNumberCreate(0, kCFNumberSInt64Type, v69);
          CFArrayAppendValue(v34, v70);
          CFRelease(v70);
          v69 += 8;
          --v68;
        }

        while (v68);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 115)
    {
      v33 = CFStringCreateWithCString(0, "secsPerHostFlow", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 4)
        {
          v71 = 4;
        }

        else
        {
          v71 = capacity;
        }

        v72 = v14;
        do
        {
          v73 = CFNumberCreate(0, kCFNumberSInt64Type, v72);
          CFArrayAppendValue(v34, v73);
          CFRelease(v73);
          v72 += 8;
          --v71;
        }

        while (v71);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 116)
    {
      v33 = CFStringCreateWithCString(0, "secsPerSpecialFlow", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 5)
        {
          v74 = 5;
        }

        else
        {
          v74 = capacity;
        }

        v75 = v14;
        do
        {
          v76 = CFNumberCreate(0, kCFNumberSInt64Type, v75);
          CFArrayAppendValue(v34, v76);
          CFRelease(v76);
          v75 += 8;
          --v74;
        }

        while (v74);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 118)
    {
      v33 = CFStringCreateWithCString(0, "overWritesPerHostFlow", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 4)
        {
          v77 = 4;
        }

        else
        {
          v77 = capacity;
        }

        v78 = v14;
        do
        {
          v79 = CFNumberCreate(0, kCFNumberSInt64Type, v78);
          CFArrayAppendValue(v34, v79);
          CFRelease(v79);
          v78 += 8;
          --v77;
        }

        while (v77);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 119)
    {
      v33 = CFStringCreateWithCString(0, "overWritesPerSpecialFlow", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 5)
        {
          v80 = 5;
        }

        else
        {
          v80 = capacity;
        }

        v81 = v14;
        do
        {
          v82 = CFNumberCreate(0, kCFNumberSInt64Type, v81);
          CFArrayAppendValue(v34, v82);
          CFRelease(v82);
          v81 += 8;
          --v80;
        }

        while (v80);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 120)
    {
      v33 = CFStringCreateWithCString(0, "padSectorsPerFlow", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0xA)
        {
          v83 = 10;
        }

        else
        {
          v83 = capacity;
        }

        v84 = v14;
        do
        {
          v85 = CFNumberCreate(0, kCFNumberSInt64Type, v84);
          CFArrayAppendValue(v34, v85);
          CFRelease(v85);
          v84 += 8;
          --v83;
        }

        while (v83);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 121)
    {
      v33 = CFStringCreateWithCString(0, "padSizes", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 4)
        {
          v86 = 4;
        }

        else
        {
          v86 = capacity;
        }

        v87 = v14;
        do
        {
          v88 = CFNumberCreate(0, kCFNumberSInt64Type, v87);
          CFArrayAppendValue(v34, v88);
          CFRelease(v88);
          v87 += 8;
          --v86;
        }

        while (v86);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 740)
    {
      v32 = "padSectorsDueToBufFrag";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 122)
    {
      v33 = CFStringCreateWithCString(0, "unmapsPerHostFlow", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 4)
        {
          v89 = 4;
        }

        else
        {
          v89 = capacity;
        }

        v90 = v14;
        do
        {
          v91 = CFNumberCreate(0, kCFNumberSInt64Type, v90);
          CFArrayAppendValue(v34, v91);
          CFRelease(v91);
          v90 += 8;
          --v89;
        }

        while (v89);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 123)
    {
      v33 = CFStringCreateWithCString(0, "unmapsPerSpecialFlow", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 5)
        {
          v92 = 5;
        }

        else
        {
          v92 = capacity;
        }

        v93 = v14;
        do
        {
          v94 = CFNumberCreate(0, kCFNumberSInt64Type, v93);
          CFArrayAppendValue(v34, v94);
          CFRelease(v94);
          v93 += 8;
          --v92;
        }

        while (v92);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 124)
    {
      v33 = CFStringCreateWithCString(0, "coldestCycle", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 2)
        {
          v95 = 2;
        }

        else
        {
          v95 = capacity;
        }

        v96 = v14;
        do
        {
          v97 = CFNumberCreate(0, kCFNumberSInt64Type, v96);
          CFArrayAppendValue(v34, v97);
          CFRelease(v97);
          v96 += 8;
          --v95;
        }

        while (v95);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 503)
    {
      v33 = CFStringCreateWithCString(0, "avgCycle", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 2)
        {
          v98 = 2;
        }

        else
        {
          v98 = capacity;
        }

        v99 = v14;
        do
        {
          v100 = CFNumberCreate(0, kCFNumberSInt64Type, v99);
          CFArrayAppendValue(v34, v100);
          CFRelease(v100);
          v99 += 8;
          --v98;
        }

        while (v98);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 125)
    {
      v33 = CFStringCreateWithCString(0, "hottestCycle", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 2)
        {
          v101 = 2;
        }

        else
        {
          v101 = capacity;
        }

        v102 = v14;
        do
        {
          v103 = CFNumberCreate(0, kCFNumberSInt64Type, v102);
          CFArrayAppendValue(v34, v103);
          CFRelease(v103);
          v102 += 8;
          --v101;
        }

        while (v101);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 16)
    {
      v32 = "gcWrites";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 126)
    {
      v32 = "gcLonlyWrites";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 139)
    {
      v32 = "gcDestinations";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 576)
    {
      v32 = "gcVPackDestinations";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 604)
    {
      v32 = "gcVPackWrites";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 721)
    {
      v32 = "gcPDusterDestinations";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 722)
    {
      v32 = "gcPDusterWrites";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 140)
    {
      v32 = "gcFragments";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 346)
    {
      v32 = "gcSlcDestinations";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 131)
    {
      v33 = CFStringCreateWithCString(0, "errInjCounters", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 8)
        {
          v104 = 8;
        }

        else
        {
          v104 = capacity;
        }

        v105 = v14;
        do
        {
          v106 = CFNumberCreate(0, kCFNumberSInt64Type, v105);
          CFArrayAppendValue(v34, v106);
          CFRelease(v106);
          v105 += 8;
          --v104;
        }

        while (v104);
      }

      goto LABEL_120;
    }

    if ((a3 & 2) != 0 && v13 == 962)
    {
      v32 = "raidConfig";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 132)
    {
      v32 = "raidSuccessfulReconstructionInternal";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 133)
    {
      v32 = "raidSuccessfulReconstructionHost";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 135)
    {
      v32 = "raidFailedReconstructionHost";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 388)
    {
      v32 = "raidSuccessfulPMXReconstructionInternal";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 389)
    {
      v32 = "raidSuccessfulPMXReconstructionHost";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 390)
    {
      v32 = "raidFailedPMXReconstructionInternal";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 391)
    {
      v32 = "raidFailedPMXReconstructionHost";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 392)
    {
      v32 = "raidSuccessfulRMXReconstructionInternal";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 393)
    {
      v32 = "raidSuccessfulRMXReconstructionHost";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 394)
    {
      v32 = "raidFailedRMXReconstructionInternal";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 395)
    {
      v32 = "raidFailedRMXReconstructionHost";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 586)
    {
      v32 = "raidExpectedFailRMXReconstructionInternal";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 587)
    {
      v32 = "raidExpectedFailRMXReconstructionHost";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1383)
    {
      v32 = "raidExpectedFailPMXReconstructionInternal";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1384)
    {
      v32 = "raidExpectedFailPMXReconstructionHost";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1385)
    {
      v32 = "raidExpectedFailBMXReconstructionInternal";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1386)
    {
      v32 = "raidExpectedFailBMXReconstructionHost";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 760)
    {
      v32 = "raidSuccessfulBMXReconstructionInternal";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 761)
    {
      v32 = "raidSuccessfulBMXReconstructionHost";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 762)
    {
      v32 = "raidFailedBMXReconstructionInternal";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 763)
    {
      v32 = "raidFailedBMXReconstructionHost";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 134)
    {
      v32 = "raidFailedReconstructionInternal";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 476)
    {
      v33 = CFStringCreateWithCString(0, "raidSuccessfulRecoLbaRange", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 2)
        {
          v107 = 2;
        }

        else
        {
          v107 = capacity;
        }

        v108 = v14;
        do
        {
          v109 = CFNumberCreate(0, kCFNumberSInt64Type, v108);
          CFArrayAppendValue(v34, v109);
          CFRelease(v109);
          v108 += 8;
          --v107;
        }

        while (v107);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 477)
    {
      v33 = CFStringCreateWithCString(0, "raidFailedRecoLbaRange", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 2)
        {
          v110 = 2;
        }

        else
        {
          v110 = capacity;
        }

        v111 = v14;
        do
        {
          v112 = CFNumberCreate(0, kCFNumberSInt64Type, v111);
          CFArrayAppendValue(v34, v112);
          CFRelease(v112);
          v111 += 8;
          --v110;
        }

        while (v110);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 630)
    {
      v33 = CFStringCreateWithCString(0, "raidSuccessfulRecoEAN", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 6)
        {
          v113 = 6;
        }

        else
        {
          v113 = capacity;
        }

        v114 = v14;
        do
        {
          v115 = CFNumberCreate(0, kCFNumberSInt64Type, v114);
          CFArrayAppendValue(v34, v115);
          CFRelease(v115);
          v114 += 8;
          --v113;
        }

        while (v113);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 631)
    {
      v33 = CFStringCreateWithCString(0, "raidFailedRecoEAN", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 6)
        {
          v116 = 6;
        }

        else
        {
          v116 = capacity;
        }

        v117 = v14;
        do
        {
          v118 = CFNumberCreate(0, kCFNumberSInt64Type, v117);
          CFArrayAppendValue(v34, v118);
          CFRelease(v118);
          v117 += 8;
          --v116;
        }

        while (v116);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 648)
    {
      v32 = "raidParityUnmapped";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 649)
    {
      v32 = "raidParityGCUnc";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 864)
    {
      v32 = "raidSkipAttempts";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 862)
    {
      v32 = "raidSuccessfulSkip";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 863)
    {
      v32 = "raidFailedSkip";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 813)
    {
      v32 = "TurboRaidIsEnabled";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 697)
    {
      v32 = "TurboRaidHostClassifications";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 698)
    {
      v32 = "TurboRaidInternalClassifications";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 712)
    {
      v32 = "TurboRaidSuccessfulHostAuxReads";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 713)
    {
      v32 = "TurboRaidSuccessfulInternalAuxReads";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 737)
    {
      v32 = "TurboRaidFailedHostAuxReads";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 738)
    {
      v32 = "TurboRaidFailedInternalAuxReads";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 714)
    {
      v32 = "turboRaidClassificationReliabilityHost";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 715)
    {
      v32 = "turboRaidClassificationReliabilityInternal";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 716)
    {
      v32 = "turboRaidClassificationQualityHost";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 717)
    {
      v32 = "turboRaidClassificationQualityInternal";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 829)
    {
      v32 = "turboRaidSkipTooManyFailures";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 891)
    {
      v33 = CFStringCreateWithCString(0, "turboRaidSuccessAuxPartition", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 2)
        {
          v119 = 2;
        }

        else
        {
          v119 = capacity;
        }

        v120 = v14;
        do
        {
          v121 = CFNumberCreate(0, kCFNumberSInt64Type, v120);
          CFArrayAppendValue(v34, v121);
          CFRelease(v121);
          v120 += 8;
          --v119;
        }

        while (v119);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 892)
    {
      v33 = CFStringCreateWithCString(0, "turboRaidFailAuxPartition", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 2)
        {
          v122 = 2;
        }

        else
        {
          v122 = capacity;
        }

        v123 = v14;
        do
        {
          v124 = CFNumberCreate(0, kCFNumberSInt64Type, v123);
          CFArrayAppendValue(v34, v124);
          CFRelease(v124);
          v123 += 8;
          --v122;
        }

        while (v122);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 893)
    {
      v33 = CFStringCreateWithCString(0, "turboRaidClassifyQualPartition", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 2)
        {
          v125 = 2;
        }

        else
        {
          v125 = capacity;
        }

        v126 = v14;
        do
        {
          v127 = CFNumberCreate(0, kCFNumberSInt64Type, v126);
          CFArrayAppendValue(v34, v127);
          CFRelease(v127);
          v126 += 8;
          --v125;
        }

        while (v125);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 894)
    {
      v33 = CFStringCreateWithCString(0, "turboRaidClassifyRelPartition", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 2)
        {
          v128 = 2;
        }

        else
        {
          v128 = capacity;
        }

        v129 = v14;
        do
        {
          v130 = CFNumberCreate(0, kCFNumberSInt64Type, v129);
          CFArrayAppendValue(v34, v130);
          CFRelease(v130);
          v129 += 8;
          --v128;
        }

        while (v128);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 900)
    {
      v32 = "turboRaidNoClassifyDueToWasRetire";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 901)
    {
      v32 = "turboRaidNoClassifyDueToOpenBand";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 902)
    {
      v32 = "turboRaidNoClassifyDueToQualityBlock";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 903)
    {
      v32 = "turboRaidGbbOpenBand";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 904)
    {
      v32 = "turboRaidGbbShouldRetireOnRefresh";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 947)
    {
      v32 = "turboRaidReliabilityRemovedProbational";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1133)
    {
      v32 = "turboRaidSuccssfulSkip";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1134)
    {
      v32 = "turboRaidFailedSkip";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1135)
    {
      v32 = "turboRaidSkipTooManyFailuresFailRec";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1136)
    {
      v32 = "turboRaidQualityGBBs";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 403)
    {
      v32 = "deprecated_raidFailedReadBlog";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 197)
    {
      v32 = "raidFailedLbaMismatch";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 136)
    {
      v32 = "raidBandsPerHostFlow";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 137)
    {
      v32 = "raidSecsPerHostFlow";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 444)
    {
      v32 = "raidSLCBandsPerHostFlow";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 445)
    {
      v32 = "raidSLCSecsPerHostFlow";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 964)
    {
      v32 = "raidBlkParityBands";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 965)
    {
      v32 = "raidBlkParitySecs";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 440)
    {
      v32 = "raidSLCPadding";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1388)
    {
      v32 = "raidTLCPadding";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 960)
    {
      v32 = "raidBlkParityPadding";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 441)
    {
      v32 = "raidGCBands";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 382)
    {
      v32 = "raidReconstructReads";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 659)
    {
      v32 = "raidVerificationReads";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 172)
    {
      v32 = "raidSmartErrors";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 416)
    {
      v32 = "raidSuccessfulVerify";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 417)
    {
      v32 = "raidFailedVerify";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 406)
    {
      v33 = CFStringCreateWithCString(0, "raidReconstructSuccessFlow", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 5)
        {
          v131 = 5;
        }

        else
        {
          v131 = capacity;
        }

        v132 = v14;
        do
        {
          v133 = CFNumberCreate(0, kCFNumberSInt64Type, v132);
          CFArrayAppendValue(v34, v133);
          CFRelease(v133);
          v132 += 8;
          --v131;
        }

        while (v131);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 407)
    {
      v33 = CFStringCreateWithCString(0, "raidReconstructFailFlow", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 5)
        {
          v134 = 5;
        }

        else
        {
          v134 = capacity;
        }

        v135 = v14;
        do
        {
          v136 = CFNumberCreate(0, kCFNumberSInt64Type, v135);
          CFArrayAppendValue(v34, v136);
          CFRelease(v136);
          v135 += 8;
          --v134;
        }

        while (v134);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 472)
    {
      v32 = "raidReconstructFailBandFlowHost";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 473)
    {
      v32 = "raidReconstructFailBandFlowGC";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 639)
    {
      v32 = "raidReconstructSuccessBandFlowOslc";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 640)
    {
      v32 = "raidReconstructFailBandFlowOslc";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 469)
    {
      v33 = CFStringCreateWithCString(0, "raidReconstructSuccessPartition", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 2)
        {
          v137 = 2;
        }

        else
        {
          v137 = capacity;
        }

        v138 = v14;
        do
        {
          v139 = CFNumberCreate(0, kCFNumberSInt64Type, v138);
          CFArrayAppendValue(v34, v139);
          CFRelease(v139);
          v138 += 8;
          --v137;
        }

        while (v137);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 470)
    {
      v33 = CFStringCreateWithCString(0, "raidReconstructFailPartition", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 2)
        {
          v140 = 2;
        }

        else
        {
          v140 = capacity;
        }

        v141 = v14;
        do
        {
          v142 = CFNumberCreate(0, kCFNumberSInt64Type, v141);
          CFArrayAppendValue(v34, v142);
          CFRelease(v142);
          v141 += 8;
          --v140;
        }

        while (v140);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 408)
    {
      v32 = "raidReconstructFailP";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 409)
    {
      v32 = "raidReconstructFailQ";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 786)
    {
      v32 = "raidReconstructFailBmxMp";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 787)
    {
      v32 = "raidReconstructFailBmx";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 410)
    {
      v32 = "raidReconstructFailUECC";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 788)
    {
      v32 = "raidReconstructFailBMXUECC";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 411)
    {
      v32 = "raidReconstructFailUnsupp";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 510)
    {
      v32 = "raidReconstructFailMismatch";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 566)
    {
      v32 = "raidReconstructFailNoSPBX";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 567)
    {
      v32 = "raidReconstructFailDouble";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 570)
    {
      v32 = "raidReconstructFailInvalid";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 574)
    {
      v32 = "raidReconstructFailBlank";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 789)
    {
      v32 = "raidReconstructFailBMXBlank";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 681)
    {
      v32 = "raidReconstructFailPMXUnsup";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 682)
    {
      v32 = "raidReconstructFailBMXUnsup";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 711)
    {
      v32 = "raidPrevFailedReconstructSkip";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 790)
    {
      v32 = "raidPrevFailedReconstructBmxMpSkip";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 774)
    {
      v32 = "raidReconstructFailBMXAbort";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 412)
    {
      v32 = "raidUECCOpenBand";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 471)
    {
      v32 = "raidUncleanBootBandFail";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 641)
    {
      v32 = "raidFailSectors";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 798)
    {
      v33 = CFStringCreateWithCString(0, "raidBMXFailP", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 4)
        {
          v143 = 4;
        }

        else
        {
          v143 = capacity;
        }

        v144 = v14;
        do
        {
          v145 = CFNumberCreate(0, kCFNumberSInt64Type, v144);
          CFArrayAppendValue(v34, v145);
          CFRelease(v145);
          v144 += 8;
          --v143;
        }

        while (v143);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 799)
    {
      v33 = CFStringCreateWithCString(0, "raidBMXFailUECC", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 4)
        {
          v146 = 4;
        }

        else
        {
          v146 = capacity;
        }

        v147 = v14;
        do
        {
          v148 = CFNumberCreate(0, kCFNumberSInt64Type, v147);
          CFArrayAppendValue(v34, v148);
          CFRelease(v148);
          v147 += 8;
          --v146;
        }

        while (v146);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 804)
    {
      v33 = CFStringCreateWithCString(0, "raidBMXFailNoSPBX", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 4)
        {
          v149 = 4;
        }

        else
        {
          v149 = capacity;
        }

        v150 = v14;
        do
        {
          v151 = CFNumberCreate(0, kCFNumberSInt64Type, v150);
          CFArrayAppendValue(v34, v151);
          CFRelease(v151);
          v150 += 8;
          --v149;
        }

        while (v149);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 806)
    {
      v33 = CFStringCreateWithCString(0, "raidBMXFailBlank", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 4)
        {
          v152 = 4;
        }

        else
        {
          v152 = capacity;
        }

        v153 = v14;
        do
        {
          v154 = CFNumberCreate(0, kCFNumberSInt64Type, v153);
          CFArrayAppendValue(v34, v154);
          CFRelease(v154);
          v153 += 8;
          --v152;
        }

        while (v152);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 809)
    {
      v33 = CFStringCreateWithCString(0, "raidBMXFailUnsup", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 4)
        {
          v155 = 4;
        }

        else
        {
          v155 = capacity;
        }

        v156 = v14;
        do
        {
          v157 = CFNumberCreate(0, kCFNumberSInt64Type, v156);
          CFArrayAppendValue(v34, v157);
          CFRelease(v157);
          v156 += 8;
          --v155;
        }

        while (v155);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 811)
    {
      v33 = CFStringCreateWithCString(0, "raidBMXFailMpSkip", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 4)
        {
          v158 = 4;
        }

        else
        {
          v158 = capacity;
        }

        v159 = v14;
        do
        {
          v160 = CFNumberCreate(0, kCFNumberSInt64Type, v159);
          CFArrayAppendValue(v34, v160);
          CFRelease(v160);
          v159 += 8;
          --v158;
        }

        while (v158);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 812)
    {
      v33 = CFStringCreateWithCString(0, "raidBMXFailAbort", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 4)
        {
          v161 = 4;
        }

        else
        {
          v161 = capacity;
        }

        v162 = v14;
        do
        {
          v163 = CFNumberCreate(0, kCFNumberSInt64Type, v162);
          CFArrayAppendValue(v34, v163);
          CFRelease(v163);
          v162 += 8;
          --v161;
        }

        while (v161);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 814)
    {
      v33 = CFStringCreateWithCString(0, "raidBMXFailOther", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 4)
        {
          v164 = 4;
        }

        else
        {
          v164 = capacity;
        }

        v165 = v14;
        do
        {
          v166 = CFNumberCreate(0, kCFNumberSInt64Type, v165);
          CFArrayAppendValue(v34, v166);
          CFRelease(v166);
          v165 += 8;
          --v164;
        }

        while (v164);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 815)
    {
      v33 = CFStringCreateWithCString(0, "raidBMXSuccess", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 4)
        {
          v167 = 4;
        }

        else
        {
          v167 = capacity;
        }

        v168 = v14;
        do
        {
          v169 = CFNumberCreate(0, kCFNumberSInt64Type, v168);
          CFArrayAppendValue(v34, v169);
          CFRelease(v169);
          v168 += 8;
          --v167;
        }

        while (v167);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 182)
    {
      v32 = "internalUeccs";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 353)
    {
      v32 = "clogLastStripeUeccs";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 609)
    {
      v32 = "unexpectedBlanksHost";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 596)
    {
      v32 = "unexpectedBlanksInternal";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 597)
    {
      v32 = "unexpectedBlanksOnRV";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 152)
    {
      v32 = "AbortSkip_ProgramError";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 153)
    {
      v32 = "AbortSkip_ReadErrorOpenBand";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 384)
    {
      v32 = "AbortSkip_MPBXReadVerifyClosedBand";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 386)
    {
      v32 = "AbortSkip_MPBXReadVerifyOpenBand";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 657)
    {
      v32 = "AbortSkip_MPBXProbational";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 387)
    {
      v32 = "AbortSkip_MBPXFailedRebuildingParity";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 420)
    {
      v32 = "AbortSkip_RMXtoMPBX";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 438)
    {
      v32 = "AbortSkip_Format";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 155)
    {
      v32 = "AbortPad_OpenRefreshBand";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 158)
    {
      v32 = "AbortPad_GcNoSource";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 159)
    {
      v32 = "AbortPad_Format";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 539)
    {
      v32 = "AbortPad_GcMustPadBand";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 540)
    {
      v32 = "AbortPad_GcMustPadSkinny";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 160)
    {
      v32 = "nandDiscoveryDuration";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 161)
    {
      v32 = "coreCCEnableDuration";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 163)
    {
      v32 = "coreOpenDuration";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 164)
    {
      v32 = "coreWritableDuration";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 165)
    {
      v32 = "coreClogLoadDuration";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 1292)
    {
      v32 = "bootUpDuration";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 141)
    {
      v32 = "numMemChoke";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 142)
    {
      v32 = "maxMemChokeDuration";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 143)
    {
      v32 = "memChokeDuration";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 187)
    {
      v32 = "numMemLow";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 188)
    {
      v32 = "maxMemLowDuration";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 189)
    {
      v32 = "memLowDuration";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 147)
    {
      v32 = "bandGetsExtreme";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 148)
    {
      v32 = "bandGetsLow";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 149)
    {
      v32 = "numHostChoke";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 183)
    {
      v32 = "e2eFail";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 204)
    {
      v32 = "powerOnSeconds";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 205)
    {
      v32 = "numUnknownTokenHostRead";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 206)
    {
      v32 = "numUnmmapedTokenHostRead";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 248)
    {
      v32 = "indmbUnitsTotal";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 199)
    {
      v32 = "indmbUnitsXfer";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 200)
    {
      v32 = "indmbUnitsCache";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 201)
    {
      v32 = "indmbUnitsInd";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 203)
    {
      v32 = "wcache_Mbytes";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 207)
    {
      v33 = CFStringCreateWithCString(0, "numOfThrottlingEntriesPerLevel", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0x19)
        {
          v170 = 25;
        }

        else
        {
          v170 = capacity;
        }

        v171 = v14;
        do
        {
          v172 = CFNumberCreate(0, kCFNumberSInt64Type, v171);
          CFArrayAppendValue(v34, v172);
          CFRelease(v172);
          v171 += 8;
          --v170;
        }

        while (v170);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 865)
    {
      v33 = CFStringCreateWithCString(0, "timeOfThrottlingPerLevel", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0x19)
        {
          v173 = 25;
        }

        else
        {
          v173 = capacity;
        }

        v174 = v14;
        do
        {
          v175 = CFNumberCreate(0, kCFNumberSInt64Type, v174);
          CFArrayAppendValue(v34, v175);
          CFRelease(v175);
          v174 += 8;
          --v173;
        }

        while (v173);
      }

      goto LABEL_120;
    }

    if ((a3 & 2) != 0 && v13 == 453)
    {
      v33 = CFStringCreateWithCString(0, "numOfThrottlingEntriesPerReadLevel", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0x19)
        {
          v176 = 25;
        }

        else
        {
          v176 = capacity;
        }

        v177 = v14;
        do
        {
          v178 = CFNumberCreate(0, kCFNumberSInt64Type, v177);
          CFArrayAppendValue(v34, v178);
          CFRelease(v178);
          v177 += 8;
          --v176;
        }

        while (v176);
      }

      goto LABEL_120;
    }

    if ((a3 & 2) != 0 && v13 == 866)
    {
      v33 = CFStringCreateWithCString(0, "timeOfThrottlingPerReadLevel", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0x19)
        {
          v179 = 25;
        }

        else
        {
          v179 = capacity;
        }

        v180 = v14;
        do
        {
          v181 = CFNumberCreate(0, kCFNumberSInt64Type, v180);
          CFArrayAppendValue(v34, v181);
          CFRelease(v181);
          v180 += 8;
          --v179;
        }

        while (v179);
      }

      goto LABEL_120;
    }

    if ((a3 & 2) != 0 && v13 == 454)
    {
      v33 = CFStringCreateWithCString(0, "numOfThrottlingEntriesPerWriteLevel", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0x19)
        {
          v182 = 25;
        }

        else
        {
          v182 = capacity;
        }

        v183 = v14;
        do
        {
          v184 = CFNumberCreate(0, kCFNumberSInt64Type, v183);
          CFArrayAppendValue(v34, v184);
          CFRelease(v184);
          v183 += 8;
          --v182;
        }

        while (v182);
      }

      goto LABEL_120;
    }

    if ((a3 & 2) != 0 && v13 == 867)
    {
      v33 = CFStringCreateWithCString(0, "timeOfThrottlingPerWriteLevel", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0x19)
        {
          v185 = 25;
        }

        else
        {
          v185 = capacity;
        }

        v186 = v14;
        do
        {
          v187 = CFNumberCreate(0, kCFNumberSInt64Type, v186);
          CFArrayAppendValue(v34, v187);
          CFRelease(v187);
          v186 += 8;
          --v185;
        }

        while (v185);
      }

      goto LABEL_120;
    }

    if ((a3 & 2) != 0 && v13 == 1354)
    {
      v32 = "numOfThrottlingLevels";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 1348)
    {
      v32 = "thermalSelfThrottlingSupported";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 1349)
    {
      v32 = "thermalSelfThrottlingEnabled";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1271)
    {
      v32 = "deviceTempMax";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1272)
    {
      v32 = "deviceTempHigh";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1273)
    {
      v32 = "deviceTempLow";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 1448)
    {
      v32 = "deviceTempMaxValue";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 1449)
    {
      v32 = "deviceTempHighValue";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 1450)
    {
      v32 = "deviceTempLowValue";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 1452)
    {
      v32 = "selfPanicEnabled";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 1440)
    {
      v32 = "currentThrottlingCommonLevel";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 1441)
    {
      v33 = CFStringCreateWithCString(0, "throttlingmWEstimateLatencyHisto", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 5)
        {
          v188 = 5;
        }

        else
        {
          v188 = capacity;
        }

        v189 = v14;
        do
        {
          v190 = CFNumberCreate(0, kCFNumberSInt64Type, v189);
          CFArrayAppendValue(v34, v190);
          CFRelease(v190);
          v189 += 8;
          --v188;
        }

        while (v188);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 1494)
    {
      v33 = CFStringCreateWithCString(0, "throttlingSecPerTTPerMW", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0x14)
        {
          v191 = 20;
        }

        else
        {
          v191 = capacity;
        }

        v192 = v14;
        do
        {
          v193 = CFNumberCreate(0, kCFNumberSInt64Type, v192);
          CFArrayAppendValue(v34, v193);
          CFRelease(v193);
          v192 += 8;
          --v191;
        }

        while (v191);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 213)
    {
      v33 = CFStringCreateWithCString(0, "crcInternalReadFail", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 8)
        {
          v194 = 8;
        }

        else
        {
          v194 = capacity;
        }

        v195 = v14;
        do
        {
          v196 = CFNumberCreate(0, kCFNumberSInt64Type, v195);
          CFArrayAppendValue(v34, v196);
          CFRelease(v196);
          v195 += 8;
          --v194;
        }

        while (v194);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 217)
    {
      v32 = "wcacheWr";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1067)
    {
      v32 = "cacheSegCombines";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 221)
    {
      v32 = "RD_openBandCount";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 222)
    {
      v32 = "RD_openBandNops";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1221)
    {
      v32 = "RD_openBandEvictBlocks";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 223)
    {
      v32 = "RD_closedBandEvictCount";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 224)
    {
      v32 = "RD_closedBandEvictSectors";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1222)
    {
      v32 = "RD_closedBandEvictBlocks";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 494)
    {
      v32 = "RD_numSaves";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1223)
    {
      v33 = CFStringCreateWithCString(0, "RD_closedBlocksTHHist", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0xA)
        {
          v197 = 10;
        }

        else
        {
          v197 = capacity;
        }

        v198 = v14;
        do
        {
          v199 = CFNumberCreate(0, kCFNumberSInt64Type, v198);
          CFArrayAppendValue(v34, v199);
          CFRelease(v199);
          v198 += 8;
          --v197;
        }

        while (v197);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 1346)
    {
      v32 = "RD_closedBandMustSet";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1340)
    {
      v32 = "RD_CBDRwasFailedToRun";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1481)
    {
      v32 = "RD_CBDRNotValidUrgentEvict";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1341)
    {
      v32 = "RD_RefreshOnSampling";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1318)
    {
      v32 = "PO_SkipOnHighRD_slc";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1319)
    {
      v32 = "PO_SkipOnHighRD_tlc";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1342)
    {
      v32 = "RD_CBDR_requested";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1343)
    {
      v32 = "RD_SamplesRequested";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1352)
    {
      v32 = "RD_OptionalPORefresh";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1433)
    {
      v32 = "RD_OptionalPORefreshHotBand";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 267)
    {
      v32 = "totalReadAmp";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 229)
    {
      v33 = CFStringCreateWithCString(0, "indmbXferCountTo", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 2)
        {
          v200 = 2;
        }

        else
        {
          v200 = capacity;
        }

        v201 = v14;
        do
        {
          v202 = CFNumberCreate(0, kCFNumberSInt64Type, v201);
          CFArrayAppendValue(v34, v202);
          CFRelease(v202);
          v201 += 8;
          --v200;
        }

        while (v200);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 230)
    {
      v33 = CFStringCreateWithCString(0, "indmbAccumulatedTimeBetweenXfers", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 2)
        {
          v203 = 2;
        }

        else
        {
          v203 = capacity;
        }

        v204 = v14;
        do
        {
          v205 = CFNumberCreate(0, kCFNumberSInt64Type, v204);
          CFArrayAppendValue(v34, v205);
          CFRelease(v205);
          v204 += 8;
          --v203;
        }

        while (v203);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 231)
    {
      v32 = "maxGracefulBootTimeMs";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 232)
    {
      v32 = "maxUngracefulBootTimeMs";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 233)
    {
      v32 = "averageGracefulBootTimeMs";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 234)
    {
      v32 = "averageUngracefulBootTimeMs";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 235)
    {
      v33 = CFStringCreateWithCString(0, "gracefulBootTimeLogMs", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 8)
        {
          v206 = 8;
        }

        else
        {
          v206 = capacity;
        }

        v207 = v14;
        do
        {
          v208 = CFNumberCreate(0, kCFNumberSInt64Type, v207);
          CFArrayAppendValue(v34, v208);
          CFRelease(v208);
          v207 += 8;
          --v206;
        }

        while (v206);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 236)
    {
      v33 = CFStringCreateWithCString(0, "ungracefulBootTimeLogMs", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 8)
        {
          v209 = 8;
        }

        else
        {
          v209 = capacity;
        }

        v210 = v14;
        do
        {
          v211 = CFNumberCreate(0, kCFNumberSInt64Type, v210);
          CFArrayAppendValue(v34, v211);
          CFRelease(v211);
          v210 += 8;
          --v209;
        }

        while (v209);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 245)
    {
      v32 = "prefetchReads";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 246)
    {
      v32 = "prefetchHits";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1323)
    {
      v32 = "prefetchNofHits";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 247)
    {
      v32 = "prefetchWritesInvalidation";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 254)
    {
      v32 = "numClogDoubleUnc";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 269)
    {
      v33 = CFStringCreateWithCString(0, "numBootBlockRefreshSuccess", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 8)
        {
          v212 = 8;
        }

        else
        {
          v212 = capacity;
        }

        v213 = v14;
        do
        {
          v214 = CFNumberCreate(0, kCFNumberSInt64Type, v213);
          CFArrayAppendValue(v34, v214);
          CFRelease(v214);
          v213 += 8;
          --v212;
        }

        while (v212);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 270)
    {
      v33 = CFStringCreateWithCString(0, "numBootBlockRefreshFail", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 8)
        {
          v215 = 8;
        }

        else
        {
          v215 = capacity;
        }

        v216 = v14;
        do
        {
          v217 = CFNumberCreate(0, kCFNumberSInt64Type, v216);
          CFArrayAppendValue(v34, v217);
          CFRelease(v217);
          v216 += 8;
          --v215;
        }

        while (v215);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 322)
    {
      v32 = "mspBootBlockMismatch";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 323)
    {
      v32 = "mspBootBlockMismatchErr";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 271)
    {
      v32 = "numUnsupportedAsiInOFW";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 272)
    {
      v32 = "NumTerminatedProgramSegs";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 274)
    {
      v32 = "indFlowPrograms";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 277)
    {
      v33 = CFStringCreateWithCString(0, "powerBudgetSelect", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 4)
        {
          v218 = 4;
        }

        else
        {
          v218 = capacity;
        }

        v219 = v14;
        do
        {
          v220 = CFNumberCreate(0, kCFNumberSInt64Type, v219);
          CFArrayAppendValue(v34, v220);
          CFRelease(v220);
          v219 += 8;
          --v218;
        }

        while (v218);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 279)
    {
      v32 = "RxBurnNandWrites";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 280)
    {
      v33 = CFStringCreateWithCString(0, "E2EDPErrorCounters", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0xC)
        {
          v221 = 12;
        }

        else
        {
          v221 = capacity;
        }

        v222 = v14;
        do
        {
          v223 = CFNumberCreate(0, kCFNumberSInt64Type, v222);
          CFArrayAppendValue(v34, v223);
          CFRelease(v223);
          v222 += 8;
          --v221;
        }

        while (v221);
      }

      goto LABEL_120;
    }

    if ((a3 & 2) != 0 && v13 == 281)
    {
      v32 = "wcacheSectorsMax";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 282)
    {
      v32 = "wcacheSectorsMin";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 283)
    {
      v32 = "wcacheSectorsCur";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 288)
    {
      v32 = "wcache_Reads";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 289)
    {
      v33 = CFStringCreateWithCString(0, "mspBootBlockReadFail", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0x20)
        {
          v224 = 32;
        }

        else
        {
          v224 = capacity;
        }

        v225 = v14;
        do
        {
          v226 = CFNumberCreate(0, kCFNumberSInt64Type, v225);
          CFArrayAppendValue(v34, v226);
          CFRelease(v226);
          v225 += 8;
          --v224;
        }

        while (v224);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 290)
    {
      v33 = CFStringCreateWithCString(0, "mspBootBlockProgFail", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0x20)
        {
          v227 = 32;
        }

        else
        {
          v227 = capacity;
        }

        v228 = v14;
        do
        {
          v229 = CFNumberCreate(0, kCFNumberSInt64Type, v228);
          CFArrayAppendValue(v34, v229);
          CFRelease(v229);
          v228 += 8;
          --v227;
        }

        while (v227);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 291)
    {
      v33 = CFStringCreateWithCString(0, "mspBootBlockEraseFail", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0x20)
        {
          v230 = 32;
        }

        else
        {
          v230 = capacity;
        }

        v231 = v14;
        do
        {
          v232 = CFNumberCreate(0, kCFNumberSInt64Type, v231);
          CFArrayAppendValue(v34, v232);
          CFRelease(v232);
          v231 += 8;
          --v230;
        }

        while (v230);
      }

      goto LABEL_120;
    }

    if ((a3 & 2) != 0 && v13 == 511)
    {
      v33 = CFStringCreateWithCString(0, "mspbootBlockRefreshCnt", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0x20)
        {
          v233 = 32;
        }

        else
        {
          v233 = capacity;
        }

        v234 = v14;
        do
        {
          v235 = CFNumberCreate(0, kCFNumberSInt64Type, v234);
          CFArrayAppendValue(v34, v235);
          CFRelease(v235);
          v234 += 8;
          --v233;
        }

        while (v233);
      }

      goto LABEL_120;
    }

    if ((a3 & 2) != 0 && v13 == 516)
    {
      v33 = CFStringCreateWithCString(0, "mspBootBlockRefreshTime", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0x20)
        {
          v236 = 32;
        }

        else
        {
          v236 = capacity;
        }

        v237 = v14;
        do
        {
          v238 = CFNumberCreate(0, kCFNumberSInt64Type, v237);
          CFArrayAppendValue(v34, v238);
          CFRelease(v238);
          v237 += 8;
          --v236;
        }

        while (v236);
      }

      goto LABEL_120;
    }

    if ((a3 & 2) != 0 && v13 == 517)
    {
      v32 = "mspBootBlockCountPerMsp";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 777)
    {
      v32 = "numBadBootBlocks";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 292)
    {
      v32 = "bandsRefreshedOnError";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 298)
    {
      v33 = CFStringCreateWithCString(0, "perHostReads", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 2)
        {
          v239 = 2;
        }

        else
        {
          v239 = capacity;
        }

        v240 = v14;
        do
        {
          v241 = CFNumberCreate(0, kCFNumberSInt64Type, v240);
          CFArrayAppendValue(v34, v241);
          CFRelease(v241);
          v240 += 8;
          --v239;
        }

        while (v239);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 299)
    {
      v33 = CFStringCreateWithCString(0, "perHostReadXacts", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 2)
        {
          v242 = 2;
        }

        else
        {
          v242 = capacity;
        }

        v243 = v14;
        do
        {
          v244 = CFNumberCreate(0, kCFNumberSInt64Type, v243);
          CFArrayAppendValue(v34, v244);
          CFRelease(v244);
          v243 += 8;
          --v242;
        }

        while (v242);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 300)
    {
      v33 = CFStringCreateWithCString(0, "perHostWrites", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 2)
        {
          v245 = 2;
        }

        else
        {
          v245 = capacity;
        }

        v246 = v14;
        do
        {
          v247 = CFNumberCreate(0, kCFNumberSInt64Type, v246);
          CFArrayAppendValue(v34, v247);
          CFRelease(v247);
          v246 += 8;
          --v245;
        }

        while (v245);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 301)
    {
      v33 = CFStringCreateWithCString(0, "perHostWriteXacts", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 2)
        {
          v248 = 2;
        }

        else
        {
          v248 = capacity;
        }

        v249 = v14;
        do
        {
          v250 = CFNumberCreate(0, kCFNumberSInt64Type, v249);
          CFArrayAppendValue(v34, v250);
          CFRelease(v250);
          v249 += 8;
          --v248;
        }

        while (v248);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 302)
    {
      v33 = CFStringCreateWithCString(0, "perHostNumFlushes", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 2)
        {
          v251 = 2;
        }

        else
        {
          v251 = capacity;
        }

        v252 = v14;
        do
        {
          v253 = CFNumberCreate(0, kCFNumberSInt64Type, v252);
          CFArrayAppendValue(v34, v253);
          CFRelease(v253);
          v252 += 8;
          --v251;
        }

        while (v251);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 303)
    {
      v33 = CFStringCreateWithCString(0, "perHostNumFences", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 2)
        {
          v254 = 2;
        }

        else
        {
          v254 = capacity;
        }

        v255 = v14;
        do
        {
          v256 = CFNumberCreate(0, kCFNumberSInt64Type, v255);
          CFArrayAppendValue(v34, v256);
          CFRelease(v256);
          v255 += 8;
          --v254;
        }

        while (v254);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 304)
    {
      v33 = CFStringCreateWithCString(0, "commitPadSectorsPerFlow", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0xA)
        {
          v257 = 10;
        }

        else
        {
          v257 = capacity;
        }

        v258 = v14;
        do
        {
          v259 = CFNumberCreate(0, kCFNumberSInt64Type, v258);
          CFArrayAppendValue(v34, v259);
          CFRelease(v259);
          v258 += 8;
          --v257;
        }

        while (v257);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 305)
    {
      v33 = CFStringCreateWithCString(0, "wcacheOverWrLogSizeCnts", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0xA)
        {
          v260 = 10;
        }

        else
        {
          v260 = capacity;
        }

        v261 = v14;
        do
        {
          v262 = CFNumberCreate(0, kCFNumberSInt64Type, v261);
          CFArrayAppendValue(v34, v262);
          CFRelease(v262);
          v261 += 8;
          --v260;
        }

        while (v260);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 306)
    {
      v33 = CFStringCreateWithCString(0, "wcacheOverWrSizeByFlow", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 4)
        {
          v263 = 4;
        }

        else
        {
          v263 = capacity;
        }

        v264 = v14;
        do
        {
          v265 = CFNumberCreate(0, kCFNumberSInt64Type, v264);
          CFArrayAppendValue(v34, v265);
          CFRelease(v265);
          v264 += 8;
          --v263;
        }

        while (v263);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 307)
    {
      v33 = CFStringCreateWithCString(0, "CmdRaisePrioiryEvents", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0xA)
        {
          v266 = 10;
        }

        else
        {
          v266 = capacity;
        }

        v267 = v14;
        do
        {
          v268 = CFNumberCreate(0, kCFNumberSInt64Type, v267);
          CFArrayAppendValue(v34, v268);
          CFRelease(v268);
          v267 += 8;
          --v266;
        }

        while (v266);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 308)
    {
      v32 = "utilNumVerification";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 309)
    {
      v32 = "utilRefreshes";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 310)
    {
      v32 = "utilBDRErrors";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 314)
    {
      v33 = CFStringCreateWithCString(0, "numBootBlockValidateSuccess", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 8)
        {
          v269 = 8;
        }

        else
        {
          v269 = capacity;
        }

        v270 = v14;
        do
        {
          v271 = CFNumberCreate(0, kCFNumberSInt64Type, v270);
          CFArrayAppendValue(v34, v271);
          CFRelease(v271);
          v270 += 8;
          --v269;
        }

        while (v269);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 315)
    {
      v33 = CFStringCreateWithCString(0, "numBootBlockValidateFail", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 8)
        {
          v272 = 8;
        }

        else
        {
          v272 = capacity;
        }

        v273 = v14;
        do
        {
          v274 = CFNumberCreate(0, kCFNumberSInt64Type, v273);
          CFArrayAppendValue(v34, v274);
          CFRelease(v274);
          v273 += 8;
          --v272;
        }

        while (v272);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 316)
    {
      v33 = CFStringCreateWithCString(0, "clogPagesFillingPercentage", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 4)
        {
          v275 = 4;
        }

        else
        {
          v275 = capacity;
        }

        v276 = v14;
        do
        {
          v277 = CFNumberCreate(0, kCFNumberSInt64Type, v276);
          CFArrayAppendValue(v34, v277);
          CFRelease(v277);
          v276 += 8;
          --v275;
        }

        while (v275);
      }

      goto LABEL_120;
    }

    if ((a3 & 2) != 0 && v13 == 317)
    {
      v32 = "bdrCalTimeAccFactor";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 643)
    {
      v32 = "bdrTimeMode";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 336)
    {
      v32 = "numBootChainUpdates";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 318)
    {
      v32 = "bootChainRdError";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 319)
    {
      v32 = "bootChainBlankError";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 320)
    {
      v32 = "bootChainRefreshError";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 321)
    {
      v32 = "bootChainVersionError";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 324)
    {
      v33 = CFStringCreateWithCString(0, "bitflipAddr", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 5)
        {
          v278 = 5;
        }

        else
        {
          v278 = capacity;
        }

        v279 = v14;
        do
        {
          v280 = CFNumberCreate(0, kCFNumberSInt64Type, v279);
          CFArrayAppendValue(v34, v280);
          CFRelease(v280);
          v279 += 8;
          --v278;
        }

        while (v278);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 325)
    {
      v33 = CFStringCreateWithCString(0, "bitflipCount", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 5)
        {
          v281 = 5;
        }

        else
        {
          v281 = capacity;
        }

        v282 = v14;
        do
        {
          v283 = CFNumberCreate(0, kCFNumberSInt64Type, v282);
          CFArrayAppendValue(v34, v283);
          CFRelease(v283);
          v282 += 8;
          --v281;
        }

        while (v281);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 326)
    {
      v33 = CFStringCreateWithCString(0, "bitflipDupes", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 5)
        {
          v284 = 5;
        }

        else
        {
          v284 = capacity;
        }

        v285 = v14;
        do
        {
          v286 = CFNumberCreate(0, kCFNumberSInt64Type, v285);
          CFArrayAppendValue(v34, v286);
          CFRelease(v286);
          v285 += 8;
          --v284;
        }

        while (v284);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 327)
    {
      v33 = CFStringCreateWithCString(0, "bandsMaxTempHisto", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0x1E)
        {
          v287 = 30;
        }

        else
        {
          v287 = capacity;
        }

        v288 = v14;
        do
        {
          v289 = CFNumberCreate(0, kCFNumberSInt64Type, v288);
          CFArrayAppendValue(v34, v289);
          CFRelease(v289);
          v288 += 8;
          --v287;
        }

        while (v287);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 328)
    {
      v33 = CFStringCreateWithCString(0, "bandsMinTempHisto", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0x1E)
        {
          v290 = 30;
        }

        else
        {
          v290 = capacity;
        }

        v291 = v14;
        do
        {
          v292 = CFNumberCreate(0, kCFNumberSInt64Type, v291);
          CFArrayAppendValue(v34, v292);
          CFRelease(v292);
          v291 += 8;
          --v290;
        }

        while (v290);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 329)
    {
      v33 = CFStringCreateWithCString(0, "bandsLifeTimeTempHisto", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0x1E)
        {
          v293 = 30;
        }

        else
        {
          v293 = capacity;
        }

        v294 = v14;
        do
        {
          v295 = CFNumberCreate(0, kCFNumberSInt64Type, v294);
          CFArrayAppendValue(v34, v295);
          CFRelease(v295);
          v294 += 8;
          --v293;
        }

        while (v293);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 330)
    {
      v33 = CFStringCreateWithCString(0, "bandsDeltaTempHisto", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0x16)
        {
          v296 = 22;
        }

        else
        {
          v296 = capacity;
        }

        v297 = v14;
        do
        {
          v298 = CFNumberCreate(0, kCFNumberSInt64Type, v297);
          CFArrayAppendValue(v34, v298);
          CFRelease(v298);
          v297 += 8;
          --v296;
        }

        while (v296);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 331)
    {
      v33 = CFStringCreateWithCString(0, "bandsCrossTempHisto", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0x2D)
        {
          v299 = 45;
        }

        else
        {
          v299 = capacity;
        }

        v300 = v14;
        do
        {
          v301 = CFNumberCreate(0, kCFNumberSInt64Type, v300);
          CFArrayAppendValue(v34, v301);
          CFRelease(v301);
          v300 += 8;
          --v299;
        }

        while (v299);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 1031)
    {
      v33 = CFStringCreateWithCString(0, "bandsUeccTempHisto", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0x1D)
        {
          v302 = 29;
        }

        else
        {
          v302 = capacity;
        }

        v303 = v14;
        do
        {
          v304 = CFNumberCreate(0, kCFNumberSInt64Type, v303);
          CFArrayAppendValue(v34, v304);
          CFRelease(v304);
          v303 += 8;
          --v302;
        }

        while (v302);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 1373)
    {
      v33 = CFStringCreateWithCString(0, "bandsGBBTempHisto", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0xA)
        {
          v305 = 10;
        }

        else
        {
          v305 = capacity;
        }

        v306 = v14;
        do
        {
          v307 = CFNumberCreate(0, kCFNumberSInt64Type, v306);
          CFArrayAppendValue(v34, v307);
          CFRelease(v307);
          v306 += 8;
          --v305;
        }

        while (v305);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 1246)
    {
      v33 = CFStringCreateWithCString(0, "bandsUeccCrossTempHisto", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 8)
        {
          v308 = 8;
        }

        else
        {
          v308 = capacity;
        }

        v309 = v14;
        do
        {
          v310 = CFNumberCreate(0, kCFNumberSInt64Type, v309);
          CFArrayAppendValue(v34, v310);
          CFRelease(v310);
          v309 += 8;
          --v308;
        }

        while (v308);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 1275)
    {
      v33 = CFStringCreateWithCString(0, "secInColdHisto", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0xD)
        {
          v311 = 13;
        }

        else
        {
          v311 = capacity;
        }

        v312 = v14;
        do
        {
          v313 = CFNumberCreate(0, kCFNumberSInt64Type, v312);
          CFArrayAppendValue(v34, v313);
          CFRelease(v313);
          v312 += 8;
          --v311;
        }

        while (v311);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 1313)
    {
      v33 = CFStringCreateWithCString(0, "secInHotHisto", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0xD)
        {
          v314 = 13;
        }

        else
        {
          v314 = capacity;
        }

        v315 = v14;
        do
        {
          v316 = CFNumberCreate(0, kCFNumberSInt64Type, v315);
          CFArrayAppendValue(v34, v316);
          CFRelease(v316);
          v315 += 8;
          --v314;
        }

        while (v314);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 1405)
    {
      v32 = "invalidTemp";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1355)
    {
      v32 = "crossTempColdEvict";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1356)
    {
      v32 = "crossTempHotEvict";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1357)
    {
      v32 = "crossTempColdHotEvict";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1407)
    {
      v32 = "crossTempFinishScan";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1358)
    {
      v33 = CFStringCreateWithCString(0, "tempChangedHisto", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0xD)
        {
          v317 = 13;
        }

        else
        {
          v317 = capacity;
        }

        v318 = v14;
        do
        {
          v319 = CFNumberCreate(0, kCFNumberSInt64Type, v318);
          CFArrayAppendValue(v34, v319);
          CFRelease(v319);
          v318 += 8;
          --v317;
        }

        while (v317);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 1359)
    {
      v33 = CFStringCreateWithCString(0, "tempChangedEnterETHisto", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0xD)
        {
          v320 = 13;
        }

        else
        {
          v320 = capacity;
        }

        v321 = v14;
        do
        {
          v322 = CFNumberCreate(0, kCFNumberSInt64Type, v321);
          CFArrayAppendValue(v34, v322);
          CFRelease(v322);
          v321 += 8;
          --v320;
        }

        while (v320);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 332)
    {
      v33 = CFStringCreateWithCString(0, "wcacheWaitLogMs", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0xA)
        {
          v323 = 10;
        }

        else
        {
          v323 = capacity;
        }

        v324 = v14;
        do
        {
          v325 = CFNumberCreate(0, kCFNumberSInt64Type, v324);
          CFArrayAppendValue(v34, v325);
          CFRelease(v325);
          v324 += 8;
          --v323;
        }

        while (v323);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 333)
    {
      v33 = CFStringCreateWithCString(0, "wcache_segsSortedLogSize", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0xA)
        {
          v326 = 10;
        }

        else
        {
          v326 = capacity;
        }

        v327 = v14;
        do
        {
          v328 = CFNumberCreate(0, kCFNumberSInt64Type, v327);
          CFArrayAppendValue(v34, v328);
          CFRelease(v328);
          v327 += 8;
          --v326;
        }

        while (v326);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 468)
    {
      v33 = CFStringCreateWithCString(0, "wcacheDirtyAtFlush", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0x10)
        {
          v329 = 16;
        }

        else
        {
          v329 = capacity;
        }

        v330 = v14;
        do
        {
          v331 = CFNumberCreate(0, kCFNumberSInt64Type, v330);
          CFArrayAppendValue(v34, v331);
          CFRelease(v331);
          v330 += 8;
          --v329;
        }

        while (v329);
      }

      goto LABEL_120;
    }

    if ((a3 & 2) != 0 && v13 == 457)
    {
      v32 = "wcacheSectorsDirtyIdle";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 340)
    {
      v32 = "numCrossTempUecc";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 953)
    {
      v32 = "numCrossTempRaidUecc";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 343)
    {
      v32 = "utilUeccReads";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 344)
    {
      v32 = "numOfAvoidedGCDueToTemp";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 349)
    {
      v32 = "RxBurnIntBandsProgrammed";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 350)
    {
      v32 = "RxBurnUsrBandsProgrammed";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 351)
    {
      v32 = "RxBurnIntNandWrites";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 352)
    {
      v32 = "RxBurnUsrNandWrites";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 356)
    {
      v32 = "nvme_stats_shutdown_count_host0_normal";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 358)
    {
      v32 = "nvme_stats_shutdown_count_host0_s2r";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 368)
    {
      v32 = "eraseSuspendEvents";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 369)
    {
      v32 = "eraseSuspendedStatuses";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 370)
    {
      v32 = "eraseSuspendedBands";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 371)
    {
      v32 = "eraseSuspendSituationsBelowThreshold";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 372)
    {
      v32 = "eraseSuspendSituationsAboveThreshold";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 374)
    {
      v32 = "bdrLastDoneHr";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 375)
    {
      v32 = "bdrBackupThreshHrs";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 603)
    {
      v32 = "chipIdTemperatureSample";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 385)
    {
      v32 = "openBandReadFail";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 401)
    {
      v32 = "offlineBlocksCnt";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 419)
    {
      v32 = "cache_heads";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 422)
    {
      v32 = "readVerifyNative";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1311)
    {
      v32 = "readVerifyNative2";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 423)
    {
      v32 = "reducedReadVerifyNative";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1312)
    {
      v32 = "reducedReadVerifyNative2";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 424)
    {
      v32 = "readVerifySlc";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 427)
    {
      v32 = "directToTLCBands";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 461)
    {
      v32 = "directToTLCSectors";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 485)
    {
      v32 = "non_proportional_directToTLCSectors";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 462)
    {
      v32 = "fallbackToWaterfall";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 463)
    {
      v33 = CFStringCreateWithCString(0, "balanceProportionBucketsHistogram", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0xB)
        {
          v332 = 11;
        }

        else
        {
          v332 = capacity;
        }

        v333 = v14;
        do
        {
          v334 = CFNumberCreate(0, kCFNumberSInt64Type, v333);
          CFArrayAppendValue(v34, v334);
          CFRelease(v334);
          v333 += 8;
          --v332;
        }

        while (v332);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 464)
    {
      v32 = "lockToTlc";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 913)
    {
      v33 = CFStringCreateWithCString(0, "fwaHistogram", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0xA)
        {
          v335 = 10;
        }

        else
        {
          v335 = capacity;
        }

        v336 = v14;
        do
        {
          v337 = CFNumberCreate(0, kCFNumberSInt64Type, v336);
          CFArrayAppendValue(v34, v337);
          CFRelease(v337);
          v336 += 8;
          --v335;
        }

        while (v335);
      }

      goto LABEL_120;
    }

    if ((a3 & 2) != 0 && v13 == 428)
    {
      v32 = "nandDesc";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 429)
    {
      v32 = "fwUpdatesPercentUsed";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 430)
    {
      v32 = "slcPercentUsed";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 431)
    {
      v32 = "percentUsed";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 432)
    {
      v32 = "hostAutoWrites";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 433)
    {
      v32 = "hostAutoWriteXacts";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 434)
    {
      v32 = "gcDestDynamic";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 435)
    {
      v32 = "gcDestStatic";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 436)
    {
      v32 = "gcDestWearlevel";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 466)
    {
      v33 = CFStringCreateWithCString(0, "qosDirectToTLC", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0x40)
        {
          v338 = 64;
        }

        else
        {
          v338 = capacity;
        }

        v339 = v14;
        do
        {
          v340 = CFNumberCreate(0, kCFNumberSInt64Type, v339);
          CFArrayAppendValue(v34, v340);
          CFRelease(v340);
          v339 += 8;
          --v338;
        }

        while (v338);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 467)
    {
      v33 = CFStringCreateWithCString(0, "maxQosDirectToTLC", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 4)
        {
          v341 = 4;
        }

        else
        {
          v341 = capacity;
        }

        v342 = v14;
        do
        {
          v343 = CFNumberCreate(0, kCFNumberSInt64Type, v342);
          CFArrayAppendValue(v34, v343);
          CFRelease(v343);
          v342 += 8;
          --v341;
        }

        while (v341);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 447)
    {
      v32 = "clogNumFastCxt";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 448)
    {
      v32 = "clogNumRapidReboots";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 449)
    {
      v32 = "clogFastCxtAbvThr";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 488)
    {
      v32 = "clogFastCxtSyncAborted";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 486)
    {
      v32 = "maxFailedFastCxtSync";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 450)
    {
      v32 = "rxBurnDiffModeRuns";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 518)
    {
      v32 = "skinnyRevectorSLC";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 519)
    {
      v32 = "skinnyRevectorTLC";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 627)
    {
      v32 = "minSkinnyPECycles";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 628)
    {
      v32 = "maxSkinnyPECycles";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 629)
    {
      v32 = "averageSkinnyPECycles";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 671)
    {
      v32 = "skinnyBandsNum";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 672)
    {
      v32 = "skinnyBandsNumDips";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 816)
    {
      v32 = "skinnyBandsExtraDip";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 538)
    {
      v32 = "skinnyBandsGBB";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 487)
    {
      v32 = "numFormatUserArea";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 490)
    {
      v33 = CFStringCreateWithCString(0, "bdrTmpHist", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0x40)
        {
          v344 = 64;
        }

        else
        {
          v344 = capacity;
        }

        v345 = v14;
        do
        {
          v346 = CFNumberCreate(0, kCFNumberSInt64Type, v345);
          CFArrayAppendValue(v34, v346);
          CFRelease(v346);
          v345 += 8;
          --v344;
        }

        while (v344);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 491)
    {
      v32 = "numFWUpdates";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 492)
    {
      v32 = "numClogLoadFails";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 624)
    {
      v33 = CFStringCreateWithCString(0, "clogFailReason", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0x10)
        {
          v347 = 16;
        }

        else
        {
          v347 = capacity;
        }

        v348 = v14;
        do
        {
          v349 = CFNumberCreate(0, kCFNumberSInt64Type, v348);
          CFArrayAppendValue(v34, v349);
          CFRelease(v349);
          v348 += 8;
          --v347;
        }

        while (v347);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 1001)
    {
      v33 = CFStringCreateWithCString(0, "clogReplayFailReason", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 8)
        {
          v350 = 8;
        }

        else
        {
          v350 = capacity;
        }

        v351 = v14;
        do
        {
          v352 = CFNumberCreate(0, kCFNumberSInt64Type, v351);
          CFArrayAppendValue(v34, v352);
          CFRelease(v352);
          v351 += 8;
          --v350;
        }

        while (v350);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 1002)
    {
      v32 = "clogReplayTransientError";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1003)
    {
      v32 = "clogReplaySpfError";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 493)
    {
      v32 = "rxBurnNumForcedDiffMode";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 497)
    {
      v32 = "bandPreErases";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 495)
    {
      v32 = "eanCompressWrites";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 496)
    {
      v32 = "eanHostWrites";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 498)
    {
      v32 = "eanHostUnmaps";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 499)
    {
      v32 = "eanHostFlushes";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 500)
    {
      v32 = "eanFastWrites";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 606)
    {
      v32 = "eanMaxInitTimeMs";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 617)
    {
      v32 = "eanAvgInitTimeMs";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 607)
    {
      v32 = "eanMinToFirstReadTimeMs";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 618)
    {
      v32 = "eanAvgToFirstReadTimeMs";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 619)
    {
      v32 = "eanMaxBootReadTimeMs";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 620)
    {
      v32 = "eanAvgBootReadTimeMs";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 625)
    {
      v32 = "eanMinBootReadMBPerSec";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 626)
    {
      v32 = "eanAvgBootReadMBPerSec";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1009)
    {
      v32 = "eanGcInvalidated";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1010)
    {
      v32 = "eanSyncWhileNotCoherent";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 621)
    {
      v33 = CFStringCreateWithCString(0, "eanBootReadsHist", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0xA)
        {
          v353 = 10;
        }

        else
        {
          v353 = capacity;
        }

        v354 = v14;
        do
        {
          v355 = CFNumberCreate(0, kCFNumberSInt64Type, v354);
          CFArrayAppendValue(v34, v355);
          CFRelease(v355);
          v354 += 8;
          --v353;
        }

        while (v353);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 632)
    {
      v33 = CFStringCreateWithCString(0, "eanFirstReadMode", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 6)
        {
          v356 = 6;
        }

        else
        {
          v356 = capacity;
        }

        v357 = v14;
        do
        {
          v358 = CFNumberCreate(0, kCFNumberSInt64Type, v357);
          CFArrayAppendValue(v34, v358);
          CFRelease(v358);
          v357 += 8;
          --v356;
        }

        while (v356);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 642)
    {
      v32 = "eanFailSectors";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 502)
    {
      v32 = "autowriteWaitTransferTaskBlocks";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 505)
    {
      v32 = "maxVerticsInBand";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 506)
    {
      v32 = "numVertics";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 507)
    {
      v32 = "exceededCVertics";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 520)
    {
      v32 = "perfSetupAttempts";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 521)
    {
      v32 = "perfSetupSuccesses";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 522)
    {
      v32 = "perfWriteAttempts";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 523)
    {
      v32 = "perfWriteSuccesses";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 524)
    {
      v32 = "perfReadAttempts";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 525)
    {
      v32 = "perfReadSuccesses";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 526)
    {
      v32 = "perfCleanupAttempts";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 527)
    {
      v32 = "perfCleanupSuccesses";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 612)
    {
      v32 = "perfOSLCRuns";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 616)
    {
      v32 = "perfTotalDmaMb";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 664)
    {
      v32 = "perfIntermediateWrites";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 665)
    {
      v32 = "perfUserWrites";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 707)
    {
      v32 = "perfUserErases";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 708)
    {
      v32 = "perfIntErases";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 530)
    {
      v32 = "firstFailedDieId";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 531)
    {
      v32 = "numDieFailures";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 828)
    {
      v32 = "numDipFailures";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 1369)
    {
      v33 = CFStringCreateWithCString(0, "realGBBPerDipOfFailingDie", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 8)
        {
          v359 = 8;
        }

        else
        {
          v359 = capacity;
        }

        v360 = v14;
        do
        {
          v361 = CFNumberCreate(0, kCFNumberSInt64Type, v360);
          CFArrayAppendValue(v34, v361);
          CFRelease(v361);
          v360 += 8;
          --v359;
        }

        while (v359);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 532)
    {
      v32 = "spareAvailablePercent";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 533)
    {
      v32 = "dataFabricErr";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 534)
    {
      v32 = "downlinkFabricErr";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 535)
    {
      v32 = "prpAccTimeoutErr";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 537)
    {
      v32 = "uplinkFabricErr";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 543)
    {
      v32 = "bandParityAllocationFailed";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 581)
    {
      v32 = "averageTLCPECycles";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 582)
    {
      v32 = "averageSLCPECycles";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 583)
    {
      v32 = "numAtomicBoots";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 584)
    {
      v32 = "clogMinorMismatch";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 544)
    {
      v32 = "fastHwBurstToSlc";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 553)
    {
      v32 = "slowHwFlushToSlc";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 557)
    {
      v32 = "slowHwToSlc";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1117)
    {
      v32 = "slowHwToOslc";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 548)
    {
      v32 = "fastHwToTlcBurst";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 611)
    {
      v32 = "fastHwToTlcBalance";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 545)
    {
      v32 = "slowHwToTlc";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 558)
    {
      v32 = "flushNwToSlc";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 559)
    {
      v32 = "flushNwToTlc";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1112)
    {
      v32 = "flushNwToOslc";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 563)
    {
      v32 = "slcDemandFlushCount";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 564)
    {
      v32 = "slcDemandBurstCount";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 613)
    {
      v32 = "slcDemandBurstWritesInGC";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 614)
    {
      v32 = "slcDemandBurstWritesInTT";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 615)
    {
      v32 = "slcDemandBurstWritesInNRP";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 546)
    {
      v33 = CFStringCreateWithCString(0, "slcDemandBurstSizeDetected", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0xA)
        {
          v362 = 10;
        }

        else
        {
          v362 = capacity;
        }

        v363 = v14;
        do
        {
          v364 = CFNumberCreate(0, kCFNumberSInt64Type, v363);
          CFArrayAppendValue(v34, v364);
          CFRelease(v364);
          v363 += 8;
          --v362;
        }

        while (v362);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 549)
    {
      v33 = CFStringCreateWithCString(0, "slcDemandBurstSizeSlc", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0xA)
        {
          v365 = 10;
        }

        else
        {
          v365 = capacity;
        }

        v366 = v14;
        do
        {
          v367 = CFNumberCreate(0, kCFNumberSInt64Type, v366);
          CFArrayAppendValue(v34, v367);
          CFRelease(v367);
          v366 += 8;
          --v365;
        }

        while (v365);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 547)
    {
      v33 = CFStringCreateWithCString(0, "slcDemandBurstDur", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0xA)
        {
          v368 = 10;
        }

        else
        {
          v368 = capacity;
        }

        v369 = v14;
        do
        {
          v370 = CFNumberCreate(0, kCFNumberSInt64Type, v369);
          CFArrayAppendValue(v34, v370);
          CFRelease(v370);
          v369 += 8;
          --v368;
        }

        while (v368);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 560)
    {
      v32 = "oslcHw";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 635)
    {
      v32 = "oslcHwGC";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 636)
    {
      v32 = "oslcHwTT";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 637)
    {
      v32 = "oslcHwNRP";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 561)
    {
      v32 = "oslcTransitions";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 565)
    {
      v32 = "oslcBaseAvgPE";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 568)
    {
      v32 = "oslcFastWAmpUOnOff";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 575)
    {
      v32 = "oslcHotTLCOnOff";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 588)
    {
      v32 = "oslcGCinvalidations";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 589)
    {
      v32 = "oslcGCActivateReason";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 590)
    {
      v32 = "oslcLowCleanBandsUOnOff";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 591)
    {
      v32 = "oslcTooManyGCMustOnOff";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 594)
    {
      v32 = "oslcBdrBands";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 595)
    {
      v32 = "oslcBdrValid";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 602)
    {
      v32 = "oslcGCActiveWrites";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 638)
    {
      v33 = CFStringCreateWithCString(0, "oslcDemandBurstSize", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0xA)
        {
          v371 = 10;
        }

        else
        {
          v371 = capacity;
        }

        v372 = v14;
        do
        {
          v373 = CFNumberCreate(0, kCFNumberSInt64Type, v372);
          CFArrayAppendValue(v34, v373);
          CFRelease(v373);
          v372 += 8;
          --v371;
        }

        while (v371);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 674)
    {
      v33 = CFStringCreateWithCString(0, "oslcNoVotesHw", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 8)
        {
          v374 = 8;
        }

        else
        {
          v374 = capacity;
        }

        v375 = v14;
        do
        {
          v376 = CFNumberCreate(0, kCFNumberSInt64Type, v375);
          CFArrayAppendValue(v34, v376);
          CFRelease(v376);
          v375 += 8;
          --v374;
        }

        while (v374);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 884)
    {
      v32 = "oslcHwCloseBand";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 1408)
    {
      v32 = "oSlcAllGo";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 601)
    {
      v32 = "waterfallLockSectors";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1462)
    {
      v33 = CFStringCreateWithCString(0, "nandWritesByMode", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 6)
        {
          v377 = 6;
        }

        else
        {
          v377 = capacity;
        }

        v378 = v14;
        do
        {
          v379 = CFNumberCreate(0, kCFNumberSInt64Type, v378);
          CFArrayAppendValue(v34, v379);
          CFRelease(v379);
          v378 += 8;
          --v377;
        }

        while (v377);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 1463)
    {
      v33 = CFStringCreateWithCString(0, "nandReadsByMode", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 6)
        {
          v380 = 6;
        }

        else
        {
          v380 = capacity;
        }

        v381 = v14;
        do
        {
          v382 = CFNumberCreate(0, kCFNumberSInt64Type, v381);
          CFArrayAppendValue(v34, v382);
          CFRelease(v382);
          v381 += 8;
          --v380;
        }

        while (v380);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 605)
    {
      v33 = CFStringCreateWithCString(0, "gcActiveReasons", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0xA)
        {
          v383 = 10;
        }

        else
        {
          v383 = capacity;
        }

        v384 = v14;
        do
        {
          v385 = CFNumberCreate(0, kCFNumberSInt64Type, v384);
          CFArrayAppendValue(v34, v385);
          CFRelease(v385);
          v384 += 8;
          --v383;
        }

        while (v383);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 610)
    {
      v33 = CFStringCreateWithCString(0, "pcieAerCounters", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0x40)
        {
          v386 = 64;
        }

        else
        {
          v386 = capacity;
        }

        v387 = v14;
        do
        {
          v388 = CFNumberCreate(0, kCFNumberSInt64Type, v387);
          CFArrayAppendValue(v34, v388);
          CFRelease(v388);
          v387 += 8;
          --v386;
        }

        while (v386);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 622)
    {
      v32 = "maxBgInitTimeMs";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 623)
    {
      v32 = "avgBgInitTimeMs";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 633)
    {
      v32 = "sequentialSegs";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 634)
    {
      v32 = "notSequentialSegs";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1437)
    {
      v32 = "paddingFor16KBAlinged";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1438)
    {
      v32 = "nandWritesIn16KBAlignedMode";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 541)
    {
      v32 = "bdrHostPingInitial";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 542)
    {
      v32 = "bdrHostPingMoreNeeded";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 667)
    {
      v32 = "wearlevelingCallsSkipped";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1442)
    {
      v32 = "wearlevelingHotColdFailSafeCnt";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 676)
    {
      v32 = "bdrHostPingExtra";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 826)
    {
      v32 = "bdrBackupChecks";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1362)
    {
      v33 = CFStringCreateWithCString(0, "gcMustReasons", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0x15)
        {
          v389 = 21;
        }

        else
        {
          v389 = capacity;
        }

        v390 = v14;
        do
        {
          v391 = CFNumberCreate(0, kCFNumberSInt64Type, v390);
          CFArrayAppendValue(v34, v391);
          CFRelease(v391);
          v390 += 8;
          --v389;
        }

        while (v389);
      }

      goto LABEL_120;
    }

    if ((a3 & 2) != 0 && v13 == 666)
    {
      v32 = "nofDies";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 675)
    {
      v32 = "totalLbas";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 687)
    {
      v33 = CFStringCreateWithCString(0, "cbdrInitSent", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 3)
        {
          v392 = 3;
        }

        else
        {
          v392 = capacity;
        }

        v393 = v14;
        do
        {
          v394 = CFNumberCreate(0, kCFNumberSInt64Type, v393);
          CFArrayAppendValue(v34, v394);
          CFRelease(v394);
          v393 += 8;
          --v392;
        }

        while (v392);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 688)
    {
      v32 = "cbdrPauseSent";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 689)
    {
      v32 = "cbdrResumeSent";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 690)
    {
      v32 = "cbdrGetResultSent";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 691)
    {
      v32 = "cbdrEarlyExits";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 694)
    {
      v33 = CFStringCreateWithCString(0, "cbdrRefreshGrades", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0xA)
        {
          v395 = 10;
        }

        else
        {
          v395 = capacity;
        }

        v396 = v14;
        do
        {
          v397 = CFNumberCreate(0, kCFNumberSInt64Type, v396);
          CFArrayAppendValue(v34, v397);
          CFRelease(v397);
          v396 += 8;
          --v395;
        }

        while (v395);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 695)
    {
      v32 = "cbdrNotEnoughReads";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 696)
    {
      v32 = "cbdrAborts";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 699)
    {
      v32 = "cbdrFullyDone";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 753)
    {
      v32 = "cbdrNumSlowRefreshes";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 754)
    {
      v32 = "cbdrNumFastRefreshes";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 755)
    {
      v32 = "cbdrTotalRefreshValidity";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 756)
    {
      v33 = CFStringCreateWithCString(0, "cbdrRefreshedAges", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 9)
        {
          v398 = 9;
        }

        else
        {
          v398 = capacity;
        }

        v399 = v14;
        do
        {
          v400 = CFNumberCreate(0, kCFNumberSInt64Type, v399);
          CFArrayAppendValue(v34, v400);
          CFRelease(v400);
          v399 += 8;
          --v398;
        }

        while (v398);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 1310)
    {
      v33 = CFStringCreateWithCString(0, "cbdrRefreshedAges2", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 9)
        {
          v401 = 9;
        }

        else
        {
          v401 = capacity;
        }

        v402 = v14;
        do
        {
          v403 = CFNumberCreate(0, kCFNumberSInt64Type, v402);
          CFArrayAppendValue(v34, v403);
          CFRelease(v403);
          v402 += 8;
          --v401;
        }

        while (v401);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 757)
    {
      v32 = "cbdrTotalReads";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 758)
    {
      v32 = "cbdrSkippedBlocks";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 759)
    {
      v33 = CFStringCreateWithCString(0, "cbdrScanPct", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 5)
        {
          v404 = 5;
        }

        else
        {
          v404 = capacity;
        }

        v405 = v14;
        do
        {
          v406 = CFNumberCreate(0, kCFNumberSInt64Type, v405);
          CFArrayAppendValue(v34, v406);
          CFRelease(v406);
          v405 += 8;
          --v404;
        }

        while (v404);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 1309)
    {
      v33 = CFStringCreateWithCString(0, "cbdrScanPct2", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 5)
        {
          v407 = 5;
        }

        else
        {
          v407 = capacity;
        }

        v408 = v14;
        do
        {
          v409 = CFNumberCreate(0, kCFNumberSInt64Type, v408);
          CFArrayAppendValue(v34, v409);
          CFRelease(v409);
          v408 += 8;
          --v407;
        }

        while (v407);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 766)
    {
      v32 = "cbdrTotalReadsSLC";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1351)
    {
      v32 = "cbdrBandsRefreshedSLC";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 769)
    {
      v33 = CFStringCreateWithCString(0, "cbdrScanPctSLC", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 5)
        {
          v410 = 5;
        }

        else
        {
          v410 = capacity;
        }

        v411 = v14;
        do
        {
          v412 = CFNumberCreate(0, kCFNumberSInt64Type, v411);
          CFArrayAppendValue(v34, v412);
          CFRelease(v412);
          v411 += 8;
          --v410;
        }

        while (v410);
      }

      goto LABEL_120;
    }

    if ((a3 & 2) != 0 && v13 == 970)
    {
      v32 = "cbdrAbandoned";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 683)
    {
      v32 = "iBootNANDResets";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 693)
    {
      v32 = "gcDestLogHighWaterMark";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 718)
    {
      v32 = "droppedSecondaryLeftoverSecs";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 709)
    {
      v32 = "iologDisablesForOverflow";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 710)
    {
      v32 = "iologOutOfLbas";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 702)
    {
      v33 = CFStringCreateWithCString(0, "vcurve", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0x20)
        {
          v413 = 32;
        }

        else
        {
          v413 = capacity;
        }

        v414 = v14;
        do
        {
          v415 = CFNumberCreate(0, kCFNumberSInt64Type, v414);
          CFArrayAppendValue(v34, v415);
          CFRelease(v415);
          v414 += 8;
          --v413;
        }

        while (v413);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 703)
    {
      v33 = CFStringCreateWithCString(0, "injDepth", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0xC)
        {
          v416 = 12;
        }

        else
        {
          v416 = capacity;
        }

        v417 = v14;
        do
        {
          v418 = CFNumberCreate(0, kCFNumberSInt64Type, v417);
          CFArrayAppendValue(v34, v418);
          CFRelease(v418);
          v417 += 8;
          --v416;
        }

        while (v416);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 704)
    {
      v32 = "logical_disk_occupied_promiles";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 719)
    {
      v32 = "skinnyBandErases";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 720)
    {
      v32 = "RxBurnSkinnyBandsErases";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 729)
    {
      v32 = "dmUtilWrites";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 730)
    {
      v32 = "rvFails";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 732)
    {
      v32 = "tunnelsDenied";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 741)
    {
      v32 = "autoSkipTriggers";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 742)
    {
      v32 = "autoSkipPlanes";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 743)
    {
      v32 = "autoSkipTears";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 746)
    {
      v32 = "bandKill_userFlattenExcessive";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 747)
    {
      v32 = "bandKill_IntFlattenExcessive";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 750)
    {
      v32 = "bandKill_formatVertExcessive";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 751)
    {
      v32 = "bandKill_formatVertBalance";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 744)
    {
      v33 = CFStringCreateWithCString(0, "raidReconstructDurationHisto", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 8)
        {
          v419 = 8;
        }

        else
        {
          v419 = capacity;
        }

        v420 = v14;
        do
        {
          v421 = CFNumberCreate(0, kCFNumberSInt64Type, v420);
          CFArrayAppendValue(v34, v421);
          CFRelease(v421);
          v420 += 8;
          --v419;
        }

        while (v419);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 745)
    {
      v33 = CFStringCreateWithCString(0, "failsOnReconstructHisto", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 8)
        {
          v422 = 8;
        }

        else
        {
          v422 = capacity;
        }

        v423 = v14;
        do
        {
          v424 = CFNumberCreate(0, kCFNumberSInt64Type, v423);
          CFArrayAppendValue(v34, v424);
          CFRelease(v424);
          v423 += 8;
          --v422;
        }

        while (v422);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 776)
    {
      v32 = "bandKill_pgBindingFewBlocks";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 764)
    {
      v32 = "ricSPRVFail";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 765)
    {
      v32 = "ricMPRVFail";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 770)
    {
      v33 = CFStringCreateWithCString(0, "cpuBurstLength", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 8)
        {
          v425 = 8;
        }

        else
        {
          v425 = capacity;
        }

        v426 = v14;
        do
        {
          v427 = CFNumberCreate(0, kCFNumberSInt64Type, v426);
          CFArrayAppendValue(v34, v427);
          CFRelease(v427);
          v426 += 8;
          --v425;
        }

        while (v425);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 778)
    {
      v32 = "snapshotCPUHigh";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 779)
    {
      v32 = "snapshotCPULow";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 780)
    {
      v32 = "gcWithoutBMs";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 792)
    {
      v32 = "numTLC_pgs";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 793)
    {
      v32 = "pgValidity";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 794)
    {
      v32 = "pgTotal";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 821)
    {
      v32 = "writeAmp";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 822)
    {
      v32 = "ricMaxClogOnlyPages";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 827)
    {
      v32 = "ricExceedClogOnlyPagesTH";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 823)
    {
      v33 = CFStringCreateWithCString(0, "readClassifyStatusesHisto", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 3)
        {
          v428 = 3;
        }

        else
        {
          v428 = capacity;
        }

        v429 = v14;
        do
        {
          v430 = CFNumberCreate(0, kCFNumberSInt64Type, v429);
          CFArrayAppendValue(v34, v430);
          CFRelease(v430);
          v429 += 8;
          --v428;
        }

        while (v428);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 824)
    {
      v33 = CFStringCreateWithCString(0, "readWithAuxStatusesHisto", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0xA)
        {
          v431 = 10;
        }

        else
        {
          v431 = capacity;
        }

        v432 = v14;
        do
        {
          v433 = CFNumberCreate(0, kCFNumberSInt64Type, v432);
          CFArrayAppendValue(v34, v433);
          CFRelease(v433);
          v432 += 8;
          --v431;
        }

        while (v431);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 825)
    {
      v33 = CFStringCreateWithCString(0, "readReconstructStatusesHisto", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0xA)
        {
          v434 = 10;
        }

        else
        {
          v434 = capacity;
        }

        v435 = v14;
        do
        {
          v436 = CFNumberCreate(0, kCFNumberSInt64Type, v435);
          CFArrayAppendValue(v34, v436);
          CFRelease(v436);
          v435 += 8;
          --v434;
        }

        while (v434);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 830)
    {
      v32 = "hostBlocksByKrnl";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 831)
    {
      v32 = "prefetchNextRange";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 832)
    {
      v32 = "slcBandSize";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 855)
    {
      v33 = CFStringCreateWithCString(0, "fwFormatVersion", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 3)
        {
          v437 = 3;
        }

        else
        {
          v437 = capacity;
        }

        v438 = v14;
        do
        {
          v439 = CFNumberCreate(0, kCFNumberSInt64Type, v438);
          CFArrayAppendValue(v34, v439);
          CFRelease(v439);
          v438 += 8;
          --v437;
        }

        while (v437);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 883)
    {
      v32 = "clogEmptyProgramms";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 868)
    {
      v33 = CFStringCreateWithCString(0, "dmReasonsSlc_1bc", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0x20)
        {
          v440 = 32;
        }

        else
        {
          v440 = capacity;
        }

        v441 = v14;
        do
        {
          v442 = CFNumberCreate(0, kCFNumberSInt64Type, v441);
          CFArrayAppendValue(v34, v442);
          CFRelease(v442);
          v441 += 8;
          --v440;
        }

        while (v440);
      }

      goto LABEL_120;
    }

    if ((a3 & 2) != 0 && v13 == 869)
    {
      v33 = CFStringCreateWithCString(0, "dmReasonsTlc_1bc", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0x20)
        {
          v443 = 32;
        }

        else
        {
          v443 = capacity;
        }

        v444 = v14;
        do
        {
          v445 = CFNumberCreate(0, kCFNumberSInt64Type, v444);
          CFArrayAppendValue(v34, v445);
          CFRelease(v445);
          v444 += 8;
          --v443;
        }

        while (v443);
      }

      goto LABEL_120;
    }

    if ((a3 & 2) != 0 && v13 == 870)
    {
      v33 = CFStringCreateWithCString(0, "dmReasonsSlc_1bc_he", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0x20)
        {
          v446 = 32;
        }

        else
        {
          v446 = capacity;
        }

        v447 = v14;
        do
        {
          v448 = CFNumberCreate(0, kCFNumberSInt64Type, v447);
          CFArrayAppendValue(v34, v448);
          CFRelease(v448);
          v447 += 8;
          --v446;
        }

        while (v446);
      }

      goto LABEL_120;
    }

    if ((a3 & 2) != 0 && v13 == 871)
    {
      v33 = CFStringCreateWithCString(0, "dmReasonsTlc_1bc_he", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0x20)
        {
          v449 = 32;
        }

        else
        {
          v449 = capacity;
        }

        v450 = v14;
        do
        {
          v451 = CFNumberCreate(0, kCFNumberSInt64Type, v450);
          CFArrayAppendValue(v34, v451);
          CFRelease(v451);
          v450 += 8;
          --v449;
        }

        while (v449);
      }

      goto LABEL_120;
    }

    if ((a3 & 2) != 0 && v13 == 876)
    {
      v33 = CFStringCreateWithCString(0, "dmReasonsSlc_mbc", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0x20)
        {
          v452 = 32;
        }

        else
        {
          v452 = capacity;
        }

        v453 = v14;
        do
        {
          v454 = CFNumberCreate(0, kCFNumberSInt64Type, v453);
          CFArrayAppendValue(v34, v454);
          CFRelease(v454);
          v453 += 8;
          --v452;
        }

        while (v452);
      }

      goto LABEL_120;
    }

    if ((a3 & 2) != 0 && v13 == 877)
    {
      v33 = CFStringCreateWithCString(0, "dmReasonsTlc_mbc", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0x20)
        {
          v455 = 32;
        }

        else
        {
          v455 = capacity;
        }

        v456 = v14;
        do
        {
          v457 = CFNumberCreate(0, kCFNumberSInt64Type, v456);
          CFArrayAppendValue(v34, v457);
          CFRelease(v457);
          v456 += 8;
          --v455;
        }

        while (v455);
      }

      goto LABEL_120;
    }

    if ((a3 & 2) != 0 && v13 == 1291)
    {
      v33 = CFStringCreateWithCString(0, "dmReasonsTlc_mbc2", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0x20)
        {
          v458 = 32;
        }

        else
        {
          v458 = capacity;
        }

        v459 = v14;
        do
        {
          v460 = CFNumberCreate(0, kCFNumberSInt64Type, v459);
          CFArrayAppendValue(v34, v460);
          CFRelease(v460);
          v459 += 8;
          --v458;
        }

        while (v458);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 896)
    {
      v32 = "autoSweepBlocks";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 897)
    {
      v33 = CFStringCreateWithCString(0, "wcWrFragSizes", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0x10)
        {
          v461 = 16;
        }

        else
        {
          v461 = capacity;
        }

        v462 = v14;
        do
        {
          v463 = CFNumberCreate(0, kCFNumberSInt64Type, v462);
          CFArrayAppendValue(v34, v463);
          CFRelease(v463);
          v462 += 8;
          --v461;
        }

        while (v461);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 905)
    {
      v33 = CFStringCreateWithCString(0, "turboRaidRelPerBlock", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0x10)
        {
          v464 = 16;
        }

        else
        {
          v464 = capacity;
        }

        v465 = v14;
        do
        {
          v466 = CFNumberCreate(0, kCFNumberSInt64Type, v465);
          CFArrayAppendValue(v34, v466);
          CFRelease(v466);
          v465 += 8;
          --v464;
        }

        while (v464);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 906)
    {
      v33 = CFStringCreateWithCString(0, "turboRaidRelBetweenRefreshesPerBlock", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0x10)
        {
          v467 = 16;
        }

        else
        {
          v467 = capacity;
        }

        v468 = v14;
        do
        {
          v469 = CFNumberCreate(0, kCFNumberSInt64Type, v468);
          CFArrayAppendValue(v34, v469);
          CFRelease(v469);
          v468 += 8;
          --v467;
        }

        while (v467);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 907)
    {
      v33 = CFStringCreateWithCString(0, "turboRaidMaxRelBetweenRefreshesPerBlock", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0x10)
        {
          v470 = 16;
        }

        else
        {
          v470 = capacity;
        }

        v471 = v14;
        do
        {
          v472 = CFNumberCreate(0, kCFNumberSInt64Type, v471);
          CFArrayAppendValue(v34, v472);
          CFRelease(v472);
          v471 += 8;
          --v470;
        }

        while (v470);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 908)
    {
      v33 = CFStringCreateWithCString(0, "turboRaidMinRelBetweenRefreshesPerBlock", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0x10)
        {
          v473 = 16;
        }

        else
        {
          v473 = capacity;
        }

        v474 = v14;
        do
        {
          v475 = CFNumberCreate(0, kCFNumberSInt64Type, v474);
          CFArrayAppendValue(v34, v475);
          CFRelease(v475);
          v474 += 8;
          --v473;
        }

        while (v473);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 918)
    {
      v33 = CFStringCreateWithCString(0, "turboRaidMaxCyclesBetweenRel", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0x10)
        {
          v476 = 16;
        }

        else
        {
          v476 = capacity;
        }

        v477 = v14;
        do
        {
          v478 = CFNumberCreate(0, kCFNumberSInt64Type, v477);
          CFArrayAppendValue(v34, v478);
          CFRelease(v478);
          v477 += 8;
          --v476;
        }

        while (v476);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 919)
    {
      v33 = CFStringCreateWithCString(0, "turboRaidMinCyclesBetweenRel", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0x10)
        {
          v479 = 16;
        }

        else
        {
          v479 = capacity;
        }

        v480 = v14;
        do
        {
          v481 = CFNumberCreate(0, kCFNumberSInt64Type, v480);
          CFArrayAppendValue(v34, v481);
          CFRelease(v481);
          v480 += 8;
          --v479;
        }

        while (v479);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 932)
    {
      v33 = CFStringCreateWithCString(0, "turboRaidLastRelPECycles", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0x10)
        {
          v482 = 16;
        }

        else
        {
          v482 = capacity;
        }

        v483 = v14;
        do
        {
          v484 = CFNumberCreate(0, kCFNumberSInt64Type, v483);
          CFArrayAppendValue(v34, v484);
          CFRelease(v484);
          v483 += 8;
          --v482;
        }

        while (v482);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 933)
    {
      v33 = CFStringCreateWithCString(0, "turboRaidRelQualPECycles", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0x10)
        {
          v485 = 16;
        }

        else
        {
          v485 = capacity;
        }

        v486 = v14;
        do
        {
          v487 = CFNumberCreate(0, kCFNumberSInt64Type, v486);
          CFArrayAppendValue(v34, v487);
          CFRelease(v487);
          v486 += 8;
          --v485;
        }

        while (v485);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 920)
    {
      v33 = CFStringCreateWithCString(0, "turboRaidAuxPerBlock", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0x10)
        {
          v488 = 16;
        }

        else
        {
          v488 = capacity;
        }

        v489 = v14;
        do
        {
          v490 = CFNumberCreate(0, kCFNumberSInt64Type, v489);
          CFArrayAppendValue(v34, v490);
          CFRelease(v490);
          v489 += 8;
          --v488;
        }

        while (v488);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 921)
    {
      v33 = CFStringCreateWithCString(0, "turboRaidAuxBetweenRefreshesPerBlock", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0x10)
        {
          v491 = 16;
        }

        else
        {
          v491 = capacity;
        }

        v492 = v14;
        do
        {
          v493 = CFNumberCreate(0, kCFNumberSInt64Type, v492);
          CFArrayAppendValue(v34, v493);
          CFRelease(v493);
          v492 += 8;
          --v491;
        }

        while (v491);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 930)
    {
      v33 = CFStringCreateWithCString(0, "turboRaidMaxCyclesBetweenAux", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0x10)
        {
          v494 = 16;
        }

        else
        {
          v494 = capacity;
        }

        v495 = v14;
        do
        {
          v496 = CFNumberCreate(0, kCFNumberSInt64Type, v495);
          CFArrayAppendValue(v34, v496);
          CFRelease(v496);
          v495 += 8;
          --v494;
        }

        while (v494);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 931)
    {
      v33 = CFStringCreateWithCString(0, "turboRaidMinCyclesBetweenAux", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0x10)
        {
          v497 = 16;
        }

        else
        {
          v497 = capacity;
        }

        v498 = v14;
        do
        {
          v499 = CFNumberCreate(0, kCFNumberSInt64Type, v498);
          CFArrayAppendValue(v34, v499);
          CFRelease(v499);
          v498 += 8;
          --v497;
        }

        while (v497);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 934)
    {
      v33 = CFStringCreateWithCString(0, "turboRaidLastAuxPECycles", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0x10)
        {
          v500 = 16;
        }

        else
        {
          v500 = capacity;
        }

        v501 = v14;
        do
        {
          v502 = CFNumberCreate(0, kCFNumberSInt64Type, v501);
          CFArrayAppendValue(v34, v502);
          CFRelease(v502);
          v501 += 8;
          --v500;
        }

        while (v500);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 935)
    {
      v33 = CFStringCreateWithCString(0, "turboRaidAuxQualPECycles", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0x10)
        {
          v503 = 16;
        }

        else
        {
          v503 = capacity;
        }

        v504 = v14;
        do
        {
          v505 = CFNumberCreate(0, kCFNumberSInt64Type, v504);
          CFArrayAppendValue(v34, v505);
          CFRelease(v505);
          v504 += 8;
          --v503;
        }

        while (v503);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 922)
    {
      v32 = "turboRaidRelLockMark";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 923)
    {
      v32 = "turboRaidAuxLockMark";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 910)
    {
      v33 = CFStringCreateWithCString(0, "pgBelowMinBands", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 2)
        {
          v506 = 2;
        }

        else
        {
          v506 = capacity;
        }

        v507 = v14;
        do
        {
          v508 = CFNumberCreate(0, kCFNumberSInt64Type, v507);
          CFArrayAppendValue(v34, v508);
          CFRelease(v508);
          v507 += 8;
          --v506;
        }

        while (v506);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 911)
    {
      v33 = CFStringCreateWithCString(0, "pgNoBands", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 2)
        {
          v509 = 2;
        }

        else
        {
          v509 = capacity;
        }

        v510 = v14;
        do
        {
          v511 = CFNumberCreate(0, kCFNumberSInt64Type, v510);
          CFArrayAppendValue(v34, v511);
          CFRelease(v511);
          v510 += 8;
          --v509;
        }

        while (v509);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 912)
    {
      v33 = CFStringCreateWithCString(0, "pgBelowMinBlocks", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 2)
        {
          v512 = 2;
        }

        else
        {
          v512 = capacity;
        }

        v513 = v14;
        do
        {
          v514 = CFNumberCreate(0, kCFNumberSInt64Type, v513);
          CFArrayAppendValue(v34, v514);
          CFRelease(v514);
          v513 += 8;
          --v512;
        }

        while (v512);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 915)
    {
      v32 = "probationalsDuringParityRead";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 925)
    {
      v32 = "reconfigureInFlightParityBuffer";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 946)
    {
      v32 = "reconfigurePmxParityBuffer";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 936)
    {
      v32 = "readDisturbMPBXSkipOnShutdown";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 937)
    {
      v32 = "turboRaidPEFailAfterRel";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 938)
    {
      v32 = "turboRaidPEFailAfterAux";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 939)
    {
      v32 = "dvfmVotesCPU";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 940)
    {
      v32 = "dvfmVotesBandwidth";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 954)
    {
      v32 = "dvfmSupportedBM";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 942)
    {
      v32 = "maxSLCEndurance";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 943)
    {
      v32 = "maxMixedEndurance";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 944)
    {
      v32 = "maxNativeEndurance";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 957)
    {
      v32 = "vcGotInitTunnel";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 958)
    {
      v32 = "vcSessionsCount";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 948)
    {
      v33 = CFStringCreateWithCString(0, "assertHistory", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0x28)
        {
          v515 = 40;
        }

        else
        {
          v515 = capacity;
        }

        v516 = v14;
        do
        {
          v517 = CFNumberCreate(0, kCFNumberSInt64Type, v516);
          CFArrayAppendValue(v34, v517);
          CFRelease(v517);
          v516 += 8;
          --v515;
        }

        while (v515);
      }

      goto LABEL_120;
    }

    if ((a3 & 2) != 0 && v13 == 951)
    {
      v32 = "asp3Support";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 952)
    {
      v32 = "asp3DeviceType";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 955)
    {
      v32 = "bitFlipRetryPass";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 966)
    {
      v32 = "raidReadBufFromMem";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 968)
    {
      v32 = "rdBeforePrescale";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 969)
    {
      v32 = "rdAfterPrescale";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 961)
    {
      v33 = CFStringCreateWithCString(0, "osBuildStr", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 2)
        {
          v518 = 2;
        }

        else
        {
          v518 = capacity;
        }

        v519 = v14;
        do
        {
          v520 = CFNumberCreate(0, kCFNumberSInt64Type, v519);
          CFArrayAppendValue(v34, v520);
          CFRelease(v520);
          v519 += 8;
          --v518;
        }

        while (v518);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 967)
    {
      v33 = CFStringCreateWithCString(0, "indTrimFrags", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0xC)
        {
          v521 = 12;
        }

        else
        {
          v521 = capacity;
        }

        v522 = v14;
        do
        {
          v523 = CFNumberCreate(0, kCFNumberSInt64Type, v522);
          CFArrayAppendValue(v34, v523);
          CFRelease(v523);
          v522 += 8;
          --v521;
        }

        while (v521);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 971)
    {
      v33 = CFStringCreateWithCString(0, "indUsedFrags", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0xC)
        {
          v524 = 12;
        }

        else
        {
          v524 = capacity;
        }

        v525 = v14;
        do
        {
          v526 = CFNumberCreate(0, kCFNumberSInt64Type, v525);
          CFArrayAppendValue(v34, v526);
          CFRelease(v526);
          v525 += 8;
          --v524;
        }

        while (v524);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 985)
    {
      v32 = "diagBandSkipRefresh";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 973)
    {
      v32 = "ldefragOnlyTrollingOnChoke";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 976)
    {
      v32 = "ldefragHostTotalReadSectors";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 980)
    {
      v32 = "ldefragTrollChains";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 981)
    {
      v32 = "ldefragTrollFragments";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 982)
    {
      v32 = "ldefragTrollSectors";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 984)
    {
      v32 = "ldefragTrollTotalReadSectors";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 990)
    {
      v32 = "ldefragDroppedSegs";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 992)
    {
      v32 = "ldefragActivations";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 993)
    {
      v32 = "ldefragHostTrimSectors";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 994)
    {
      v32 = "ldefragTrollTrimSectors";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1401)
    {
      v32 = "ldefragFailedMemBalancer";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 986)
    {
      v32 = "lastSweepStart";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 987)
    {
      v32 = "lastSweepDuration";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1000)
    {
      v32 = "sweptSectors";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1013)
    {
      v32 = "raidParitySubtractReads";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1015)
    {
      v33 = CFStringCreateWithCString(0, "eanEarlyBootUeccPage", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 4)
        {
          v527 = 4;
        }

        else
        {
          v527 = capacity;
        }

        v528 = v14;
        do
        {
          v529 = CFNumberCreate(0, kCFNumberSInt64Type, v528);
          CFArrayAppendValue(v34, v529);
          CFRelease(v529);
          v528 += 8;
          --v527;
        }

        while (v527);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 1016)
    {
      v32 = "eanEarlyBootNumUeccPages";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1017)
    {
      v32 = "eanEarlyBootUeccMultiplane";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1020)
    {
      v32 = "rxBurnBlocksProbe";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1021)
    {
      v32 = "nandGeomErrorSkippedErrors";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1027)
    {
      v32 = "reducedRVFails";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1028)
    {
      v32 = "fullRVFails";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1029)
    {
      v32 = "maxUeccsDuringBoot";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 1025)
    {
      v32 = "supportsUnhappy";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 1026)
    {
      v32 = "isUnhappy";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1040)
    {
      v33 = CFStringCreateWithCString(0, "bandsAgeBinsV2", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0x1F)
        {
          v530 = 31;
        }

        else
        {
          v530 = capacity;
        }

        v531 = v14;
        do
        {
          v532 = CFNumberCreate(0, kCFNumberSInt64Type, v531);
          CFArrayAppendValue(v34, v532);
          CFRelease(v532);
          v531 += 8;
          --v530;
        }

        while (v530);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 1041)
    {
      v33 = CFStringCreateWithCString(0, "bandsAgeBinsSnapshot", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0x1F)
        {
          v533 = 31;
        }

        else
        {
          v533 = capacity;
        }

        v534 = v14;
        do
        {
          v535 = CFNumberCreate(0, kCFNumberSInt64Type, v534);
          CFArrayAppendValue(v34, v535);
          CFRelease(v535);
          v534 += 8;
          --v533;
        }

        while (v533);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 1042)
    {
      v33 = CFStringCreateWithCString(0, "bandsAgeBinsReadSectors", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0xF)
        {
          v536 = 15;
        }

        else
        {
          v536 = capacity;
        }

        v537 = v14;
        do
        {
          v538 = CFNumberCreate(0, kCFNumberSInt64Type, v537);
          CFArrayAppendValue(v34, v538);
          CFRelease(v538);
          v537 += 8;
          --v536;
        }

        while (v536);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 1022)
    {
      v32 = "gcVerticalDepthLimitFragments";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1023)
    {
      v32 = "gcVerticalDepthLimitSectors";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1030)
    {
      v32 = "utilFastResetCnt";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 1050)
    {
      v32 = "hostSlcRVFails";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 1051)
    {
      v32 = "hostTlcRVFails";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 1052)
    {
      v32 = "GCSlcToTlcRVFails";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 1053)
    {
      v32 = "GCTlcToTlcRVFails";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 1061)
    {
      v32 = "DirectManagerState";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1057)
    {
      v33 = CFStringCreateWithCString(0, "hostReadsVerticalByFlow", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 3)
        {
          v539 = 3;
        }

        else
        {
          v539 = capacity;
        }

        v540 = v14;
        do
        {
          v541 = CFNumberCreate(0, kCFNumberSInt64Type, v540);
          CFArrayAppendValue(v34, v541);
          CFRelease(v541);
          v540 += 8;
          --v539;
        }

        while (v539);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 1058)
    {
      v33 = CFStringCreateWithCString(0, "hostReadsByFlow", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 7)
        {
          v542 = 7;
        }

        else
        {
          v542 = capacity;
        }

        v543 = v14;
        do
        {
          v544 = CFNumberCreate(0, kCFNumberSInt64Type, v543);
          CFArrayAppendValue(v34, v544);
          CFRelease(v544);
          v543 += 8;
          --v542;
        }

        while (v542);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 1036)
    {
      v32 = "pgCompactNum";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1037)
    {
      v32 = "pgCompactPGIndxs";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1076)
    {
      v32 = "pgCompressionNum";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1098)
    {
      v32 = "pgCompressionBlocksRelease";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1099)
    {
      v33 = CFStringCreateWithCString(0, "pgCompressionBlocksInDip", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 4)
        {
          v545 = 4;
        }

        else
        {
          v545 = capacity;
        }

        v546 = v14;
        do
        {
          v547 = CFNumberCreate(0, kCFNumberSInt64Type, v546);
          CFArrayAppendValue(v34, v547);
          CFRelease(v547);
          v546 += 8;
          --v545;
        }

        while (v545);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 1139)
    {
      v33 = CFStringCreateWithCString(0, "pgCompressionBlocksInPG", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 4)
        {
          v548 = 4;
        }

        else
        {
          v548 = capacity;
        }

        v549 = v14;
        do
        {
          v550 = CFNumberCreate(0, kCFNumberSInt64Type, v549);
          CFArrayAppendValue(v34, v550);
          CFRelease(v550);
          v549 += 8;
          --v548;
        }

        while (v548);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 1140)
    {
      v32 = "pgGCpmxSecWrites";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1141)
    {
      v32 = "pgCompressionPmxSecWrites";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1200)
    {
      v32 = "pgHappyBandRelease";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1080)
    {
      v32 = "raidForceClogLoad";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1105)
    {
      v33 = CFStringCreateWithCString(0, "hostReadSequential", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0xE)
        {
          v551 = 14;
        }

        else
        {
          v551 = capacity;
        }

        v552 = v14;
        do
        {
          v553 = CFNumberCreate(0, kCFNumberSInt64Type, v552);
          CFArrayAppendValue(v34, v553);
          CFRelease(v553);
          v552 += 8;
          --v551;
        }

        while (v551);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 1106)
    {
      v33 = CFStringCreateWithCString(0, "GCReadSequential", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0xE)
        {
          v554 = 14;
        }

        else
        {
          v554 = capacity;
        }

        v555 = v14;
        do
        {
          v556 = CFNumberCreate(0, kCFNumberSInt64Type, v555);
          CFArrayAppendValue(v34, v556);
          CFRelease(v556);
          v555 += 8;
          --v554;
        }

        while (v554);
      }

      goto LABEL_120;
    }

    if ((a3 & 2) != 0 && v13 == 1118)
    {
      v32 = "hostExcessiveZeroTP";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 1121)
    {
      v32 = "boListHighwatermark";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1123)
    {
      v32 = "dmArtificialNeighborGbb";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1124)
    {
      v32 = "dmArtificialNeighborFormat";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1125)
    {
      v32 = "slcParityPadSamsungV8";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1126)
    {
      v32 = "slcHostPadSamsungV8";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1137)
    {
      v32 = "numOfToUnhappySwitches";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1138)
    {
      v32 = "numOfToHappySwitches";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1116)
    {
      v33 = CFStringCreateWithCString(0, "gcwamp", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0x20)
        {
          v557 = 32;
        }

        else
        {
          v557 = capacity;
        }

        v558 = v14;
        do
        {
          v559 = CFNumberCreate(0, kCFNumberSInt64Type, v558);
          CFArrayAppendValue(v34, v559);
          CFRelease(v559);
          v558 += 8;
          --v557;
        }

        while (v557);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 1157)
    {
      v32 = "eanMaxForceROTimeMs";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1158)
    {
      v32 = "eanMaxForceRORecoTimeMs";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1164)
    {
      v32 = "nonBalancedSLCafterFirstPass";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 1159)
    {
      v33 = CFStringCreateWithCString(0, "slcWLPerDipDelta", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0x18)
        {
          v560 = 24;
        }

        else
        {
          v560 = capacity;
        }

        v561 = v14;
        do
        {
          v562 = CFNumberCreate(0, kCFNumberSInt64Type, v561);
          CFArrayAppendValue(v34, v562);
          CFRelease(v562);
          v561 += 8;
          --v560;
        }

        while (v560);
      }

      goto LABEL_120;
    }

    if ((a3 & 2) != 0 && v13 == 1160)
    {
      v33 = CFStringCreateWithCString(0, "slcWLPerDipAvgPEC", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0x18)
        {
          v563 = 24;
        }

        else
        {
          v563 = capacity;
        }

        v564 = v14;
        do
        {
          v565 = CFNumberCreate(0, kCFNumberSInt64Type, v564);
          CFArrayAppendValue(v34, v565);
          CFRelease(v565);
          v564 += 8;
          --v563;
        }

        while (v563);
      }

      goto LABEL_120;
    }

    if ((a3 & 2) != 0 && v13 == 1161)
    {
      v33 = CFStringCreateWithCString(0, "slcWLPerDipSlack", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0x18)
        {
          v566 = 24;
        }

        else
        {
          v566 = capacity;
        }

        v567 = v14;
        do
        {
          v568 = CFNumberCreate(0, kCFNumberSInt64Type, v567);
          CFArrayAppendValue(v34, v568);
          CFRelease(v568);
          v567 += 8;
          --v566;
        }

        while (v566);
      }

      goto LABEL_120;
    }

    if ((a3 & 2) != 0 && v13 == 1162)
    {
      v32 = "slcWLHottestBlockPEC";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 1163)
    {
      v32 = "slcWLColdestBlockPEC";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 1216)
    {
      v33 = CFStringCreateWithCString(0, "tlcWLPerDipAvgPEC", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0x18)
        {
          v569 = 24;
        }

        else
        {
          v569 = capacity;
        }

        v570 = v14;
        do
        {
          v571 = CFNumberCreate(0, kCFNumberSInt64Type, v570);
          CFArrayAppendValue(v34, v571);
          CFRelease(v571);
          v570 += 8;
          --v569;
        }

        while (v569);
      }

      goto LABEL_120;
    }

    if ((a3 & 2) != 0 && v13 == 1217)
    {
      v33 = CFStringCreateWithCString(0, "tlcWLPerDipMaxPEC", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0x18)
        {
          v572 = 24;
        }

        else
        {
          v572 = capacity;
        }

        v573 = v14;
        do
        {
          v574 = CFNumberCreate(0, kCFNumberSInt64Type, v573);
          CFArrayAppendValue(v34, v574);
          CFRelease(v574);
          v573 += 8;
          --v572;
        }

        while (v572);
      }

      goto LABEL_120;
    }

    if ((a3 & 2) != 0 && v13 == 1218)
    {
      v33 = CFStringCreateWithCString(0, "tlcWLPerDipMinPEC", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0x18)
        {
          v575 = 24;
        }

        else
        {
          v575 = capacity;
        }

        v576 = v14;
        do
        {
          v577 = CFNumberCreate(0, kCFNumberSInt64Type, v576);
          CFArrayAppendValue(v34, v577);
          CFRelease(v577);
          v576 += 8;
          --v575;
        }

        while (v575);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 1147)
    {
      v33 = CFStringCreateWithCString(0, "gc_concurrent_dw_gc12", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0x18)
        {
          v578 = 24;
        }

        else
        {
          v578 = capacity;
        }

        v579 = v14;
        do
        {
          v580 = CFNumberCreate(0, kCFNumberSInt64Type, v579);
          CFArrayAppendValue(v34, v580);
          CFRelease(v580);
          v579 += 8;
          --v578;
        }

        while (v578);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 1148)
    {
      v33 = CFStringCreateWithCString(0, "gc_concurrent_dw_gc1", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0x18)
        {
          v581 = 24;
        }

        else
        {
          v581 = capacity;
        }

        v582 = v14;
        do
        {
          v583 = CFNumberCreate(0, kCFNumberSInt64Type, v582);
          CFArrayAppendValue(v34, v583);
          CFRelease(v583);
          v582 += 8;
          --v581;
        }

        while (v581);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 1149)
    {
      v33 = CFStringCreateWithCString(0, "gc_concurrent_dw_gc2", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0x18)
        {
          v584 = 24;
        }

        else
        {
          v584 = capacity;
        }

        v585 = v14;
        do
        {
          v586 = CFNumberCreate(0, kCFNumberSInt64Type, v585);
          CFArrayAppendValue(v34, v586);
          CFRelease(v586);
          v585 += 8;
          --v584;
        }

        while (v584);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 1178)
    {
      v32 = "tlcWLDipSkips";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 1179)
    {
      v33 = CFStringCreateWithCString(0, "gc_cur_dw_gc1", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 4)
        {
          v587 = 4;
        }

        else
        {
          v587 = capacity;
        }

        v588 = v14;
        do
        {
          v589 = CFNumberCreate(0, kCFNumberSInt64Type, v588);
          CFArrayAppendValue(v34, v589);
          CFRelease(v589);
          v588 += 8;
          --v587;
        }

        while (v587);
      }

      goto LABEL_120;
    }

    if ((a3 & 2) != 0 && v13 == 1180)
    {
      v33 = CFStringCreateWithCString(0, "gc_cur_dw_gc2", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 4)
        {
          v590 = 4;
        }

        else
        {
          v590 = capacity;
        }

        v591 = v14;
        do
        {
          v592 = CFNumberCreate(0, kCFNumberSInt64Type, v591);
          CFArrayAppendValue(v34, v592);
          CFRelease(v592);
          v591 += 8;
          --v590;
        }

        while (v590);
      }

      goto LABEL_120;
    }

    if ((a3 & 2) != 0 && v13 == 1181)
    {
      v33 = CFStringCreateWithCString(0, "gc_cur_dw_gc3", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 4)
        {
          v593 = 4;
        }

        else
        {
          v593 = capacity;
        }

        v594 = v14;
        do
        {
          v595 = CFNumberCreate(0, kCFNumberSInt64Type, v594);
          CFArrayAppendValue(v34, v595);
          CFRelease(v595);
          v594 += 8;
          --v593;
        }

        while (v593);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 1182)
    {
      v33 = CFStringCreateWithCString(0, "gc_tot_dw_gc1", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 4)
        {
          v596 = 4;
        }

        else
        {
          v596 = capacity;
        }

        v597 = v14;
        do
        {
          v598 = CFNumberCreate(0, kCFNumberSInt64Type, v597);
          CFArrayAppendValue(v34, v598);
          CFRelease(v598);
          v597 += 8;
          --v596;
        }

        while (v596);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 1183)
    {
      v33 = CFStringCreateWithCString(0, "gc_tot_dw_gc2", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 4)
        {
          v599 = 4;
        }

        else
        {
          v599 = capacity;
        }

        v600 = v14;
        do
        {
          v601 = CFNumberCreate(0, kCFNumberSInt64Type, v600);
          CFArrayAppendValue(v34, v601);
          CFRelease(v601);
          v600 += 8;
          --v599;
        }

        while (v599);
      }

      goto LABEL_120;
    }

    if ((a3 & 2) != 0 && v13 == 1184)
    {
      v32 = "unhappy_state";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 1185)
    {
      v32 = "unhappy_level";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 1186)
    {
      v32 = "readDisturb_enabled";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1187)
    {
      v32 = "boListExhausted";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1168)
    {
      v33 = CFStringCreateWithCString(0, "poDetectPERemovalTotalCost", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 2)
        {
          v602 = 2;
        }

        else
        {
          v602 = capacity;
        }

        v603 = v14;
        do
        {
          v604 = CFNumberCreate(0, kCFNumberSInt64Type, v603);
          CFArrayAppendValue(v34, v604);
          CFRelease(v604);
          v603 += 8;
          --v602;
        }

        while (v602);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 1198)
    {
      v33 = CFStringCreateWithCString(0, "poDetectPERemovalMostSevereCost", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 3)
        {
          v605 = 3;
        }

        else
        {
          v605 = capacity;
        }

        v606 = v14;
        do
        {
          v607 = CFNumberCreate(0, kCFNumberSInt64Type, v606);
          CFArrayAppendValue(v34, v607);
          CFRelease(v607);
          v606 += 8;
          --v605;
        }

        while (v605);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 1169)
    {
      v33 = CFStringCreateWithCString(0, "poDetectEmptySpotRemovalTotalCost", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 2)
        {
          v608 = 2;
        }

        else
        {
          v608 = capacity;
        }

        v609 = v14;
        do
        {
          v610 = CFNumberCreate(0, kCFNumberSInt64Type, v609);
          CFArrayAppendValue(v34, v610);
          CFRelease(v610);
          v609 += 8;
          --v608;
        }

        while (v608);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 1171)
    {
      v33 = CFStringCreateWithCString(0, "poDetectEmptySpotRemovalAge", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0xA)
        {
          v611 = 10;
        }

        else
        {
          v611 = capacity;
        }

        v612 = v14;
        do
        {
          v613 = CFNumberCreate(0, kCFNumberSInt64Type, v612);
          CFArrayAppendValue(v34, v613);
          CFRelease(v613);
          v612 += 8;
          --v611;
        }

        while (v611);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 1172)
    {
      v33 = CFStringCreateWithCString(0, "poDetectGBBedMostSevereCost", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 3)
        {
          v614 = 3;
        }

        else
        {
          v614 = capacity;
        }

        v615 = v14;
        do
        {
          v616 = CFNumberCreate(0, kCFNumberSInt64Type, v615);
          CFArrayAppendValue(v34, v616);
          CFRelease(v616);
          v615 += 8;
          --v614;
        }

        while (v614);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 1196)
    {
      v33 = CFStringCreateWithCString(0, "poDetectGBBedTotalCost", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 5)
        {
          v617 = 5;
        }

        else
        {
          v617 = capacity;
        }

        v618 = v14;
        do
        {
          v619 = CFNumberCreate(0, kCFNumberSInt64Type, v618);
          CFArrayAppendValue(v34, v619);
          CFRelease(v619);
          v618 += 8;
          --v617;
        }

        while (v617);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 1197)
    {
      v33 = CFStringCreateWithCString(0, "poDetectGBBedAge", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0xA)
        {
          v620 = 10;
        }

        else
        {
          v620 = capacity;
        }

        v621 = v14;
        do
        {
          v622 = CFNumberCreate(0, kCFNumberSInt64Type, v621);
          CFArrayAppendValue(v34, v622);
          CFRelease(v622);
          v621 += 8;
          --v620;
        }

        while (v620);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 1199)
    {
      v32 = "poDetectCurrentSize";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1191)
    {
      v32 = "eanFailedSyncs";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1192)
    {
      v32 = "eanFailedCompress";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1205)
    {
      v32 = "bgTime";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1211)
    {
      v33 = CFStringCreateWithCString(0, "forcedAllocationSmallEraseQ", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0x18)
        {
          v623 = 24;
        }

        else
        {
          v623 = capacity;
        }

        v624 = v14;
        do
        {
          v625 = CFNumberCreate(0, kCFNumberSInt64Type, v624);
          CFArrayAppendValue(v34, v625);
          CFRelease(v625);
          v624 += 8;
          --v623;
        }

        while (v623);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 1201)
    {
      v33 = CFStringCreateWithCString(0, "gcVerticalSuccssfulAlignments", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 4)
        {
          v626 = 4;
        }

        else
        {
          v626 = capacity;
        }

        v627 = v14;
        do
        {
          v628 = CFNumberCreate(0, kCFNumberSInt64Type, v627);
          CFArrayAppendValue(v34, v628);
          CFRelease(v628);
          v627 += 8;
          --v626;
        }

        while (v626);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 1202)
    {
      v33 = CFStringCreateWithCString(0, "gcVerticalNoAlignmentDueToMissingSegs", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 4)
        {
          v629 = 4;
        }

        else
        {
          v629 = capacity;
        }

        v630 = v14;
        do
        {
          v631 = CFNumberCreate(0, kCFNumberSInt64Type, v630);
          CFArrayAppendValue(v34, v631);
          CFRelease(v631);
          v630 += 8;
          --v629;
        }

        while (v629);
      }

      goto LABEL_120;
    }

    if ((a3 & 2) != 0 && v13 == 1225)
    {
      v32 = "HUPolicySwitchPeMinSlc";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 1226)
    {
      v32 = "HUPolicySwitchPeInt";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 1227)
    {
      v32 = "HUPolicySwitchPeGap";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1228)
    {
      v33 = CFStringCreateWithCString(0, "HUPolicyWidthDown", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 6)
        {
          v632 = 6;
        }

        else
        {
          v632 = capacity;
        }

        v633 = v14;
        do
        {
          v634 = CFNumberCreate(0, kCFNumberSInt64Type, v633);
          CFArrayAppendValue(v34, v634);
          CFRelease(v634);
          v633 += 8;
          --v632;
        }

        while (v632);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 1229)
    {
      v33 = CFStringCreateWithCString(0, "HUPolicyWidthUp", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 6)
        {
          v635 = 6;
        }

        else
        {
          v635 = capacity;
        }

        v636 = v14;
        do
        {
          v637 = CFNumberCreate(0, kCFNumberSInt64Type, v636);
          CFArrayAppendValue(v34, v637);
          CFRelease(v637);
          v636 += 8;
          --v635;
        }

        while (v635);
      }

      goto LABEL_120;
    }

    if ((a3 & 2) != 0 && v13 == 1230)
    {
      v32 = "HUPolicyPrevPeSlc";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 1231)
    {
      v32 = "HUPolicyPrevPeTlc";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1235)
    {
      v32 = "clogSameDipBand";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1236)
    {
      v32 = "clogSmsgv8NonPairBand";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1232)
    {
      v32 = "eanFastSize";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1233)
    {
      v32 = "eanNumSlcEvictions";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1234)
    {
      v32 = "eanNumForcedCompress";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1224)
    {
      v33 = CFStringCreateWithCString(0, "apfsValidLbaOvershoot", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0x14)
        {
          v638 = 20;
        }

        else
        {
          v638 = capacity;
        }

        v639 = v14;
        do
        {
          v640 = CFNumberCreate(0, kCFNumberSInt64Type, v639);
          CFArrayAppendValue(v34, v640);
          CFRelease(v640);
          v639 += 8;
          --v638;
        }

        while (v638);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 1241)
    {
      v33 = CFStringCreateWithCString(0, "s2rTimeHisto", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0xA)
        {
          v641 = 10;
        }

        else
        {
          v641 = capacity;
        }

        v642 = v14;
        do
        {
          v643 = CFNumberCreate(0, kCFNumberSInt64Type, v642);
          CFArrayAppendValue(v34, v643);
          CFRelease(v643);
          v642 += 8;
          --v641;
        }

        while (v641);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 1396)
    {
      v32 = "SleepAllVotes";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1397)
    {
      v32 = "SleepNoVotes";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1400)
    {
      v32 = "SleepTimeOuts";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1403)
    {
      v32 = "SleepForcedShutdowns";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1411)
    {
      v32 = "SleepMaximumNoVoteSeconds";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1404)
    {
      v32 = "SleepWillNotSleepsNotUs";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1395)
    {
      v33 = CFStringCreateWithCString(0, "SleepNoHisto", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 6)
        {
          v644 = 6;
        }

        else
        {
          v644 = capacity;
        }

        v645 = v14;
        do
        {
          v646 = CFNumberCreate(0, kCFNumberSInt64Type, v645);
          CFArrayAppendValue(v34, v646);
          CFRelease(v646);
          v645 += 8;
          --v644;
        }

        while (v644);
      }

      goto LABEL_120;
    }

    if ((a3 & 2) != 0 && v13 == 1247)
    {
      v32 = "unhappy_level_min";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 1248)
    {
      v32 = "unhappy_level_max";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1251)
    {
      v32 = "autoReads";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1252)
    {
      v32 = "autoreadPrefetches";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1268)
    {
      v32 = "autoReadXacts";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1254)
    {
      v32 = "gcUpdateResumeAttempt";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1255)
    {
      v32 = "gcUpdateResumeSuccess";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1256)
    {
      v32 = "gcUpdateResumeFailure";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 1270)
    {
      v32 = "disableIdleGC";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1282)
    {
      v32 = "cbdrScanHP";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1283)
    {
      v32 = "cbdrScanMP";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1392)
    {
      v32 = "cbdrHPScanHP";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1393)
    {
      v32 = "cbdrMPScanMP";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1394)
    {
      v32 = "cbdrMPScanHP";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1414)
    {
      v32 = "cbdrSlcForcedRefreshes";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 1285)
    {
      v32 = "bitsPerCell";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 1203)
    {
      v32 = "perstStatFree";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1215)
    {
      v33 = CFStringCreateWithCString(0, "hostWritesPerThrottleZone", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 7)
        {
          v647 = 7;
        }

        else
        {
          v647 = capacity;
        }

        v648 = v14;
        do
        {
          v649 = CFNumberCreate(0, kCFNumberSInt64Type, v648);
          CFArrayAppendValue(v34, v649);
          CFRelease(v649);
          v648 += 8;
          --v647;
        }

        while (v647);
      }

      goto LABEL_120;
    }

    if ((a3 & 2) != 0 && v13 == 1320)
    {
      v33 = CFStringCreateWithCString(0, "msPerThrottleZone", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 7)
        {
          v650 = 7;
        }

        else
        {
          v650 = capacity;
        }

        v651 = v14;
        do
        {
          v652 = CFNumberCreate(0, kCFNumberSInt64Type, v651);
          CFArrayAppendValue(v34, v652);
          CFRelease(v652);
          v651 += 8;
          --v650;
        }

        while (v650);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 1295)
    {
      v33 = CFStringCreateWithCString(0, "bpHostChokeTime", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 8)
        {
          v653 = 8;
        }

        else
        {
          v653 = capacity;
        }

        v654 = v14;
        do
        {
          v655 = CFNumberCreate(0, kCFNumberSInt64Type, v654);
          CFArrayAppendValue(v34, v655);
          CFRelease(v655);
          v654 += 8;
          --v653;
        }

        while (v653);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 1293)
    {
      v33 = CFStringCreateWithCString(0, "bpZone2EntryTime", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0x10)
        {
          v656 = 16;
        }

        else
        {
          v656 = capacity;
        }

        v657 = v14;
        do
        {
          v658 = CFNumberCreate(0, kCFNumberSInt64Type, v657);
          CFArrayAppendValue(v34, v658);
          CFRelease(v658);
          v657 += 8;
          --v656;
        }

        while (v656);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 1294)
    {
      v33 = CFStringCreateWithCString(0, "bpZone2ExitTime", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0x10)
        {
          v659 = 16;
        }

        else
        {
          v659 = capacity;
        }

        v660 = v14;
        do
        {
          v661 = CFNumberCreate(0, kCFNumberSInt64Type, v660);
          CFArrayAppendValue(v34, v661);
          CFRelease(v661);
          v660 += 8;
          --v659;
        }

        while (v659);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 1296)
    {
      v33 = CFStringCreateWithCString(0, "bpZone2EntryHW", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0x10)
        {
          v662 = 16;
        }

        else
        {
          v662 = capacity;
        }

        v663 = v14;
        do
        {
          v664 = CFNumberCreate(0, kCFNumberSInt64Type, v663);
          CFArrayAppendValue(v34, v664);
          CFRelease(v664);
          v663 += 8;
          --v662;
        }

        while (v662);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 1298)
    {
      v33 = CFStringCreateWithCString(0, "bpZone2ExitHW", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0x10)
        {
          v665 = 16;
        }

        else
        {
          v665 = capacity;
        }

        v666 = v14;
        do
        {
          v667 = CFNumberCreate(0, kCFNumberSInt64Type, v666);
          CFArrayAppendValue(v34, v667);
          CFRelease(v667);
          v666 += 8;
          --v665;
        }

        while (v665);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 1302)
    {
      v33 = CFStringCreateWithCString(0, "bpZone2EntryHostTP", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0x10)
        {
          v668 = 16;
        }

        else
        {
          v668 = capacity;
        }

        v669 = v14;
        do
        {
          v670 = CFNumberCreate(0, kCFNumberSInt64Type, v669);
          CFArrayAppendValue(v34, v670);
          CFRelease(v670);
          v669 += 8;
          --v668;
        }

        while (v668);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 1303)
    {
      v33 = CFStringCreateWithCString(0, "bpZone2EntryGCTP", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0x10)
        {
          v671 = 16;
        }

        else
        {
          v671 = capacity;
        }

        v672 = v14;
        do
        {
          v673 = CFNumberCreate(0, kCFNumberSInt64Type, v672);
          CFArrayAppendValue(v34, v673);
          CFRelease(v673);
          v672 += 8;
          --v671;
        }

        while (v671);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 1304)
    {
      v33 = CFStringCreateWithCString(0, "bpZone2ExitHostTP", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0x10)
        {
          v674 = 16;
        }

        else
        {
          v674 = capacity;
        }

        v675 = v14;
        do
        {
          v676 = CFNumberCreate(0, kCFNumberSInt64Type, v675);
          CFArrayAppendValue(v34, v676);
          CFRelease(v676);
          v675 += 8;
          --v674;
        }

        while (v674);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 1305)
    {
      v33 = CFStringCreateWithCString(0, "bpZone2ExitGCTP", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0x10)
        {
          v677 = 16;
        }

        else
        {
          v677 = capacity;
        }

        v678 = v14;
        do
        {
          v679 = CFNumberCreate(0, kCFNumberSInt64Type, v678);
          CFArrayAppendValue(v34, v679);
          CFRelease(v679);
          v678 += 8;
          --v677;
        }

        while (v677);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 1333)
    {
      v32 = "gcBoffOrderedRecoverableErrorGbbs";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1334)
    {
      v32 = "gcBoffOrderedUnrecoverableErrorGbbs";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1335)
    {
      v32 = "gcBoffOrderedBandOrphansNumBands";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1336)
    {
      v32 = "gcBoffOrderedBandOrphansNumSectors";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1337)
    {
      v32 = "gcBoffOrderedDefragEvents";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1338)
    {
      v32 = "gcBoffOrderedDefragIterations";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1339)
    {
      v32 = "gcBoffOrderedDefragSectors";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 1286)
    {
      v33 = CFStringCreateWithCString(0, "regularReadBlockAge", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0x1A)
        {
          v680 = 26;
        }

        else
        {
          v680 = capacity;
        }

        v681 = v14;
        do
        {
          v682 = CFNumberCreate(0, kCFNumberSInt64Type, v681);
          CFArrayAppendValue(v34, v682);
          CFRelease(v682);
          v681 += 8;
          --v680;
        }

        while (v680);
      }

      goto LABEL_120;
    }

    if ((a3 & 2) != 0 && v13 == 1287)
    {
      v33 = CFStringCreateWithCString(0, "blockScanReadBlockAge", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0x1A)
        {
          v683 = 26;
        }

        else
        {
          v683 = capacity;
        }

        v684 = v14;
        do
        {
          v685 = CFNumberCreate(0, kCFNumberSInt64Type, v684);
          CFArrayAppendValue(v34, v685);
          CFRelease(v685);
          v684 += 8;
          --v683;
        }

        while (v683);
      }

      goto LABEL_120;
    }

    if ((a3 & 2) != 0 && v13 == 1288)
    {
      v33 = CFStringCreateWithCString(0, "enhancedReadBlockAge", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0x1A)
        {
          v686 = 26;
        }

        else
        {
          v686 = capacity;
        }

        v687 = v14;
        do
        {
          v688 = CFNumberCreate(0, kCFNumberSInt64Type, v687);
          CFArrayAppendValue(v34, v688);
          CFRelease(v688);
          v687 += 8;
          --v686;
        }

        while (v686);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 1399)
    {
      v32 = "readBlocksBelowHP";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1321)
    {
      v32 = "prefetchRedundantBufs";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1322)
    {
      v32 = "prefetchUsedBufs";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1326)
    {
      v32 = "massScanFullRounds";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1327)
    {
      v32 = "massScanEarlyExits";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1328)
    {
      v32 = "massScanMspFullScanRequests";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1329)
    {
      v32 = "massScanMspEarlyExitRequests";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1347)
    {
      v32 = "massScanCurrentState";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1368)
    {
      v32 = "massScanIgnoredTooFrequent";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1424)
    {
      v32 = "massScanPilotIgnoredTooFrequent";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1425)
    {
      v32 = "massScanForceStartWithPilot";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1474)
    {
      v32 = "massScanTotalScannedBands";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1475)
    {
      v32 = "massScanTotalRefreshedBands";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1476)
    {
      v32 = "massScanNarrowBandsRefreshed";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1477)
    {
      v32 = "massScanIgnoredRaidConversion";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1331)
    {
      v32 = "snapPreserveSecondaryCount";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1332)
    {
      v32 = "spiRollbackCount";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1344)
    {
      v33 = CFStringCreateWithCString(0, "unhappyWideGC1", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 4)
        {
          v689 = 4;
        }

        else
        {
          v689 = capacity;
        }

        v690 = v14;
        do
        {
          v691 = CFNumberCreate(0, kCFNumberSInt64Type, v690);
          CFArrayAppendValue(v34, v691);
          CFRelease(v691);
          v690 += 8;
          --v689;
        }

        while (v689);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 1345)
    {
      v33 = CFStringCreateWithCString(0, "unhappyVertGC", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 4)
        {
          v692 = 4;
        }

        else
        {
          v692 = capacity;
        }

        v693 = v14;
        do
        {
          v694 = CFNumberCreate(0, kCFNumberSInt64Type, v693);
          CFArrayAppendValue(v34, v694);
          CFRelease(v694);
          v693 += 8;
          --v692;
        }

        while (v692);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 1367)
    {
      v33 = CFStringCreateWithCString(0, "asyncMessageHisto", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0x20)
        {
          v695 = 32;
        }

        else
        {
          v695 = capacity;
        }

        v696 = v14;
        do
        {
          v697 = CFNumberCreate(0, kCFNumberSInt64Type, v696);
          CFArrayAppendValue(v34, v697);
          CFRelease(v697);
          v696 += 8;
          --v695;
        }

        while (v695);
      }

      goto LABEL_120;
    }

    if ((a3 & 2) != 0 && v13 == 1361)
    {
      v32 = "usingReducedGcBuffers";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 1363)
    {
      v32 = "unhappyMaxDepthPerDip";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1379)
    {
      v32 = "boffOrderedReadBlank";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1380)
    {
      v32 = "boffOrderedRaidSuccessValidLba";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1382)
    {
      v32 = "boffOrderedUnexpectedBlankValid";
      goto LABEL_99;
    }

    if ((a3 & 2) != 0 && v13 == 1381)
    {
      v32 = "unexpectedRaidFailures";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1372)
    {
      v32 = "smsgDoubleErases";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1409)
    {
      v32 = "BP_readThrottleEngagedCnt";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1410)
    {
      v32 = "BP_readThrottleActualSize";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1412)
    {
      v32 = "unhappyForceWideGC1";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1413)
    {
      v32 = "unhappyForceVertGC";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1439)
    {
      v32 = "gcQLCHighWaActivation";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1387)
    {
      v32 = "unhappyWideSOBand";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1530)
    {
      v32 = "lastISLowPingHr";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1541)
    {
      v32 = "lastISLowNoDIPingHr";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1542)
    {
      v32 = "lastISLowNoSUIPingHr";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1531)
    {
      v32 = "lastISMedPingHr";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1532)
    {
      v32 = "lastISHighPingHr";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1536)
    {
      v32 = "istkLowPings";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1537)
    {
      v32 = "istkLowNoDIPings";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1538)
    {
      v32 = "istkLowNoSUIPings";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1539)
    {
      v32 = "istkMedPings";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1540)
    {
      v32 = "istkHighPings";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1533)
    {
      v33 = CFStringCreateWithCString(0, "istkLowPingIntervals", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0xC)
        {
          v698 = 12;
        }

        else
        {
          v698 = capacity;
        }

        v699 = v14;
        do
        {
          v700 = CFNumberCreate(0, kCFNumberSInt64Type, v699);
          CFArrayAppendValue(v34, v700);
          CFRelease(v700);
          v699 += 8;
          --v698;
        }

        while (v698);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 1543)
    {
      v33 = CFStringCreateWithCString(0, "istkLowNoDIPingIntervals", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0xA)
        {
          v701 = 10;
        }

        else
        {
          v701 = capacity;
        }

        v702 = v14;
        do
        {
          v703 = CFNumberCreate(0, kCFNumberSInt64Type, v702);
          CFArrayAppendValue(v34, v703);
          CFRelease(v703);
          v702 += 8;
          --v701;
        }

        while (v701);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 1544)
    {
      v33 = CFStringCreateWithCString(0, "istkLowNoSUIPingIntervals", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0xA)
        {
          v704 = 10;
        }

        else
        {
          v704 = capacity;
        }

        v705 = v14;
        do
        {
          v706 = CFNumberCreate(0, kCFNumberSInt64Type, v705);
          CFArrayAppendValue(v34, v706);
          CFRelease(v706);
          v705 += 8;
          --v704;
        }

        while (v704);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 1534)
    {
      v33 = CFStringCreateWithCString(0, "istkMedPingIntervals", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0xA)
        {
          v707 = 10;
        }

        else
        {
          v707 = capacity;
        }

        v708 = v14;
        do
        {
          v709 = CFNumberCreate(0, kCFNumberSInt64Type, v708);
          CFArrayAppendValue(v34, v709);
          CFRelease(v709);
          v708 += 8;
          --v707;
        }

        while (v707);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 1535)
    {
      v33 = CFStringCreateWithCString(0, "istkHighPingIntervals", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 0xA)
        {
          v710 = 10;
        }

        else
        {
          v710 = capacity;
        }

        v711 = v14;
        do
        {
          v712 = CFNumberCreate(0, kCFNumberSInt64Type, v711);
          CFArrayAppendValue(v34, v712);
          CFRelease(v712);
          v711 += 8;
          --v710;
        }

        while (v710);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 1545)
    {
      v33 = CFStringCreateWithCString(0, "istkLowAfterMedIntervals", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 6)
        {
          v713 = 6;
        }

        else
        {
          v713 = capacity;
        }

        v714 = v14;
        do
        {
          v715 = CFNumberCreate(0, kCFNumberSInt64Type, v714);
          CFArrayAppendValue(v34, v715);
          CFRelease(v715);
          v714 += 8;
          --v713;
        }

        while (v713);
      }

      goto LABEL_120;
    }

    if ((a3 & 1) != 0 && v13 == 1546)
    {
      v32 = "lastISMedHW";
      goto LABEL_99;
    }

    if ((a3 & 1) != 0 && v13 == 1547)
    {
      v33 = CFStringCreateWithCString(0, "istkHWBetweenMed", 0x8000100u);
      v34 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
      if (capacity)
      {
        if (capacity >= 5)
        {
          v716 = 5;
        }

        else
        {
          v716 = capacity;
        }

        v717 = v14;
        do
        {
          v718 = CFNumberCreate(0, kCFNumberSInt64Type, v717);
          CFArrayAppendValue(v34, v718);
          CFRelease(v718);
          v717 += 8;
          --v716;
        }

        while (v716);
      }

LABEL_120:
      v7 = v31;
      CFDictionarySetValue(v31, v33, v34);
      CFRelease(v34);
      CFRelease(v33);
      v8 = v732;
      a3 = a3;
LABEL_44:
      v11 = v734;
      v9 = v735;
      goto LABEL_33;
    }

    if (!v8 || !v16)
    {
      v8 = v8;
      a3 = a3;
      goto LABEL_44;
    }

    snprintf(__str, 0x20uLL, "KEY_%u", v13);
    v18 = CFStringCreateWithCString(0, __str, 0x8000100u);
    if (v16 == 1)
    {
      goto LABEL_100;
    }

    v719 = CFArrayCreateMutable(0, v16, MEMORY[0x277CBF128]);
    if (capacity >= 0x100)
    {
      v720 = 256;
    }

    else
    {
      v720 = capacity;
    }

    v721 = v14;
    do
    {
      v722 = CFNumberCreate(0, kCFNumberSInt64Type, v721);
      CFArrayAppendValue(v719, v722);
      CFRelease(v722);
      v721 += 8;
      --v720;
    }

    while (v720);
    CFDictionarySetValue(v31, v18, v719);
    CFRelease(v719);
    CFRelease(v18);
    v19 = 0;
    v18 = 0;
LABEL_101:
    v8 = v732;
    a3 = a3;
    v7 = v31;
    v11 = v734;
    v9 = v735;
    if (v18)
    {
LABEL_31:
      if (v19)
      {
        CFDictionarySetValue(v7, v18, v19);
        CFRelease(v18);
        CFRelease(v19);
      }
    }

LABEL_33:
    a1 = &v14[8 * capacity];
    a2 = v739 - capacity;
  }

  while (v739 != capacity);
  if (v738)
  {
    *__str = v737 * ((v736 * v9) >> 12) / v738;
    v723 = CFStringCreateWithCString(0, "WriteAmp", 0x8000100u);
    v724 = CFNumberCreate(0, kCFNumberDoubleType, __str);
    CFDictionarySetValue(v7, v723, v724);
    CFRelease(v723);
    CFRelease(v724);
    if (v10)
    {
      if (v11)
      {
        valuePtr = v10 * ((v9 * v11) >> 12) / v738;
        v725 = CFStringCreateWithCString(0, "IntermediateWriteAmp", 0x8000100u);
        v726 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
        CFDictionarySetValue(v7, v725, v726);
        CFRelease(v725);
        CFRelease(v726);
      }
    }
  }

  if (v12)
  {
    *__str = (v12 >> 24);
    v727 = CFStringCreateWithCString(0, "statsMagCalTime", 0x8000100u);
    v728 = CFNumberCreate(0, kCFNumberSInt64Type, __str);
    CFDictionarySetValue(v7, v727, v728);
    CFRelease(v727);
    CFRelease(v728);
  }

LABEL_4196:
  Copy = CFDictionaryCreateCopy(0, v7);
  CFRelease(v7);
LABEL_4198:
  v730 = *MEMORY[0x277D85DE8];
  return Copy;
}
uint64_t VoiceProcessorV8::ProcessDSPChain_Uplink(uint64_t this, AudioTimeStamp *a2)
{
  v3 = this;
  v490 = *MEMORY[0x277D85DE8];
  v4 = **(this + 1088);
  if (v4)
  {
    bzero(*(this + 1416), v4);
  }

  if (*(v3 + 1412) == 1)
  {
    VoiceProcessorV2::PostSRCMicClipDetection(v3);
  }

  if ((*(v3 + 2091) & 1) == 0)
  {
    this = VoiceProcessorV2::GetAbsoluteChIndexForEpmicAndApplyPreDigitalGain(v3);
  }

  v5 = *(v3 + 15881);
  if (v5 == 1 && (this = VoiceProcessorV2::InjectionFilesReadSignal(v3, 7, *(v3 + 129), *(v3 + 135)), LOBYTE(v5) = *(v3 + 15881), (v5 & 1) != 0) && (this = VoiceProcessorV2::InjectionFilesReadSignal(v3, 8, *(v3 + 129), *(v3 + 136)), LOBYTE(v5) = *(v3 + 15881), (v5 & 1) != 0))
  {
    if ((*(v3 + 15880) & 1) == 0 && (*(v3 + 15883) & 1) == 0)
    {
      v6 = *(v3 + 135);
      v9 = (v3 + 516);
      v10 = *(v3 + 129);
      goto LABEL_21;
    }

    LOBYTE(v5) = 1;
  }

  else if ((*(v3 + 15883) & 1) == 0)
  {
    v6 = *(v3 + 135);
    goto LABEL_19;
  }

  v6 = *(v3 + 135);
  if (v6->mNumberBuffers)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      bzero(v6->mBuffers[v7].mData, v6->mBuffers[v7].mDataByteSize);
      ++v8;
      v6 = *(v3 + 135);
      ++v7;
    }

    while (v8 < v6->mNumberBuffers);
    LOBYTE(v5) = *(v3 + 15881);
  }

LABEL_19:
  v9 = (v3 + 516);
  v10 = *(v3 + 129);
  if (v5 & 1) != 0 || (*(v3 + 15882))
  {
LABEL_21:
    this = VoiceProcessorV2::SaveFilesWriteSignal(v3, 4u, v10, v6, a2);
    v10 = *(v3 + 129);
    v11 = *(v3 + 136);
    if (*(v3 + 15881))
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v11 = *(v3 + 136);
LABEL_24:
  if ((*(v3 + 15882) & 1) == 0)
  {
    v12 = *(v3 + 178);
    goto LABEL_28;
  }

LABEL_25:
  this = VoiceProcessorV2::SaveFilesWriteSignal(v3, 5u, v10, v11, a2);
  v10 = *(v3 + 129);
  v12 = *(v3 + 178);
  if (*(v3 + 15881))
  {
    goto LABEL_29;
  }

LABEL_28:
  if (*(v3 + 15882) == 1)
  {
LABEL_29:
    this = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x4Cu, v10, v12, a2);
  }

  v472 = 0.0;
  if ((*(v3 + 2091) & 1) == 0 && (*(v3 + 2093) & 1) == 0 && (*(v3 + 480) & 1) == 0)
  {
    v26 = *(v3 + 586);
    if (v26 || (*(v3 + 4696) & 0x7F) != 0)
    {
      v471 = 0;
      *(v3 + 2137) = 0;
      *(v3 + 2139) = 0;
      *(v3 + 2138) = 0;
      *(v3 + 4274) = 1;
      *(v3 + 1069) = *(*(v3 + 135) + 8);
      if (v26 & 1) != 0 && (*(v3 + 4704))
      {
        this = *(v3 + 349);
        if (this)
        {
          v27 = *&a2->mRateScalar;
          *&buf.mSampleTime = *&a2->mSampleTime;
          *&buf.mRateScalar = v27;
          v28 = *&a2->mSMPTETime.mHours;
          *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
          *&buf.mSMPTETime.mHours = v28;
          v471 = 512;
          this = AudioUnitProcess(this, &v471, &buf, *(v3 + 129), *(v3 + 136));
        }
      }

      v461 = &v455;
      v29 = 24 * **(v3 + 136);
      MEMORY[0x28223BE20](this);
      v31 = (&v455 - ((v30 + 15) & 0x3FFFFFFFF0));
      v32 = *(v3 + 136);
      if (*v32)
      {
        v33 = 0;
        v34 = 2;
        v35 = v31;
        do
        {
          *&v35->mNumberBuffers = 0;
          *&v35->mBuffers[0].mNumberChannels = 0;
          v35->mBuffers[0].mData = 0;
          v35->mNumberBuffers = 1;
          v35->mBuffers[0] = *&v32[v34];
          ++v33;
          v34 += 4;
          ++v35;
        }

        while (v33 < *v32);
      }

      v36 = *(v3 + 586);
      if ((v36 & 2) != 0 && (*(v3 + 4704) & 2) != 0)
      {
        v37 = *(v3 + 350);
        if (v37)
        {
          v38 = *&a2->mRateScalar;
          *&buf.mSampleTime = *&a2->mSampleTime;
          *&buf.mRateScalar = v38;
          v39 = *&a2->mSMPTETime.mHours;
          *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
          *&buf.mSMPTETime.mHours = v39;
          v471 = 512;
          AudioUnitProcess(v37, &v471, &buf, *v9, v31);
          v45 = *v9;
          if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
          {
            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x4Du, v45, v31, &buf);
          }

          CADeprecated::CABufferList::CopyDataFrom(*(v3 + 139), v31, v45, v40, v41, v42, v43, v44, v455);
          v36 = *(v3 + 586);
        }
      }

      if ((v36 & 4) != 0 && (*(v3 + 4704) & 4) != 0)
      {
        v46 = *(v3 + 351);
        if (v46)
        {
          v47 = *&a2->mRateScalar;
          *&buf.mSampleTime = *&a2->mSampleTime;
          *&buf.mRateScalar = v47;
          v48 = *&a2->mSMPTETime.mHours;
          *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
          *&buf.mSMPTETime.mHours = v48;
          v471 = 512;
          AudioUnitProcess(v46, &v471, &buf, *v9, v31 + 1);
          v54 = *v9;
          if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
          {
            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x4Eu, v54, v31 + 1, &buf);
          }

          CADeprecated::CABufferList::CopyDataFrom(*(v3 + 140), v31 + 1, v54, v49, v50, v51, v52, v53, v455);
          v36 = *(v3 + 586);
        }
      }

      if ((v36 & 8) != 0 && (*(v3 + 4704) & 8) != 0)
      {
        v55 = *(v3 + 352);
        if (v55)
        {
          v56 = *&a2->mRateScalar;
          *&buf.mSampleTime = *&a2->mSampleTime;
          *&buf.mRateScalar = v56;
          v57 = *&a2->mSMPTETime.mHours;
          *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
          *&buf.mSMPTETime.mHours = v57;
          v471 = 512;
          AudioUnitProcess(v55, &v471, &buf, *v9, v31 + 2);
          v63 = *v9;
          if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
          {
            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x4Fu, v63, v31 + 2, &buf);
          }

          CADeprecated::CABufferList::CopyDataFrom(*(v3 + 141), v31 + 2, v63, v58, v59, v60, v61, v62, v455);
          v36 = *(v3 + 586);
        }
      }

      if ((v36 & 0x10) != 0 && (*(v3 + 4704) & 0x10) != 0)
      {
        v64 = *(v3 + 353);
        if (v64)
        {
          v65 = *&a2->mRateScalar;
          *&buf.mSampleTime = *&a2->mSampleTime;
          *&buf.mRateScalar = v65;
          v66 = *&a2->mSMPTETime.mHours;
          *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
          *&buf.mSMPTETime.mHours = v66;
          v471 = 512;
          AudioUnitProcess(v64, &v471, &buf, *v9, v31 + 3);
          v72 = *v9;
          if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
          {
            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x50u, v72, v31 + 3, &buf);
          }

          CADeprecated::CABufferList::CopyDataFrom(*(v3 + 142), v31 + 3, v72, v67, v68, v69, v70, v71, v455);
          v36 = *(v3 + 586);
        }
      }

      if ((v36 & 0x40) != 0 && (*(v3 + 4704) & 0x40) != 0 && *(v3 + 355))
      {
        v73 = *&a2->mRateScalar;
        *&buf.mSampleTime = *&a2->mSampleTime;
        *&buf.mRateScalar = v73;
        v74 = *&a2->mSMPTETime.mHours;
        *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
        *&buf.mSMPTETime.mHours = v74;
        VoiceProcessorV6::ApplyGMCoexNoiseMitigation(v3, *(v3 + 136), *(v3 + 136), &buf, *(v3 + 129));
      }

      v75 = *(v3 + 136);
      if (*v75 < 3u)
      {
        *(v3 + 1057) = *(v75 + 8);
        if (*v75 < 2u)
        {
          v460 = 0;
          v81 = 0;
          v78 = 0;
          v77 = 0;
        }

        else if (*(v3 + 17160) == 1)
        {
          v460 = 0;
          v81 = 0;
          v78 = 0;
          *(v3 + 1057) = *(v75 + 24);
          *(v3 + 16936) = *(v75 + 8);
          v77 = 1;
        }

        else
        {
          v460 = 0;
          v81 = 0;
          v77 = 0;
          *(v3 + 16936) = *(v75 + 24);
          v78 = 1;
        }

LABEL_124:
        v83 = *(v3 + 586);
        LODWORD(v462) = v78;
        if ((v83 & 0x80) != 0 && (*(v3 + 4704) & 0x80) != 0)
        {
          v84 = *(v3 + 356);
          if (v84)
          {
            v85 = *&a2->mRateScalar;
            *&buf.mSampleTime = *&a2->mSampleTime;
            *&buf.mRateScalar = v85;
            v86 = *&a2->mSMPTETime.mHours;
            *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
            *&buf.mSMPTETime.mHours = v86;
            v471 = 512;
            AudioUnitProcess(v84, &v471, &buf, *(v3 + 129), (v3 + 16904));
            if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
            {
              VoiceProcessorV2::SaveFilesWriteSignal(v3, 6u, *(v3 + 129), (v3 + 16904), &buf);
            }

            v83 = *(v3 + 586);
          }
        }

        if (v83 & 0x100) != 0 && (*(v3 + 4705))
        {
          v87 = *(v3 + 357);
          if (v87)
          {
            v88 = *&a2->mRateScalar;
            *&buf.mSampleTime = *&a2->mSampleTime;
            *&buf.mRateScalar = v88;
            v89 = *&a2->mSMPTETime.mHours;
            *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
            *&buf.mSMPTETime.mHours = v89;
            v471 = 512;
            AudioUnitProcess(v87, &v471, &buf, *(v3 + 129), (v3 + 16928));
            if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
            {
              VoiceProcessorV2::SaveFilesWriteSignal(v3, 7u, *(v3 + 129), (v3 + 16928), &buf);
            }

            v83 = *(v3 + 586);
          }
        }

        if ((v83 & 0x200) != 0)
        {
          v90 = *(v3 + 588);
          if ((v90 & 0x200) != 0)
          {
            v91 = *(v3 + 358);
            if (v91)
            {
              if ((v83 & v90 & 0x1000000000000) != 0 && *(v3 + 397))
              {
                v92 = *&a2->mRateScalar;
                *&buf.mSampleTime = *&a2->mSampleTime;
                *&buf.mRateScalar = v92;
                v93 = *&a2->mSMPTETime.mHours;
                *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                *&buf.mSMPTETime.mHours = v93;
                v471 = 512;
                AudioUnitProcess(v91, &v471, &buf, *(v3 + 129), (v3 + 16952));
                if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                {
                  VoiceProcessorV2::SaveFilesWriteSignal(v3, 8u, *(v3 + 129), (v3 + 16952), &buf);
                }

                v83 = *(v3 + 586);
              }
            }
          }
        }

        if ((v83 & 0x400) != 0 && (*(v3 + 4705) & 4) != 0)
        {
          v94 = *(v3 + 359);
          if (v94)
          {
            v95 = *&a2->mRateScalar;
            *&buf.mSampleTime = *&a2->mSampleTime;
            *&buf.mRateScalar = v95;
            v96 = *&a2->mSMPTETime.mHours;
            *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
            *&buf.mSMPTETime.mHours = v96;
            v471 = 512;
            AudioUnitProcess(v94, &v471, &buf, *(v3 + 129), (v3 + 16976));
            if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
            {
              VoiceProcessorV2::SaveFilesWriteSignal(v3, 9u, *(v3 + 129), (v3 + 16976), &buf);
            }

            v83 = *(v3 + 586);
          }
        }

        if ((v83 & 0x400000) != 0 && (*(v3 + 4706) & 0x40) != 0)
        {
          if (*(v3 + 371))
          {
            v97 = *(v3 + 2200);
            if (v97)
            {
              v98 = *(v3 + 2115);
              v99 = *(*(v3 + 2195) + 16) + 4 * *(v3 + 129);
              buf.mSampleTime = *(*(v3 + 2195) + 16);
              buf.mHostTime = v99;
              VPTimeFreqConverter_Analyze(v97, v98, &buf);
              v83 = *(v3 + 586);
            }
          }
        }

        if ((v83 & 0x800000) != 0 && (*(v3 + 4706) & 0x80) != 0)
        {
          if (*(v3 + 372))
          {
            v100 = *(v3 + 2201);
            if (v100)
            {
              v101 = *(v3 + 2118);
              v102 = *(*(v3 + 2196) + 16) + 4 * *(v3 + 129);
              buf.mSampleTime = *(*(v3 + 2196) + 16);
              buf.mHostTime = v102;
              VPTimeFreqConverter_Analyze(v100, v101, &buf);
              v83 = *(v3 + 586);
            }
          }
        }

        if (v83 & 0x1000000) != 0 && (*(v3 + 4707))
        {
          if (*(v3 + 373))
          {
            v103 = *(v3 + 2202);
            if (v103)
            {
              v104 = *(v3 + 2121);
              v105 = *(*(v3 + 2197) + 16) + 4 * *(v3 + 129);
              buf.mSampleTime = *(*(v3 + 2197) + 16);
              buf.mHostTime = v105;
              VPTimeFreqConverter_Analyze(v103, v104, &buf);
              v83 = *(v3 + 586);
            }
          }
        }

        if ((v83 & 0x2000000) != 0 && (*(v3 + 4707) & 2) != 0)
        {
          if (*(v3 + 374))
          {
            v106 = *(v3 + 2203);
            if (v106)
            {
              v107 = *(v3 + 2124);
              v108 = *(*(v3 + 2198) + 16) + 4 * *(v3 + 129);
              buf.mSampleTime = *(*(v3 + 2198) + 16);
              buf.mHostTime = v108;
              VPTimeFreqConverter_Analyze(v106, v107, &buf);
              v83 = *(v3 + 586);
            }
          }
        }

        if (((v83 & 0x1000000000000) == 0 || (*(v3 + 4710) & 1) == 0 || !*(v3 + 397)) && (v83 & 0x800) != 0 && (*(v3 + 4705) & 8) != 0)
        {
          v109 = *(v3 + 360);
          if (v109)
          {
            MEMORY[0x28223BE20](v109);
            *(&v455 - 6) = 2;
            *(&v455 - 5) = *(v3 + 1057);
            *(&v455 - 3) = *(v3 + 16936);
            *&v481.mSampleTime = &v455 - 6;
            v481.mHostTime = 0;
            *&v486.mSampleTime = v3 + 16904;
            memset(&v486.mHostTime, 0, 24);
            v471 = 512;
            v110 = *&a2->mRateScalar;
            *&buf.mSampleTime = *&a2->mSampleTime;
            *&buf.mRateScalar = v110;
            v111 = *&a2->mSMPTETime.mHours;
            *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
            *&buf.mSMPTETime.mHours = v111;
            AudioUnitProcessMultiple(v112, &v471, &buf, *(v3 + 129), 2u, &v481, 4u, &v486);
            if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
            {
              VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x65u, *(v3 + 129), (v3 + 16904), &buf);
            }

            v83 = *(v3 + 586);
          }
        }

        v470 = 0;
        v113 = *&a2->mRateScalar;
        *&buf.mSampleTime = *&a2->mSampleTime;
        *&buf.mRateScalar = v113;
        v114 = *&a2->mSMPTETime.mHours;
        *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
        *&buf.mSMPTETime.mHours = v114;
        if ((v83 & 0x4000000) == 0 || (*(v3 + 4707) & 4) == 0 || !*(v3 + 375))
        {
LABEL_199:
          v469 = 0;
          if ((*(v3 + 4691) & 8) == 0 || (*(v3 + 4707) & 8) == 0 || !*(v3 + 376))
          {
            goto LABEL_213;
          }

          v120 = *(v3 + 2110);
          if ((*(v3 + 2111) - v120) <= 0x28)
          {
            goto LABEL_856;
          }

          ECApplicator::apply(*(v120 + 40), &buf, v462, &v469, v3 + 1055, v3 + 1059, v3 + 1063, v3 + 1067, v3 + 1071, v3 + 1075);
          v121 = *(v3 + 129);
          if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
          {
            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x22u, v121, *(v3 + 137), &buf);
            v121 = *(v3 + 129);
            v122 = *(v3 + 2149);
            if (*(v3 + 15881))
            {
              goto LABEL_209;
            }
          }

          else
          {
            v122 = *(v3 + 2149);
          }

          if (*(v3 + 15882) != 1)
          {
LABEL_210:
            v123 = *(v3 + 2157);
            v124 = *(v122 + 16);
            v486.mSampleTime = *(*(v3 + 512) + 16);
            v486.mHostTime = *&v486.mSampleTime + 4 * v121;
            VPTimeFreqConverter_Analyze(v123, v124, &v486);
            if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
            {
              VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x17u, *(v3 + 129), *(v3 + 512), &buf);
            }

LABEL_213:
            if ((*(v3 + 4690) & 0x40) != 0 && (*(v3 + 4706) & 0x40) != 0 && *(v3 + 371))
            {
              v125 = *(v3 + 2110);
              if (*(v3 + 2111) == v125)
              {
                goto LABEL_856;
              }

              ECApplicator::apply(*v125, &buf, v77, &v470 + 1, v3 + 1054, v3 + 1058, v3 + 1062, v3 + 1066, v3 + 1070, v3 + 1074);
              v126 = *(v3 + 129);
              if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
              {
                VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x1Cu, v126, (v3 + 16904), &buf);
                v126 = *(v3 + 129);
                v127 = *(v3 + 420);
                if (*(v3 + 15881))
                {
                  goto LABEL_257;
                }
              }

              else
              {
                v127 = *(v3 + 420);
              }

              if (*(v3 + 15882) == 1)
              {
LABEL_257:
                VoiceProcessorV2::SaveFilesWriteSignal(v3, 0xCu, v126, v127, &buf);
              }
            }

            else
            {
              v128 = 0;
              while (((*(v3 + 118) >> v128) & 1) == 0)
              {
                if (++v128 == 32)
                {
                  v128 = 33;
                  break;
                }
              }

              if (v128 >= **(v3 + 136))
              {
                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                v129 = VPLogScope(void)::scope;
                if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
                {
                  v130 = (*v129 ? *v129 : MEMORY[0x277D86220]);
                  if (os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
                  {
                    v131 = **(v3 + 136);
                    LODWORD(v486.mSampleTime) = 136315906;
                    *(&v486.mSampleTime + 4) = "vpProcessUplink_v8.cpp";
                    WORD2(v486.mHostTime) = 1024;
                    *(&v486.mHostTime + 6) = 371;
                    WORD1(v486.mRateScalar) = 1024;
                    HIDWORD(v486.mRateScalar) = v128;
                    LOWORD(v486.mWordClockTime) = 1024;
                    *(&v486.mWordClockTime + 2) = v131;
                    _os_log_impl(&dword_2724B4000, v130, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> ERROR: mPrimaryEpMicIndex is %d, but epmic only has %d channels", &v486, 0x1Eu);
                  }
                }

                v132 = *(v3 + 1588);
                if (v132 && ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1))
                {
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  CALegacyLog::log(v132, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessUplink_v8.cpp", 371, "ProcessDSPChain_Uplink", "ERROR: mPrimaryEpMicIndex is %d, but epmic only has %d channels", v128, **(v3 + 136));
                }

                v128 = 0;
              }

              v133 = *(v3 + 136) + 16 * v128;
              memcpy(*(*(v3 + 137) + 16), *(v133 + 16), *(v133 + 12));
            }

            if ((*(v3 + 4696) & 0x20) != 0 && (*(v3 + 4712) & 0x20) != 0)
            {
              v134 = *(v3 + 418);
              if (v134)
              {
                v486.mSampleTime = *(v3 + 136);
                v486.mHostTime = v3 + 17096;
                v481.mSampleTime = *(v3 + 137);
                v471 = 512;
                AudioUnitProcessMultiple(v134, &v471, &buf, *(v3 + 129), 2u, &v486, 1u, &v481);
              }
            }

            v468 = 0;
            if ((*(v3 + 4690) & 0x80) != 0 && (*(v3 + 4706) & 0x80) != 0 && *(v3 + 372))
            {
              v135 = *(v3 + 2110);
              if ((*(v3 + 2111) - v135) <= 8)
              {
                goto LABEL_856;
              }

              ECApplicator::apply(*(v135 + 8), &buf, v462, &v468, v3 + 1055, v3 + 1059, v3 + 1063, v3 + 1067, v3 + 1071, v3 + 1075);
              v136 = *(v3 + 129);
              if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
              {
                VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x1Du, v136, (v3 + 16928), &buf);
                v136 = *(v3 + 129);
                v137 = *(v3 + 421);
                if (*(v3 + 15881))
                {
                  goto LABEL_260;
                }
              }

              else
              {
                v137 = *(v3 + 421);
              }

              if (*(v3 + 15882) == 1)
              {
LABEL_260:
                VoiceProcessorV2::SaveFilesWriteSignal(v3, 0xDu, v136, v137, &buf);
              }
            }

            v467 = 0;
            if ((*(v3 + 4691) & 1) == 0 || (*(v3 + 4707) & 1) == 0 || !*(v3 + 373))
            {
              goto LABEL_272;
            }

            v138 = *(v3 + 2110);
            if ((*(v3 + 2111) - v138) <= 0x10)
            {
              goto LABEL_856;
            }

            ECApplicator::apply(*(v138 + 16), &buf, v460, &v467, v3 + 1056, v3 + 1060, v3 + 1064, v3 + 1068, v3 + 1072, v3 + 1076);
            v139 = *(v3 + 129);
            if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
            {
              VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x1Eu, v139, (v3 + 16952), &buf);
              v139 = *(v3 + 129);
              v140 = *(v3 + 423);
              if (*(v3 + 15881))
              {
LABEL_271:
                VoiceProcessorV2::SaveFilesWriteSignal(v3, 0xEu, v139, v140, &buf);
LABEL_272:
                v466 = 0;
                if ((*(v3 + 4691) & 2) == 0 || (*(v3 + 4707) & 2) == 0 || !*(v3 + 374))
                {
                  goto LABEL_283;
                }

                v141 = *(v3 + 2110);
                if ((*(v3 + 2111) - v141) > 0x18)
                {
                  ECApplicator::apply(*(v141 + 24), &buf, v81, &v466, v3 + 1057, v3 + 1061, v3 + 1065, v3 + 1069, v3 + 1073, v3 + 1077);
                  v142 = *(v3 + 129);
                  if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
                  {
                    VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x1Fu, v142, (v3 + 16976), &buf);
                    v142 = *(v3 + 129);
                    v143 = *(v3 + 422);
                    if (*(v3 + 15881))
                    {
                      goto LABEL_282;
                    }
                  }

                  else
                  {
                    v143 = *(v3 + 422);
                  }

                  if (*(v3 + 15882) == 1)
                  {
LABEL_282:
                    VoiceProcessorV2::SaveFilesWriteSignal(v3, 0xFu, v142, v143, &buf);
                  }

LABEL_283:
                  if ((*(v3 + 8869) & 8) != 0 && (*(v3 + 8877) & 8) != 0)
                  {
                    if (*(v3 + 482))
                    {
                      *(v3 + 17128) = 0;
                      if (*(v3 + 4691) & 1) != 0 && (*(v3 + 4707))
                      {
                        v144 = *(v3 + 373);
                        if (v144)
                        {
                          if (*(v3 + 2140))
                          {
                            LODWORD(v486.mSampleTime) = 0;
                            if (!AudioUnitGetPropertyInfo(v144, 0xF3Cu, 0, 0, &v486, 0) && LODWORD(v486.mSampleTime) == 4 * *v9)
                            {
                              v145 = *(*(v3 + 2140) + 16);
                              Property = AudioUnitGetProperty(*(v3 + 373), 0xF3Cu, 0, 0, v145, &v486);
                              if (*(v3 + 489) == 1)
                              {
                                AudioUnitSetProperty(*(v3 + 482), 0xF3Cu, 0, 0, v145, LODWORD(v486.mSampleTime));
                              }

                              *(v3 + 17128) = Property == 0;
                            }
                          }
                        }
                      }
                    }
                  }

                  v147 = *(v3 + 522);
                  v148 = *(v3 + 2139);
                  v149 = *(*(v3 + 514) + 16) + 4 * *(v3 + 129);
                  v486.mSampleTime = *(*(v3 + 514) + 16);
                  v486.mHostTime = v149;
                  VPTimeFreqConverter_Analyze(v147, v148, &v486);
                  v465 = 0.0;
                  if ((*(v3 + 4690) & 0x40) != 0 && (*(v3 + 4706) & 0x40) != 0)
                  {
                    if (*(v3 + 371))
                    {
                      v151 = *(v3 + 516);
                      v152 = *(v3 + 2115);
                      v153 = *(*(v3 + 430) + 16) + 4 * *(v3 + 129);
                      v486.mSampleTime = *(*(v3 + 430) + 16);
                      v486.mHostTime = v153;
                      VPTimeFreqConverter_Analyze(v151, v152, &v486);
                      v154 = *(v3 + 520);
                      v155 = *(*(v3 + 420) + 16);
                      v156 = *(*(v3 + 508) + 16) + 4 * *(v3 + 129);
                      v486.mSampleTime = *(*(v3 + 508) + 16);
                      v486.mHostTime = v156;
                      VPTimeFreqConverter_Analyze(v154, v155, &v486);
                      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                      {
                        Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x12u, *(v3 + 129), *(v3 + 430), &buf);
                      }
                    }
                  }

                  if ((*(v3 + 4690) & 0x80) != 0 && (*(v3 + 4706) & 0x80) != 0)
                  {
                    if (*(v3 + 372))
                    {
                      v157 = *(v3 + 517);
                      v158 = *(v3 + 2118);
                      v159 = *(*(v3 + 509) + 16) + 4 * *(v3 + 129);
                      v486.mSampleTime = *(*(v3 + 509) + 16);
                      v486.mHostTime = v159;
                      VPTimeFreqConverter_Analyze(v157, v158, &v486);
                      v160 = *(v3 + 521);
                      v161 = *(*(v3 + 421) + 16);
                      v162 = *(*(v3 + 508) + 32) + 4 * *(v3 + 129);
                      v486.mSampleTime = *(*(v3 + 508) + 32);
                      v486.mHostTime = v162;
                      VPTimeFreqConverter_Analyze(v160, v161, &v486);
                      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                      {
                        Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x13u, *(v3 + 129), *(v3 + 509), &buf);
                      }
                    }
                  }

                  v163 = *(v3 + 586);
                  if ((v163 & 0x1000000) != 0)
                  {
                    v164 = *(v3 + 588);
                    if ((v164 & 0x1000000) != 0)
                    {
                      if (*(v3 + 373))
                      {
                        if ((v163 & v164 & 0x80000000000) != 0)
                        {
                          Parameter = *(v3 + 392);
                          if (Parameter)
                          {
                            Parameter = AudioUnitGetParameter(Parameter, 0x2Bu, 0, 0, &v465);
                          }
                        }

                        if (v465 != 0.0 || (*(v3 + 4694) & 1) != 0 && (*(v3 + 4710) & 1) != 0 && *(v3 + 397))
                        {
                          v165 = *(v3 + 518);
                          v166 = *(v3 + 2121);
                          v167 = *(*(v3 + 2179) + 16) + 4 * *(v3 + 129);
                          v486.mSampleTime = *(*(v3 + 2179) + 16);
                          v486.mHostTime = v167;
                          VPTimeFreqConverter_Analyze(v165, v166, &v486);
                          v168 = *(v3 + 2144);
                          v169 = *(*(v3 + 423) + 16);
                          v170 = *(*(v3 + 508) + 48) + 4 * *(v3 + 129);
                          v486.mSampleTime = *(*(v3 + 508) + 48);
                          v486.mHostTime = v170;
                          VPTimeFreqConverter_Analyze(v168, v169, &v486);
                          if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                          {
                            Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x14u, *(v3 + 129), *(v3 + 2179), &buf);
                          }
                        }
                      }
                    }
                  }

                  if ((*(v3 + 4691) & 2) != 0 && (*(v3 + 4707) & 2) != 0)
                  {
                    if (*(v3 + 374))
                    {
                      v171 = *(v3 + 519);
                      v172 = *(v3 + 2124);
                      v173 = *(*(v3 + 510) + 16) + 4 * *(v3 + 129);
                      v486.mSampleTime = *(*(v3 + 510) + 16);
                      v486.mHostTime = v173;
                      VPTimeFreqConverter_Analyze(v171, v172, &v486);
                      v174 = *(v3 + 2108);
                      v175 = *(*(v3 + 422) + 16);
                      v176 = *(*(v3 + 508) + 64) + 4 * *(v3 + 129);
                      v486.mSampleTime = *(*(v3 + 508) + 64);
                      v486.mHostTime = v176;
                      VPTimeFreqConverter_Analyze(v174, v175, &v486);
                      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                      {
                        Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x15u, *(v3 + 129), *(v3 + 510), &buf);
                      }
                    }
                  }

                  v177 = *(v3 + 586);
                  if ((v177 & 0x1000) != 0 && (*(v3 + 4705) & 0x10) != 0)
                  {
                    Parameter = *(v3 + 361);
                    if (Parameter)
                    {
                      MEMORY[0x28223BE20](Parameter);
                      *(&v455 - 6) = 2;
                      *(&v455 - 5) = *(v3 + 1057);
                      *(&v455 - 3) = *(v3 + 16936);
                      inInputBufferLists = (&v455 - 6);
                      v488 = 0;
                      v481.mSampleTime = *(v3 + 2184);
                      memset(&v481.mHostTime, 0, 24);
                      v471 = 512;
                      v178 = *&a2->mRateScalar;
                      *&v486.mSampleTime = *&a2->mSampleTime;
                      *&v486.mRateScalar = v178;
                      v179 = *&a2->mSMPTETime.mHours;
                      *&v486.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                      *&v486.mSMPTETime.mHours = v179;
                      AudioUnitProcessMultiple(v180, &v471, &v486, *(v3 + 129), 2u, &inInputBufferLists, 4u, &v481);
                      v181 = *(v3 + 2187);
                      v182 = *(*(v3 + 2184) + 16);
                      v183 = *(*(v3 + 2185) + 16) + 4 * *(v3 + 129);
                      *&v482.mNumberBuffers = *(*(v3 + 2185) + 16);
                      *&v482.mBuffers[0].mNumberChannels = v183;
                      VPTimeFreqConverter_Analyze(v181, v182, &v482);
                      if (*(v3 + 17632) == 1)
                      {
                        v184 = *(v3 + 129);
                        *&v482.mNumberBuffers = *(*(v3 + 430) + 16);
                        *&v482.mBuffers[0].mNumberChannels = *&v482.mNumberBuffers + 4 * v184;
                        v485.realp = *(*(v3 + 2185) + 16);
                        v485.imagp = &v485.realp[v184];
                        v185 = *(*(v3 + 2186) + 16);
                        v186 = &v185[v184];
                        vDSP_zvabs(&v482, 1, v185, 1, v184);
                        vDSP_zvabs(&v485, 1, v186, 1, *(v3 + 129));
                        vDSP_vmin(v185, 1, v186, 1, v185, 1, *(v3 + 129));
                        LODWORD(v479) = 507307272;
                        MEMORY[0x2743CCE00](v186, 1, &v479, v186, 1, *(v3 + 129));
                        vDSP_vdiv(v186, 1, v185, 1, v186, 1, *(v3 + 129));
                        MEMORY[0x2743CCDD0](v485.realp, 1, v186, 1, v485.realp, 1, *(v3 + 129));
                        Parameter = MEMORY[0x2743CCDD0](v485.imagp, 1, v186, 1, v485.imagp, 1, *(v3 + 129));
                      }

                      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                      {
                        Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x61u, *(v3 + 129), *(v3 + 2185), &v486);
                      }

                      v177 = *(v3 + 586);
                    }
                  }

                  if ((v177 & 0x20000000) != 0 && (*(v3 + 4707) & 0x20) != 0)
                  {
                    Parameter = *(v3 + 378);
                    if (Parameter)
                    {
                      v481.mSampleTime = *(v3 + 430);
                      *&v482.mNumberBuffers = v481.mSampleTime;
                      v471 = 512;
                      v187 = *&a2->mRateScalar;
                      *&v486.mSampleTime = *&a2->mSampleTime;
                      *&v486.mRateScalar = v187;
                      v188 = *&a2->mSMPTETime.mHours;
                      *&v486.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                      *&v486.mSMPTETime.mHours = v188;
                      Parameter = AudioUnitProcessMultiple(Parameter, &v471, &v486, *(v3 + 129), 1u, &v481, 1u, &v482);
                      if (!Parameter)
                      {
                        Parameter = AudioUnitGetProperty(*(v3 + 378), 0x1450u, 0, 0, *(*(v3 + 2183) + 16), (*(v3 + 2183) + 12));
                        if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                        {
                          Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x20u, (*(v3 + 129) + 1), *(v3 + 2183), &v486);
                        }
                      }

                      v177 = *(v3 + 586);
                    }
                  }

                  if ((v177 & 0x100000000000) == 0 || (v189 = *(v3 + 588), (v189 & 0x100000000000) == 0) || (Parameter = *(v3 + 393)) == 0 || (v177 & v189 & 0x1000000000000) != 0 && *(v3 + 397))
                  {
LABEL_358:
                    v464 = 0;
                    if ((v177 & 0x40000000) != 0 && (*(v3 + 4707) & 0x40) != 0 && *(v3 + 379))
                    {
                      v199 = 1;
                      v200 = 1;
                    }

                    else if ((v177 & 0x200000000) != 0 && (*(v3 + 4708) & 2) != 0)
                    {
                      v199 = 0;
                      v200 = *(v3 + 382) != 0;
                    }

                    else
                    {
                      v199 = 0;
                      v200 = 0;
                    }

                    v201 = v177 & 0x80000000;
                    if ((v177 & 0x80000000) != 0 && (*(v3 + 4707) & 0x80) != 0 && *(v3 + 380))
                    {
                      v202 = 1;
                      v199 = 1;
                      v203 = 1;
                      if ((v177 & 0x100000000) == 0)
                      {
                        goto LABEL_383;
                      }
                    }

                    else
                    {
                      if ((v177 & 0x100000000) == 0)
                      {
                        v202 = 0;
                        v203 = 1;
                        goto LABEL_383;
                      }

                      v203 = 1;
                      if (*(v3 + 4708))
                      {
                        v204 = *(v3 + 381);
                        v202 = v204 != 0;
                        if (v204)
                        {
                          v203 = 2;
                        }

                        else
                        {
                          v203 = 1;
                        }
                      }

                      else
                      {
                        v202 = 0;
                      }
                    }

                    v205 = *(v3 + 588);
                    if ((v205 & 0x100000000) != 0 && *(v3 + 381) && (v177 & v205 & 0x200000000) != 0 && *(v3 + 382))
                    {
                      v203 = 2;
                      v199 = 2;
                    }

LABEL_383:
                    if ((v177 & 0x40000000) == 0)
                    {
                      goto LABEL_400;
                    }

                    if ((*(v3 + 4707) & 0x40) == 0)
                    {
                      goto LABEL_400;
                    }

                    Parameter = *(v3 + 379);
                    if (!Parameter)
                    {
                      goto LABEL_400;
                    }

                    AudioUnitSetProperty(Parameter, 0x457u, 0, 0, v3 + 2332, 4u);
                    if ((*(v3 + 4691) & 0x80) != 0 && (*(v3 + 4707) & 0x80) != 0)
                    {
                      v206 = *(v3 + 379);
                      if (*(v3 + 380))
                      {
                        v207 = *(v3 + 688);
LABEL_390:
                        AudioUnitSetParameter(v206, 0x1Bu, 0, 0, v207, 0);
                        v208 = *(v3 + 586);
                        if ((v208 & 0x400000) != 0)
                        {
                          v209 = *(v3 + 588);
                          if ((v209 & 0x400000) != 0 && *(v3 + 371) && (v208 & v209 & 0x800000) != 0 && *(v3 + 372))
                          {
                            AudioUnitSetParameter(*(v3 + 379), 0x3Fu, 0, 0, *(v3 + 1062) * *(v3 + 1063), 0);
                          }
                        }

                        *&v210 = *(v3 + 139) + 24;
                        *&v211 = *(v3 + 140) + 24;
                        if (**(v3 + 136) <= 2u)
                        {
                          *&v481.mSampleTime = *(v3 + 139) + 24;
                          *&v481.mHostTime = v211;
                          v481.mRateScalar = 0.0;
                          v481.mWordClockTime = v3 + 17096;
                          *&v481.mSMPTETime.mSubframes = *(v3 + 210);
                        }

                        else
                        {
                          v212 = *(v3 + 141) + 24;
                          *&v481.mSMPTETime.mSubframes = *(v3 + 210);
                          v481.mSampleTime = v211;
                          v481.mHostTime = v212;
                          v481.mRateScalar = v210;
                          v481.mWordClockTime = v3 + 17096;
                        }

                        *&v482.mNumberBuffers = 0;
                        v471 = 512;
                        AudioUnitSetParameter(*(v3 + 379), 0x2Cu, 0, 0, *(v3 + 1098), 0);
                        v213 = *&a2->mRateScalar;
                        *&v486.mSampleTime = *&a2->mSampleTime;
                        *&v486.mRateScalar = v213;
                        v214 = *&a2->mSMPTETime.mHours;
                        *&v486.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                        *&v486.mSMPTETime.mHours = v214;
                        Parameter = AudioUnitProcessMultiple(*(v3 + 379), &v471, &v486, *(v3 + 129), 6u, &v481, 1u, &v482);
                        v177 = *(v3 + 586);
                        v201 = v177 & 0x80000000;
LABEL_400:
                        if (v201 && (*(v3 + 4707) & 0x80) != 0 && *(v3 + 380))
                        {
                          memcpy(*(*(v3 + 436) + 16 * *(v3 + 1048) + 16), *(*(v3 + 430) + 16), 4 * (2 * *(v3 + 129)));
                          memcpy(*(*(v3 + 436) + 16 * *(v3 + 1049) + 16), *(*(v3 + 509) + 16), 4 * (2 * *(v3 + 129)));
                          if (*(v3 + 1074) == 0.0 && *(v3 + 1075) == 0.0)
                          {
                            v215 = 0.0;
                          }

                          else
                          {
                            v215 = 1.0;
                          }

                          AudioUnitSetParameter(*(v3 + 380), 0x20u, 0, 0, v215, 0);
                          v481.mSampleTime = *(v3 + 436);
                          *&v482.mNumberBuffers = *(v3 + 431);
                          v216 = *&a2->mRateScalar;
                          *&v486.mSampleTime = *&a2->mSampleTime;
                          *&v486.mRateScalar = v216;
                          v217 = *&a2->mSMPTETime.mHours;
                          *&v486.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                          *&v486.mSMPTETime.mHours = v217;
                          v471 = 512;
                          AudioUnitProcessMultiple(*(v3 + 380), &v471, &v486, *(v3 + 129), 1u, &v481, 1u, &v482);
                          LODWORD(inInputBufferLists) = 8 * *(v3 + 129);
                          AudioUnitGetProperty(*(v3 + 380), 0xE7Au, 0, 0, *(*(v3 + 541) + 16), &inInputBufferLists);
                          LODWORD(inInputBufferLists) = 8 * *(v3 + 129);
                          Parameter = AudioUnitGetProperty(*(v3 + 380), 0xE79u, 0, 0, *(*(v3 + 541) + 32), &inInputBufferLists);
                          v218 = *(v3 + 129);
                          imagp = *(v3 + 431);
                          if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                          {
                            v220 = &v486;
                            v221 = v3;
                            v222 = 10;
LABEL_409:
                            Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v221, v222, v218, imagp, v220);
                          }

LABEL_437:
                          MEMORY[0x28223BE20](Parameter);
                          v235 = (&v455 - 8);
                          *(&v455 - 3) = 0u;
                          *(&v455 - 2) = 0u;
                          *(&v455 - 4) = 0u;
                          *(&v455 - 16) = 3;
                          *&v238 = MEMORY[0x28223BE20](v236);
                          v462 = (&v455 - 8);
                          v454 = 0;
                          *(&v455 - 3) = v238;
                          *(&v455 - 2) = v238;
                          *(&v455 - 4) = v238;
                          *(&v455 - 16) = v239;
                          v240 = *(v3 + 586);
                          if ((v240 & 0x400000000) != 0 && (*(v3 + 4708) & 4) != 0 && *(v3 + 383) || (v240 & 0x800000000) != 0 && (*(v3 + 4708) & 8) != 0 && *(v3 + 384) || (v240 & 0x2000000000) != 0 && (*(v3 + 4708) & 0x20) != 0 && *(v3 + 386))
                          {
                            *(&v455 - 7) = *(*(v3 + 430) + 8);
                            *(&v455 - 5) = *(*(v3 + 509) + 8);
                            *(&v455 - 3) = *(*(v3 + 510) + 8);
                            v241 = *(v3 + 508);
                            v242 = v462;
                            v462->mBuffers[0] = *(v241 + 8);
                            *&v242[1].mNumberBuffers = *(v241 + 24);
                            *&v242[1].mBuffers[0].mData = *(v241 + 56);
                          }

                          if ((v240 & 0x400000000) == 0 || (*(v3 + 4708) & 4) == 0 || !*(v3 + 383))
                          {
LABEL_460:
                            if ((v240 & 0x800000000) == 0 || (*(v3 + 4708) & 8) == 0 || !*(v3 + 384))
                            {
LABEL_473:
                              if ((v240 & 0x2000000000) == 0 || (*(v3 + 4708) & 0x20) == 0 || !*(v3 + 386))
                              {
LABEL_486:
                                if (v199 == 2)
                                {
                                  VoiceProcessorV4::SignalParamSwitchMixNF(v3, v202, v200, &v464);
                                }

                                else if (v199 == 1)
                                {
                                  VoiceProcessorV2::SignalParamSwitchMix(v3, v202, v200, &v464, v237);
                                }

                                if (v203 == 1)
                                {
                                  VoiceProcessorV2::TimeAlignedReferenceAndOtherHandling(v3, HIBYTE(v470), v468, v202, v464);
                                }

                                else
                                {
                                  VoiceProcessorV4::TimeAlignedReferenceAndOtherHandlingNF(v3, HIBYTE(v470), v466, v202, v464);
                                }

                                LODWORD(inInputBufferLists) = 0;
                                if ((*(v3 + 586) & 0x2000000000000) != 0 && (*(v3 + 588) & 0x2000000000000) != 0)
                                {
                                  v255 = *(v3 + 398);
                                  if (v255)
                                  {
                                    MEMORY[0x28223BE20](v255);
                                    *(&v455 - 3) = 0u;
                                    *(&v455 - 2) = 0u;
                                    *(&v455 - 4) = 0u;
                                    *(&v455 - 16) = 3;
                                    *&v258 = MEMORY[0x28223BE20](v256);
                                    v454 = 0;
                                    *(&v455 - 3) = v258;
                                    *(&v455 - 2) = v258;
                                    *(&v455 - 4) = v258;
                                    *(&v455 - 16) = v259;
                                    *(v260 - 56) = *(*(v3 + 430) + 8);
                                    *(v260 - 40) = *(*(v3 + 433) + 8);
                                    *(v260 - 24) = *(*(v3 + 2179) + 8);
                                    v261 = *(v3 + 508);
                                    *(&v455 - 7) = *(v261 + 8);
                                    *(&v455 - 5) = *(v261 + 24);
                                    *(&v455 - 3) = *(v261 + 40);
                                    v481.mSampleTime = v262;
                                    v481.mHostTime = (&v455 - 8);
                                    *&v482.mNumberBuffers = *(v3 + 1090);
                                    if ((v263 & v264 & 0x400000000000000) != 0)
                                    {
                                      v265 = *(v3 + 407);
                                      if (v265)
                                      {
                                        LODWORD(v486.mSampleTime) = 0;
                                        AudioUnitGetParameter(v265, 0, 0, 0, &v486);
                                        AudioUnitSetParameter(*(v3 + 398), 0, 0, 0, *&v486.mSampleTime, 0);
                                        AudioUnitGetParameter(*(v3 + 398), 0xDu, 0, 0, &inInputBufferLists);
                                        v257 = *(v3 + 398);
                                      }
                                    }

                                    v266 = *&a2->mRateScalar;
                                    *&v486.mSampleTime = *&a2->mSampleTime;
                                    *&v486.mRateScalar = v266;
                                    v267 = *&a2->mSMPTETime.mHours;
                                    *&v486.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                                    *&v486.mSMPTETime.mHours = v267;
                                    AudioUnitProcessMultiple(v257, &v471, &v486, *(v3 + 129), 2u, &v481, 2u, &v482);
                                    v268 = *(v3 + 129);
                                    if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
                                    {
                                      VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x81u, v268, *(v3 + 2180), &v486);
                                      v268 = *(v3 + 129);
                                      v269 = *(v3 + 2181);
                                      if (*(v3 + 15881))
                                      {
                                        goto LABEL_505;
                                      }
                                    }

                                    else
                                    {
                                      v269 = *(v3 + 2181);
                                    }

                                    if (*(v3 + 15882) == 1)
                                    {
LABEL_505:
                                      VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x82u, v268, v269, &v486);
                                    }
                                  }
                                }

                                v270 = memcpy(*(*(v3 + 434) + 16), *(*(v3 + 508) + 16), *(v3 + 1079));
                                v271 = *(v3 + 586);
                                if ((v271 & 0x1000000) != 0 && (*(v3 + 4707) & 1) != 0 && *(v3 + 373) && v465 == 1.0)
                                {
                                  v270 = memcpy(*(*(v3 + 2143) + 16), *(*(v3 + 508) + 48), *(v3 + 1079));
                                  v271 = *(v3 + 586);
                                }

                                if ((v271 & 0x400000000000) == 0 || (v272 = *(v3 + 588), (v272 & 0x400000000000) == 0) || !*(v3 + 395))
                                {
LABEL_529:
                                  if ((v271 & 0x800000000000) != 0 && (*(v3 + 588) & 0x800000000000) != 0)
                                  {
                                    v288 = *(v3 + 396);
                                    if (v288)
                                    {
                                      MEMORY[0x28223BE20](v288);
                                      *(&v455 - 3) = 0u;
                                      *(&v455 - 2) = 0u;
                                      *(&v455 - 12) = 2;
                                      *&v290 = MEMORY[0x28223BE20](v289);
                                      v454 = 0;
                                      *(&v455 - 3) = v290;
                                      *(&v455 - 2) = v290;
                                      *(&v455 - 12) = v291;
                                      *(v292 - 40) = *(*(v3 + 430) + 8);
                                      *(v292 - 24) = *(*(v3 + 2180) + 8);
                                      *(&v455 - 5) = *(*(v3 + 508) + 8);
                                      *(&v455 - 3) = *(*(v3 + 2181) + 8);
                                      *&v294 = MEMORY[0x28223BE20](v293);
                                      *(&v455 - 3) = v294;
                                      *(&v455 - 2) = v294;
                                      *(&v455 - 12) = v295;
                                      *&v298 = MEMORY[0x28223BE20](v296);
                                      v454 = 0;
                                      *(&v455 - 3) = v298;
                                      *(&v455 - 2) = v298;
                                      *(&v455 - 12) = v299;
                                      v300 = *(v3 + 2182);
                                      *(v301 - 40) = *(v300 + 8);
                                      *(v301 - 24) = *(v300 + 24);
                                      *(&v455 - 5) = *(v300 + 40);
                                      *(&v455 - 3) = *(v300 + 56);
                                      if ((v302 & v303 & 0x2000000000000) != 0)
                                      {
                                        v304 = *(v3 + 398);
                                        if (v304)
                                        {
                                          LODWORD(v486.mSampleTime) = 0;
                                          AudioUnitGetParameter(v304, 1u, 0, 0, &v486);
                                          AudioUnitSetParameter(*(v3 + 396), 0, 4u, 0, *&v486.mSampleTime, 0);
                                          AudioUnitSetParameter(*(v3 + 399), 0, 0, 0, *&v486.mSampleTime, 0);
                                          v297 = *(v3 + 396);
                                        }
                                      }

                                      *&v481.mSampleTime = &v455 - 6;
                                      v481.mHostTime = (&v455 - 6);
                                      *&v482.mNumberBuffers = &v455 - 6;
                                      *&v482.mBuffers[0].mNumberChannels = &v455 - 6;
                                      v305 = *&a2->mRateScalar;
                                      *&v486.mSampleTime = *&a2->mSampleTime;
                                      *&v486.mRateScalar = v305;
                                      v306 = *&a2->mSMPTETime.mHours;
                                      *&v486.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                                      *&v486.mSMPTETime.mHours = v306;
                                      v471 = 512;
                                      AudioUnitProcessMultiple(v297, &v471, &v486, *(v3 + 129), 2u, &v481, 2u, &v482);
                                      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                                      {
                                        VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x85u, *(v3 + 129), *(v3 + 2182), &v486);
                                      }

                                      v271 = *(v3 + 586);
                                    }
                                  }

                                  if ((v271 & 0x4000000000000) != 0)
                                  {
                                    v307 = *(v3 + 588);
                                    if ((v307 & 0x4000000000000) != 0)
                                    {
                                      v308 = *(v3 + 399);
                                      if (v308)
                                      {
                                        if ((v271 & v307 & 0x800000000000) != 0 && *(v3 + 396))
                                        {
                                          MEMORY[0x28223BE20](v308);
                                          v454 = 0;
                                          *(&v455 - 3) = 0u;
                                          *(&v455 - 2) = 0u;
                                          *(&v455 - 12) = 2;
                                          v309 = *(v3 + 2182);
                                          *(&v455 - 5) = *(v309 + 8);
                                          *(&v455 - 3) = *(v309 + 24);
                                          *&v481.mSampleTime = &v455 - 6;
                                          *&v482.mNumberBuffers = *(v3 + 433);
                                          v310 = *&a2->mRateScalar;
                                          *&v486.mSampleTime = *&a2->mSampleTime;
                                          *&v486.mRateScalar = v310;
                                          v311 = *&a2->mSMPTETime.mHours;
                                          *&v486.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                                          *&v486.mSMPTETime.mHours = v311;
                                          v471 = 512;
                                          AudioUnitProcessMultiple(v312, &v471, &v486, *(v3 + 129), 1u, &v481, 1u, &v482);
                                          if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                                          {
                                            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x87u, *(v3 + 129), *(v3 + 433), &v486);
                                          }

                                          v271 = *(v3 + 586);
                                        }
                                      }
                                    }
                                  }

                                  if ((v271 & 0x40000000000000) != 0 && (*(v3 + 4710) & 0x40) != 0 && *(v3 + 403))
                                  {
                                    v313 = 1;
                                  }

                                  else
                                  {
                                    v313 = (v271 & 0x80000000000000) != 0 && (*(v3 + 4710) & 0x80) != 0 && *(v3 + 404) != 0;
                                  }

                                  LODWORD(v485.realp) = 0;
                                  LODWORD(v479) = 0;
                                  v314 = AudioUnitGetParameter(*(v3 + 392), 0x1Du, 0, 0, &v485);
                                  v315 = *&v485.realp < 1.0 && v313;
                                  v460 = v315;
                                  if (v313)
                                  {
                                    LODWORD(v486.mSampleTime) = 1065353216;
                                    if (*&v485.realp < 1.0)
                                    {
                                      vDSP_vfill(&v486, *(*(v3 + 505) + 16), 1, *(v3 + 129));
                                    }

                                    vDSP_vfill(&v486, *(*(v3 + 503) + 16), 1, *(v3 + 129));
                                    v316 = *(v3 + 586);
                                  }

                                  else
                                  {
                                    v316 = *(v3 + 586);
                                    if ((v316 & 0x80000000000) == 0 || (*(v3 + 4709) & 8) == 0 || !*(v3 + 392))
                                    {
                                      goto LABEL_573;
                                    }
                                  }

                                  if ((v316 & 0x1000000000000) == 0 || (*(v3 + 4710) & 1) == 0 || !*(v3 + 397))
                                  {
                                    if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                                    {
                                      v314 = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x63u, *(v3 + 129), *(v3 + 430), &buf);
                                      v316 = *(v3 + 586);
                                    }

                                    LODWORD(v462) = 1;
LABEL_574:
                                    v317 = *(v3 + 504);
                                    if ((v316 & 0x40000000000000) != 0 && (*(v3 + 4710) & 0x40) != 0 && (v314 = *(v3 + 403)) != 0)
                                    {
                                      v318 = *(v3 + 503);
                                      v481.mSampleTime = *(v3 + 430);
                                      v481.mHostTime = v318;
                                      *&v481.mRateScalar = v3 + 16904;
                                      v319 = *(v3 + 505);
                                      *&v482.mNumberBuffers = *(v3 + 431);
                                      *&v482.mBuffers[0].mNumberChannels = v319;
                                      v482.mBuffers[0].mData = v317;
                                      v471 = 512;
                                      v320 = *&a2->mRateScalar;
                                      *&v486.mSampleTime = *&a2->mSampleTime;
                                      *&v486.mRateScalar = v320;
                                      v321 = *&a2->mSMPTETime.mHours;
                                      *&v486.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                                      *&v486.mSMPTETime.mHours = v321;
                                      AudioUnitProcessMultiple(v314, &v471, &v486, *(v3 + 129), 3u, &v481, 3u, &v482);
                                      AudioUnitGetParameter(*(v3 + 403), 1u, 0, 0, &v472);
                                      v314 = AudioUnitGetParameter(*(v3 + 403), 1u, 0, 0, v3 + 4377);
                                      if ((*(v3 + 4696) & 2) == 0 || (*(v3 + 4712) & 2) == 0 || !*(v3 + 414))
                                      {
                                        goto LABEL_589;
                                      }

                                      v322 = *(v3 + 403);
                                      v323 = 2;
                                    }

                                    else
                                    {
                                      if ((v316 & 0x80000000000000) == 0 || (*(v3 + 4710) & 0x80) == 0 || (v314 = *(v3 + 404)) == 0)
                                      {
                                        v329 = 0;
                                        goto LABEL_594;
                                      }

                                      MEMORY[0x28223BE20](v314);
                                      *(&v455 - 3) = 0;
                                      v454 = 0;
                                      *(&v455 - 4) = 0;
                                      *(&v455 - 8) = 1;
                                      *(&v455 - 3) = *(*(v3 + 2182) + 8);
                                      AudioUnitSetParameter(v324, 0x14u, 0, 0, *(v3 + 4189), 0);
                                      v325 = *(v3 + 433);
                                      *&v481.mSampleTime = &v455 - 4;
                                      v481.mHostTime = v325;
                                      v481.mRateScalar = *(v3 + 503);
                                      v481.mWordClockTime = v3 + 16904;
                                      v326 = *(v3 + 438);
                                      *&v482.mNumberBuffers = *(v3 + 431);
                                      *&v482.mBuffers[0].mNumberChannels = v326;
                                      v482.mBuffers[0].mData = *(v3 + 505);
                                      v483 = v317;
                                      v327 = *&a2->mRateScalar;
                                      *&v486.mSampleTime = *&a2->mSampleTime;
                                      *&v486.mRateScalar = v327;
                                      v328 = *&a2->mSMPTETime.mHours;
                                      *&v486.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                                      *&v486.mSMPTETime.mHours = v328;
                                      v471 = 512;
                                      AudioUnitProcessMultiple(*(v3 + 404), &v471, &v486, *(v3 + 129), 4u, &v481, 4u, &v482);
                                      v314 = AudioUnitGetParameter(*(v3 + 404), 2u, 0, 0, &v472);
                                      if ((*(v3 + 4696) & 2) == 0 || (*(v3 + 4712) & 2) == 0 || !*(v3 + 414))
                                      {
LABEL_589:
                                        if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                                        {
                                          v314 = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x27u, *(v3 + 129), *(v3 + 431), &v486);
                                        }

                                        v329 = 1;
LABEL_594:
                                        v330 = *(v3 + 586);
                                        if ((v330 & 0x200000000000000) != 0 && (*(v3 + 4711) & 2) != 0)
                                        {
                                          v314 = *(v3 + 406);
                                          if (v314)
                                          {
                                            v481.mSampleTime = *(v3 + 430);
                                            *&v482.mNumberBuffers = 0;
                                            v331 = *&a2->mSMPTETime.mHours;
                                            *&v486.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                                            *&v486.mSMPTETime.mHours = v331;
                                            v332 = *&a2->mRateScalar;
                                            *&v486.mSampleTime = *&a2->mSampleTime;
                                            *&v486.mRateScalar = v332;
                                            v471 = 512;
                                            v333 = *(v3 + 506);
                                            v334 = *(v333 + 16);
                                            v335 = *(v333 + 12);
                                            v314 = AudioUnitProcessMultiple(v314, &v471, &v486, *(v3 + 129), 1u, &v481, 1u, &v482);
                                            if (v314 || (v314 = AudioUnitGetProperty(*(v3 + 406), 0x13EDu, 0, 0, *(*(v3 + 506) + 16), (*(v3 + 506) + 12)), v314))
                                            {
                                              if (v335 >= 4)
                                              {
                                                memset_pattern16(v334, &unk_2727568B0, v335 & 0xFFFFFFFC);
                                              }
                                            }

                                            if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                                            {
                                              v314 = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x54u, *(v3 + 129), *(v3 + 506), &v486);
                                            }

                                            v330 = *(v3 + 586);
                                          }
                                        }

                                        if ((v330 & 0x400000000000000) != 0 && (*(v3 + 4711) & 4) != 0)
                                        {
                                          if (*(v3 + 407))
                                          {
                                            v336 = *(v3 + 4344);
                                            if (v336)
                                            {
                                              if (v336 == 1)
                                              {
                                                v337 = 1136;
                                                v338 = 1112;
                                              }

                                              else
                                              {
                                                v337 = 1128;
                                                v338 = 1120;
                                              }

                                              v339 = *(v3 + v337);
                                              v340 = *(v3 + 2158);
                                              v341 = *(*(v3 + v338) + 40);
                                              v342 = *(*(v3 + 2154) + 16) + 4 * *(v3 + 129);
                                              v486.mSampleTime = *(*(v3 + 2154) + 16);
                                              v486.mHostTime = v342;
                                              VPTimeFreqConverter_Analyze(v340, v341, &v486);
                                              v343 = *(v3 + 2159);
                                              v344 = *(v339 + 40);
                                              v345 = *(*(v3 + 2154) + 32) + 4 * *(v3 + 129);
                                              v486.mSampleTime = *(*(v3 + 2154) + 32);
                                              v486.mHostTime = v345;
                                              VPTimeFreqConverter_Analyze(v343, v344, &v486);
                                              v481.mSampleTime = *(v3 + 2154);
                                              *&v482.mNumberBuffers = v481.mSampleTime;
                                              v471 = 512;
                                              v346 = *&a2->mRateScalar;
                                              *&v486.mSampleTime = *&a2->mSampleTime;
                                              *&v486.mRateScalar = v346;
                                              v347 = *&a2->mSMPTETime.mHours;
                                              *&v486.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                                              *&v486.mSMPTETime.mHours = v347;
                                              v348 = AudioUnitProcessMultiple(*(v3 + 407), &v471, &v486, *(v3 + 129), 1u, &v481, 1u, &v482);
                                              if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                                              {
                                                VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x6Fu, *(v3 + 129), *(v3 + 2154), &v486);
                                              }

                                              v349 = *(v3 + 2155);
                                              v352 = *(v349 + 12);
                                              v350 = v349 + 12;
                                              v351 = v352;
                                              v353 = *(v350 + 4);
                                              if ((v348 || AudioUnitGetProperty(*(v3 + 407), 0x15FEu, 0, 0, *(v350 + 4), v350)) && v351 >= 4)
                                              {
                                                memset_pattern16(v353, &unk_2727568B0, v351 & 0xFFFFFFFC);
                                              }

                                              v314 = AudioUnitGetParameter(*(v3 + 407), 0, 0, 0, v3 + 4376);
                                              if (v314)
                                              {
                                                *(v3 + 4376) = 0;
                                              }

                                              if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                                              {
                                                v314 = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x70u, *(v3 + 129), *(v3 + 2155), &v486);
                                              }

                                              v330 = *(v3 + 586);
                                            }
                                          }
                                        }

                                        if ((v330 & 0x80000000000) == 0 || (*(v3 + 588) & 0x80000000000) == 0 || !*(v3 + 392))
                                        {
LABEL_665:
                                          if ((v330 & 0x1000000000000) != 0 && (*(v3 + 4710) & 1) != 0 && *(v3 + 397))
                                          {
                                            LODWORD(v477) = 0;
                                            AudioUnitGetParameter(*(v3 + 371), 0x25u, 0, 0, &v477);
                                            AudioUnitSetParameter(*(v3 + 397), 0, 4u, 2u, *&v477, 0);
                                            AudioUnitSetParameter(*(v3 + 397), 0, 4u, 3u, *&v477, 0);
                                            v374 = memcpy(*(*(v3 + 2199) + 16), *(*(v3 + 430) + 16), *(*(v3 + 430) + 12));
                                            MEMORY[0x28223BE20](v374);
                                            v454 = 0;
                                            *(&v455 - 3) = 0u;
                                            *(&v455 - 2) = 0u;
                                            *(&v455 - 5) = 0u;
                                            *(&v455 - 4) = 0u;
                                            *(&v455 - 20) = 4;
                                            *(&v455 - 9) = *(*(v3 + 430) + 8);
                                            *(&v455 - 7) = *(*(v3 + 2179) + 8);
                                            *(&v455 - 5) = *(*(v3 + 510) + 8);
                                            *(&v455 - 3) = *(*(v3 + 509) + 8);
                                            *&v376 = MEMORY[0x28223BE20](v375);
                                            v454 = 0;
                                            *(&v455 - 3) = v376;
                                            *(&v455 - 2) = v376;
                                            *(&v455 - 5) = v376;
                                            *(&v455 - 4) = v376;
                                            *(&v455 - 20) = 4;
                                            *(&v455 - 9) = *(*(v3 + 2195) + 8);
                                            *(&v455 - 7) = *(*(v3 + 2197) + 8);
                                            *(&v455 - 5) = *(*(v3 + 2198) + 8);
                                            *(&v455 - 3) = *(*(v3 + 2196) + 8);
                                            *&v481.mSampleTime = &v455 - 10;
                                            v481.mHostTime = (&v455 - 10);
                                            *&v482.mNumberBuffers = &v455 - 10;
                                            *&v482.mBuffers[0].mNumberChannels = &v455 - 10;
                                            v377 = *&a2->mRateScalar;
                                            *&v486.mSampleTime = *&a2->mSampleTime;
                                            *&v486.mRateScalar = v377;
                                            v378 = *&a2->mSMPTETime.mHours;
                                            *&v486.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                                            *&v486.mSMPTETime.mHours = v378;
                                            v471 = 512;
                                            AudioUnitProcessMultiple(*(v3 + 397), &v471, &v486, *(v3 + 129), 2u, &v481, 2u, &v482);
                                            if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                                            {
                                              VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x86u, *(v3 + 129), (&v455 - 10), &v486);
                                            }

                                            v330 = *(v3 + 586);
                                          }

                                          if ((v330 & 0x4000000000000) != 0)
                                          {
                                            v379 = *(v3 + 588);
                                            if ((v379 & 0x4000000000000) != 0)
                                            {
                                              v380 = *(v3 + 399);
                                              if (v380)
                                              {
                                                if ((v330 & v379 & 0x1000000000000) != 0 && *(v3 + 397))
                                                {
                                                  MEMORY[0x28223BE20](v380);
                                                  v454 = 0;
                                                  *(&v455 - 3) = 0u;
                                                  *(&v455 - 2) = 0u;
                                                  *(&v455 - 12) = 2;
                                                  *(&v455 - 5) = *(*(v3 + 430) + 8);
                                                  *(&v455 - 3) = *(*(v3 + 2179) + 8);
                                                  *&v481.mSampleTime = &v455 - 6;
                                                  *&v482.mNumberBuffers = *(v3 + 433);
                                                  v381 = *&a2->mRateScalar;
                                                  *&v486.mSampleTime = *&a2->mSampleTime;
                                                  *&v486.mRateScalar = v381;
                                                  v382 = *&a2->mSMPTETime.mHours;
                                                  *&v486.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                                                  *&v486.mSMPTETime.mHours = v382;
                                                  v471 = 512;
                                                  AudioUnitProcessMultiple(v383, &v471, &v486, *(v3 + 129), 1u, &v481, 1u, &v482);
                                                  if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                                                  {
                                                    VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x87u, *(v3 + 129), *(v3 + 433), &v486);
                                                  }

                                                  v330 = *(v3 + 586);
                                                }
                                              }
                                            }
                                          }

                                          LODWORD(v477) = 0;
                                          LODWORD(v475) = 0;
                                          if ((v330 & 0x400000) != 0 && (*(v3 + 4706) & 0x40) != 0 && (v384 = *(v3 + 371)) != 0)
                                          {
                                            AudioUnitGetParameter(v384, 0x43u, 0, 0, &v477);
                                            AudioUnitGetParameter(*(v3 + 371), 0x47u, 0, 0, &v475);
                                            v330 = *(v3 + 586);
                                            v385 = *&v475 == 0.0 || *&v477 == 0.0;
                                          }

                                          else
                                          {
                                            v385 = 1;
                                          }

                                          if ((v330 & 0x100000000000) == 0 || (v386 = *(v3 + 588), (v386 & 0x100000000000) == 0) || (v387 = *(v3 + 393)) == 0 || (v330 & v386 & 0x1000000000000) == 0 || !*(v3 + 397))
                                          {
LABEL_703:
                                            if ((v330 & 0x200000000000) == 0)
                                            {
                                              goto LABEL_718;
                                            }

                                            v397 = *(v3 + 588);
                                            if ((v397 & 0x200000000000) == 0)
                                            {
                                              goto LABEL_718;
                                            }

                                            v398 = *(v3 + 394);
                                            if (!v398 || (v330 & v397 & 0x1000000000000) != 0 && *(v3 + 397))
                                            {
                                              goto LABEL_718;
                                            }

                                            MEMORY[0x28223BE20](v398);
                                            *(&v455 - 4) = 0;
                                            *(&v455 - 3) = 0;
                                            *(&v455 - 8) = 1;
                                            MEMORY[0x28223BE20](v399);
                                            *(&v455 - 3) = 0;
                                            v454 = 0;
                                            *(&v455 - 4) = 0;
                                            *(&v455 - 8) = v400;
                                            *(v401 - 24) = *(*(v3 + 2179) + 8);
                                            *(&v455 - 3) = *(*(v3 + 508) + 40);
                                            AudioUnitSetParameter(v402, 6u, 0, 0, *(v3 + 1062), 0);
                                            AudioUnitSetParameter(*(v3 + 394), 7u, 0, 0, *(v3 + 1066), 0);
                                            AudioUnitSetParameter(*(v3 + 394), 0xDu, 0, 0, *(v3 + 1070), 0);
                                            *&v481.mSampleTime = &v455 - 4;
                                            v481.mHostTime = (&v455 - 4);
                                            v403 = *(v3 + 505);
                                            v481.mRateScalar = *(v3 + 515);
                                            v481.mWordClockTime = v403;
                                            *&v481.mSMPTETime.mSubframes = v317;
                                            *&v481.mSMPTETime.mType = 0;
                                            *&v482.mNumberBuffers = *(v3 + 433);
                                            *&v482.mBuffers[0].mNumberChannels = 0;
                                            v482.mBuffers[0].mData = *(v3 + 2191);
                                            v404 = *&a2->mRateScalar;
                                            *&v486.mSampleTime = *&a2->mSampleTime;
                                            *&v486.mRateScalar = v404;
                                            v405 = *&a2->mSMPTETime.mHours;
                                            *&v486.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                                            *&v486.mSMPTETime.mHours = v405;
                                            v471 = 512;
                                            AudioUnitProcessMultiple(*(v3 + 394), &v471, &v486, *(v3 + 129), 6u, &v481, 3u, &v482);
                                            v406 = *(v3 + 129);
                                            if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
                                            {
                                              VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x26u, v406, *(v3 + 433), &v486);
                                              v406 = *(v3 + 129);
                                              v407 = *(v3 + 2191);
                                              if (*(v3 + 15881))
                                              {
                                                goto LABEL_714;
                                              }
                                            }

                                            else
                                            {
                                              v407 = *(v3 + 2191);
                                            }

                                            if (*(v3 + 15882) != 1)
                                            {
LABEL_715:
                                              if (*&inInputBufferLists != 0.0)
                                              {
                                                vDSP_vmin(*(*(v3 + 503) + 16), 1, *(*(v3 + 2191) + 16), 1, *(*(v3 + 503) + 16), 1, *(v3 + 129));
                                              }

                                              v330 = *(v3 + 586);
LABEL_718:
                                              if ((v330 & 0x80000000000) != 0 && (*(v3 + 4709) & 8) != 0 && *(v3 + 392))
                                              {
                                                if (!v460)
                                                {
LABEL_739:
                                                  if ((*(v3 + 4709) & 8) != 0)
                                                  {
                                                    if (*(v3 + 392) != 0 || v313)
                                                    {
LABEL_754:
                                                      if (((v462 & 1) != 0 || (*(v3 + 4693) & 8) != 0 && (*(v3 + 4709) & 8) != 0 && *(v3 + 392)) && ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1))
                                                      {
                                                        VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x62u, *(v3 + 129), *(v3 + 431), a2);
                                                      }

                                                      if ((*(v3 + 4695) & 0x10) != 0 && (*(v3 + 4711) & 0x10) != 0)
                                                      {
                                                        v414 = *(v3 + 409);
                                                        if (v414)
                                                        {
                                                          AudioUnitSetParameter(v414, 0, 0, 0, *(v3 + 3153), 0);
                                                          AudioUnitSetParameter(*(v3 + 409), 4u, 0, 0, *(v3 + 1054), 0);
                                                          AudioUnitSetParameter(*(v3 + 409), 0x13u, 0, 0, *(v3 + 1058), 0);
                                                          AudioUnitSetParameter(*(v3 + 409), 3u, 0, 0, v472, 0);
                                                          LODWORD(v473) = 0;
                                                          AudioUnitGetParameter(*(v3 + 409), 0x1Cu, 0, 0, &v473);
                                                          if (*&v473 == 1.0)
                                                          {
                                                            v415 = v3 + 2792;
                                                            LODWORD(v486.mSampleTime) = -1082130432;
                                                            AudioUnitGetParameter(*(v3 + 409), 0x1Du, 0, 0, &v486);
                                                            v416 = *&v486.mSampleTime != 2.0 || *&v486.mSampleTime == 1.0;
                                                            v417 = v416 ? 22 : 23;
                                                            v418 = *&v415[8 * v417];
                                                            if (v418)
                                                            {
                                                              LODWORD(v481.mSampleTime) = 0;
                                                              if (!AudioUnitGetPropertyInfo(v418, 0xED8u, 0, 0, &v481, 0))
                                                              {
                                                                v419 = *(v3 + 2192);
                                                                if (*(v3 + 2193) - v419 >= LODWORD(v481.mSampleTime))
                                                                {
                                                                  AudioUnitGetProperty(*&v415[8 * v417], 0xED8u, 0, 0, v419, &v481);
                                                                }
                                                              }

                                                              v482.mNumberBuffers = 0;
                                                              AudioUnitGetParameter(*&v415[8 * v417], 1u, 0, 0, &v482.mNumberBuffers);
                                                              AudioUnitSetProperty(*(v3 + 409), 0x846u, 0, 0, *(v3 + 2192), vcvts_n_u32_f32(*&v482.mNumberBuffers, 2uLL));
                                                            }
                                                          }

                                                          AudioUnitSetParameter(*(v3 + 409), 0xEu, 0, 0, *(v3 + 580), 0);
                                                          v420 = *(v3 + 514);
                                                          v481.mSampleTime = *(v3 + 420);
                                                          v481.mHostTime = v420;
                                                          v421 = *(v3 + 513);
                                                          v481.mRateScalar = *(v3 + 431);
                                                          v481.mWordClockTime = v421;
                                                          *&v481.mSMPTETime.mSubframes = *(v3 + 503);
                                                          *&v481.mSMPTETime.mType = *(v3 + 505);
                                                          *&v482.mNumberBuffers = *(v3 + 137);
                                                          v471 = 512;
                                                          v422 = *&a2->mRateScalar;
                                                          *&v486.mSampleTime = *&a2->mSampleTime;
                                                          *&v486.mRateScalar = v422;
                                                          v423 = *&a2->mSMPTETime.mHours;
                                                          *&v486.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                                                          *&v486.mSMPTETime.mHours = v423;
                                                          AudioUnitProcessMultiple(*(v3 + 409), &v471, &v486, *(v3 + 129), 6u, &v481, 1u, &v482);
                                                          v463 = 0.0;
                                                          AudioUnitGetParameter(*(v3 + 409), 1u, 0, 0, &v463);
                                                          *(v3 + 3154) = v463;
                                                          if ((*(v3 + 4696) & 2) != 0 && (*(v3 + 4712) & 2) != 0 && *(v3 + 414))
                                                          {
                                                            AudioUnitGetParameter(*(v3 + 409), 2u, 0, 0, &v472);
                                                            AudioUnitSetParameter(*(v3 + 414), 0x23u, 0, 0, v472, 0);
                                                          }
                                                        }
                                                      }

                                                      goto LABEL_780;
                                                    }

LABEL_743:
                                                    LODWORD(v486.mSampleTime) = 1065353216;
                                                    v411 = *(v3 + 129);
                                                    vDSP_vfill(&v486, *(*(v3 + 505) + 16), 1, v411);
                                                    memcpy(*(*(v3 + 431) + 16), *(*(v3 + 430) + 16), 8 * v411);
                                                    goto LABEL_754;
                                                  }

LABEL_740:
                                                  if (v313)
                                                  {
                                                    goto LABEL_754;
                                                  }

                                                  goto LABEL_743;
                                                }
                                              }

                                              else if ((v330 & 0x100000000000) == 0 || (*(v3 + 4709) & 0x10) == 0 || ((*(v3 + 393) != 0) & v460) == 0)
                                              {
                                                if ((v330 & 0x80000000000) == 0)
                                                {
                                                  goto LABEL_740;
                                                }

                                                goto LABEL_739;
                                              }

                                              v408 = *(*(v3 + 505) + 16);
                                              vDSP_vmin(*(*(v3 + 503) + 16), 1, v408, 1, v408, 1, *(v3 + 129));
                                              v409 = *(v3 + 586);
                                              if ((v409 & 0x200000000000000) != 0 && (*(v3 + 4711) & 2) != 0 && *(v3 + 406))
                                              {
                                                vDSP_vmin(*(*(v3 + 506) + 16), 1, v408, 1, v408, 1, *(v3 + 129));
                                                v409 = *(v3 + 586);
                                              }

                                              if ((v409 & 0x400000000000000) != 0 && (*(v3 + 4711) & 4) != 0 && *(v3 + 407))
                                              {
                                                vDSP_vmin(*(*(v3 + 2155) + 16), 1, v408, 1, v408, 1, *(v3 + 129));
                                                v409 = *(v3 + 586);
                                              }

                                              if ((v409 & 0x1000) != 0 && (*(v3 + 4705) & 0x10) != 0 && *(v3 + 361))
                                              {
                                                v410 = 17480;
                                              }

                                              else if ((v409 & 0x800000000000) != 0 && (*(v3 + 4709) & 0x80) != 0 && *(v3 + 396))
                                              {
                                                v410 = 17456;
                                              }

                                              else if (v409 & 0x1000000000000) != 0 && (*(v3 + 4710))
                                              {
                                                v410 = 3440;
                                                if (*(v3 + 397) != 0 && v385)
                                                {
                                                  v410 = 17592;
                                                }
                                              }

                                              else
                                              {
                                                v410 = 3440;
                                              }

                                              v412 = *(*(v3 + v410) + 16);
                                              v413 = *(*(v3 + 431) + 16);
                                              MEMORY[0x2743CCDD0](v412, 1, v408, 1, v413, 1, *(v3 + 129));
                                              MEMORY[0x2743CCDD0](v412 + 4 * *(v3 + 129) + 4, 1, v408 + 1, 1, v413 + 4 * *(v3 + 129) + 4, 1, (*(v3 + 129) - 1));
                                              *(v412 + 4 * *(v3 + 129)) = *(v412 + 4 * *(v3 + 129)) * v408[*(v3 + 129) - 1];
                                              goto LABEL_754;
                                            }

LABEL_714:
                                            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x53u, v406, v407, &v486);
                                            goto LABEL_715;
                                          }

                                          MEMORY[0x28223BE20](v387);
                                          *(&v455 - 4) = 0;
                                          *(&v455 - 3) = 0;
                                          *(&v455 - 8) = 1;
                                          MEMORY[0x28223BE20](v388);
                                          *(&v455 - 3) = 0;
                                          v454 = 0;
                                          *(&v455 - 4) = 0;
                                          *(&v455 - 8) = v389;
                                          *(v390 - 24) = *(*(v3 + 430) + 8);
                                          *(&v455 - 3) = *(*(v3 + 433) + 8);
                                          AudioUnitSetParameter(v391, 6u, 0, 0, *(v3 + 1062), 0);
                                          AudioUnitSetParameter(*(v3 + 393), 7u, 0, 0, *(v3 + 1066), 0);
                                          AudioUnitSetParameter(*(v3 + 393), 0xDu, 0, 0, *(v3 + 1070), 0);
                                          *&v481.mSampleTime = &v455 - 4;
                                          v481.mHostTime = (&v455 - 4);
                                          v392 = *(v3 + 505);
                                          *&v481.mRateScalar = &v455 - 4;
                                          v481.mWordClockTime = v392;
                                          *&v481.mSMPTETime.mSubframes = v317;
                                          *&v481.mSMPTETime.mType = 0;
                                          *&v482.mNumberBuffers = *(v3 + 433);
                                          *&v482.mBuffers[0].mNumberChannels = 0;
                                          v482.mBuffers[0].mData = *(v3 + 504);
                                          v393 = *&a2->mRateScalar;
                                          *&v486.mSampleTime = *&a2->mSampleTime;
                                          *&v486.mRateScalar = v393;
                                          v394 = *&a2->mSMPTETime.mHours;
                                          *&v486.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                                          *&v486.mSMPTETime.mHours = v394;
                                          v471 = 512;
                                          AudioUnitProcessMultiple(*(v3 + 393), &v471, &v486, *(v3 + 129), 6u, &v481, 3u, &v482);
                                          v395 = *(v3 + 129);
                                          if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
                                          {
                                            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x25u, v395, *(v3 + 433), &v486);
                                            v395 = *(v3 + 129);
                                            v396 = *(v3 + 504);
                                            if (*(v3 + 15881))
                                            {
                                              goto LABEL_699;
                                            }
                                          }

                                          else
                                          {
                                            v396 = *(v3 + 504);
                                          }

                                          if (*(v3 + 15882) != 1)
                                          {
LABEL_700:
                                            if (!v385)
                                            {
                                              vDSP_vmin(*(*(v3 + 503) + 16), 1, *(*(v3 + 504) + 16), 1, *(*(v3 + 503) + 16), 1, *(v3 + 129));
                                            }

                                            v330 = *(v3 + 586);
                                            goto LABEL_703;
                                          }

LABEL_699:
                                          VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x52u, v395, v396, &v486);
                                          goto LABEL_700;
                                        }

                                        MEMORY[0x28223BE20](v314);
                                        *(&v455 - 4) = 0;
                                        *(&v455 - 3) = 0;
                                        *(&v455 - 8) = 1;
                                        MEMORY[0x28223BE20](v354);
                                        *(&v455 - 4) = 0;
                                        *(&v455 - 3) = 0;
                                        v454 = 0;
                                        *(&v455 - 8) = v357;
                                        if ((v355 & v356 & 0x800000000000) != 0)
                                        {
                                          v358 = &v455 - 3;
                                          v359 = &v455 - 3;
                                          if (*(v3 + 396))
                                          {
                                            v360 = *(v3 + 2182);
                                            *v358 = *(v360 + 8);
                                            v361 = (v360 + 40);
LABEL_633:
                                            *v359 = *v361;
                                            AudioUnitSetParameter(*(v3 + 392), 6u, 0, 0, *(v3 + 1062), 0);
                                            AudioUnitSetParameter(*(v3 + 392), 7u, 0, 0, *(v3 + 1066), 0);
                                            AudioUnitSetParameter(*(v3 + 392), 0xDu, 0, 0, *(v3 + 1070), 0);
                                            *&v481.mSampleTime = &v455 - 4;
                                            v481.mHostTime = (&v455 - 4);
                                            v362 = *(v3 + 505);
                                            v481.mRateScalar = *(v3 + 515);
                                            v481.mWordClockTime = v362;
                                            *&v481.mSMPTETime.mSubframes = v317;
                                            *&v481.mSMPTETime.mType = 0;
                                            v363 = *(v3 + 586);
                                            if ((v363 & 0x1000000000000) != 0 && (*(v3 + 4710) & 1) != 0 && *(v3 + 397))
                                            {
                                              *&v481.mSMPTETime.mType = *(v3 + 511);
                                            }

                                            if ((v460 & 1) == 0)
                                            {
                                              v481.mWordClockTime = 0;
                                            }

                                            v364 = *(v3 + 513);
                                            *&v482.mNumberBuffers = 0;
                                            *&v482.mBuffers[0].mNumberChannels = v364;
                                            v482.mBuffers[0].mData = 0;
                                            if ((v363 & 0x4000000) != 0 && (v365 = *(v3 + 588), (v365 & 0x4000000) != 0) && (v366 = *(v3 + 375)) != 0 && (v363 & v365 & 0x400000) != 0 && *(v3 + 371))
                                            {
                                              LODWORD(v486.mSampleTime) = 0;
                                              *&v481.mSMPTETime.mType = *(v3 + 511);
                                              AudioUnitGetParameter(v366, 0x2Du, 0, 0, &v486);
                                              AudioUnitSetParameter(*(v3 + 392), 0x2Au, 0, 0, *&v486.mSampleTime, 0);
                                              AudioUnitGetParameter(*(v3 + 371), 0x2Du, 0, 0, &v486);
                                              AudioUnitSetParameter(*(v3 + 392), 0x29u, 0, 0, *&v486.mSampleTime, 0);
                                            }

                                            else if ((v363 & 0x1000000) != 0 && (*(v3 + 4707) & 1) != 0 && *(v3 + 373) && v465 == 1.0)
                                            {
                                              *&v481.mSMPTETime.mType = *(v3 + 2143);
                                            }

                                            v367 = v460;
                                            if (v460)
                                            {
                                              v368 = 3464;
                                            }

                                            else
                                            {
                                              v368 = 3448;
                                            }

                                            v369 = 4040;
                                            *&v482.mNumberBuffers = *(v3 + v368);
                                            if (v460)
                                            {
                                              v369 = 4024;
                                            }

                                            v482.mBuffers[0].mData = *(v3 + v369);
                                            v370 = *&a2->mRateScalar;
                                            *&v486.mSampleTime = *&a2->mSampleTime;
                                            *&v486.mRateScalar = v370;
                                            v371 = *&a2->mSMPTETime.mHours;
                                            *&v486.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                                            *&v486.mSMPTETime.mHours = v371;
                                            v471 = 512;
                                            AudioUnitProcessMultiple(*(v3 + 392), &v471, &v486, *(v3 + 129), 6u, &v481, 3u, &v482);
                                            if ((v329 & v367 & 1) == 0)
                                            {
                                              AudioUnitGetParameter(*(v3 + 392), 0x20u, 0, 0, &v472);
                                            }

                                            v372 = *(v3 + 129);
                                            if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
                                            {
                                              VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x24u, v372, *(v3 + v368), &v486);
                                              v372 = *(v3 + 129);
                                              v373 = *(v3 + 503);
                                              if (*(v3 + 15881))
                                              {
                                                goto LABEL_663;
                                              }
                                            }

                                            else
                                            {
                                              v373 = *(v3 + 503);
                                            }

                                            if (*(v3 + 15882) != 1)
                                            {
LABEL_664:
                                              v330 = *(v3 + 586);
                                              goto LABEL_665;
                                            }

LABEL_663:
                                            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x51u, v372, v373, &v486);
                                            goto LABEL_664;
                                          }
                                        }

                                        else
                                        {
                                          v358 = &v455 - 3;
                                          v359 = &v455 - 3;
                                        }

                                        *v358 = *(*(v3 + 430) + 8);
                                        v361 = (*(v3 + 434) + 8);
                                        goto LABEL_633;
                                      }

                                      v322 = *(v3 + 404);
                                      v323 = 9;
                                    }

                                    AudioUnitGetParameter(v322, v323, 0, 0, &v479);
                                    v314 = AudioUnitSetParameter(*(v3 + 414), 0x12u, 0, 0, *&v479, 0);
                                    goto LABEL_589;
                                  }

LABEL_573:
                                  LODWORD(v462) = 0;
                                  goto LABEL_574;
                                }

                                LODWORD(v485.realp) = 1092616192;
                                if ((v271 & v272 & 0x80000000000000) != 0)
                                {
                                  v270 = *(v3 + 404);
                                  if (v270)
                                  {
                                    v270 = AudioUnitGetParameter(v270, 9u, 0, 0, &v485);
                                    v271 = *(v3 + 586);
                                  }
                                }

                                if ((v271 & 0x100000000) != 0 && (*(v3 + 4708) & 1) != 0 && *(v3 + 381))
                                {
                                  LODWORD(v486.mSampleTime) = 0;
                                  LODWORD(v481.mSampleTime) = 0;
                                  v482.mNumberBuffers = 0;
                                  AudioUnitGetParameter(*(v3 + 382), 0x18u, 0, 0, &v486);
                                  AudioUnitGetParameter(*(v3 + 382), 0x19u, 0, 0, &v481);
                                  AudioUnitGetParameter(*(v3 + 382), 5u, 0, 0, &v482.mNumberBuffers);
                                  AudioUnitSetParameter(*(v3 + 395), 3u, 0, 0, *&v486.mSampleTime, 0);
                                  AudioUnitSetParameter(*(v3 + 395), 4u, 0, 0, *&v481.mSampleTime, 0);
                                  AudioUnitSetParameter(*(v3 + 395), 5u, 0, 0, *&v482.mNumberBuffers, 0);
                                  v270 = AudioUnitSetParameter(*(v3 + 395), 6u, 0, 0, *&v485.realp, 0);
                                }

                                MEMORY[0x28223BE20](v270);
                                v454 = 0;
                                *(&v455 - 3) = 0u;
                                *(&v455 - 2) = 0u;
                                *(&v455 - 12) = 2;
                                v273 = *(v3 + 430);
                                *(&v455 - 4) = *(v273 + 16);
                                *(&v455 - 5) = *(v273 + 8);
                                v274 = *(v3 + 433);
                                v454 = *(v274 + 16);
                                *(&v455 - 3) = *(v274 + 8);
                                *&v276 = MEMORY[0x28223BE20](v275);
                                *(&v455 - 3) = v276;
                                *(&v455 - 2) = v276;
                                *(&v455 - 12) = v277;
                                MEMORY[0x28223BE20](v278);
                                *(&v455 - 3) = 0;
                                v454 = 0;
                                *(&v455 - 4) = 0;
                                *(&v455 - 8) = 1;
                                v279 = *(v3 + 434);
                                *(v280 - 32) = *(v279 + 16);
                                *(v280 - 40) = *(v279 + 8);
                                v281 = *(v3 + 508);
                                *(v280 - 16) = *(v281 + 32);
                                *(v280 - 24) = *(v281 + 24);
                                v454 = *(v279 + 16);
                                *(&v455 - 3) = *(v279 + 8);
                                v481.mSampleTime = v282;
                                v481.mHostTime = v283;
                                *&v482.mNumberBuffers = v282;
                                *&v482.mBuffers[0].mNumberChannels = &v455 - 4;
                                v284 = *&a2->mRateScalar;
                                *&v486.mSampleTime = *&a2->mSampleTime;
                                *&v486.mRateScalar = v284;
                                v285 = *&a2->mSMPTETime.mHours;
                                *&v486.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                                *&v486.mSMPTETime.mHours = v285;
                                v471 = 512;
                                AudioUnitProcessMultiple(*(v3 + 395), &v471, &v486, *(v3 + 129), 2u, &v481, 2u, &v482);
                                v286 = *(v3 + 129);
                                if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
                                {
                                  VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x83u, v286, *(v3 + 430), &v486);
                                  v286 = *(v3 + 129);
                                  v287 = *(v3 + 433);
                                  if (*(v3 + 15881))
                                  {
                                    goto LABEL_527;
                                  }
                                }

                                else
                                {
                                  v287 = *(v3 + 433);
                                }

                                if (*(v3 + 15882) != 1)
                                {
LABEL_528:
                                  v271 = *(v3 + 586);
                                  goto LABEL_529;
                                }

LABEL_527:
                                VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x84u, v286, v287, &v486);
                                goto LABEL_528;
                              }

                              v456 = v235;
                              v457 = v203;
                              v458 = v202;
                              v459 = v199;
                              v460 = v200;
                              v251 = 0;
                              v485.realp = *(v3 + 527);
                              LODWORD(v485.imagp) = *(v3 + 1057);
                              v479 = *(v3 + 529);
                              v480 = *(v3 + 1061);
                              v477 = *(v3 + 531);
                              v478 = *(v3 + 1065);
                              v475 = *(v3 + 533);
                              v476 = *(v3 + 1069);
                              v473 = *(v3 + 535);
                              v474 = *(v3 + 1073);
                              do
                              {
                                AudioUnitSetParameter(*(v3 + 386), 0x64u, 4u, v251, *(&v485.realp + v251), 0);
                                AudioUnitSetParameter(*(v3 + 386), 0x65u, 4u, v251, *(&v479 + v251), 0);
                                AudioUnitSetParameter(*(v3 + 386), 0x66u, 4u, v251, *(&v477 + v251), 0);
                                AudioUnitSetParameter(*(v3 + 386), 0x67u, 4u, v251, *(&v475 + v251), 0);
                                AudioUnitSetParameter(*(v3 + 386), 0x68u, 4u, v251, *(&v473 + v251), 0);
                                ++v251;
                              }

                              while (v251 != 3);
                              *&v482.mNumberBuffers = 1;
                              *&v482.mBuffers[0].mNumberChannels = 0;
                              v482.mBuffers[0].mData = 0;
                              v482.mBuffers[0] = *(*(v3 + 508) + 8);
                              inInputBufferLists = v456;
                              v488 = v462;
                              v481.mSampleTime = *(v3 + 430);
                              v481.mHostTime = &v482;
                              v481.mRateScalar = 0.0;
                              v481.mWordClockTime = 0;
                              v471 = 512;
                              v252 = *&a2->mRateScalar;
                              *&v486.mSampleTime = *&a2->mSampleTime;
                              *&v486.mRateScalar = v252;
                              v253 = *&a2->mSMPTETime.mHours;
                              *&v486.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                              *&v486.mSMPTETime.mHours = v253;
                              AudioUnitProcessMultiple(*(v3 + 386), &v471, &v486, *(v3 + 129), 2u, &inInputBufferLists, 4u, &v481);
                              v463 = 0.0;
                              AudioUnitGetParameter(*(v3 + 386), 0xAu, 0, 0, &v463);
                              v254 = *(v3 + 129);
                              if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                              {
                                VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x66u, v254, *(v3 + 430), &v486);
                                v254 = *(v3 + 129);
                                v199 = v459;
                                v200 = v460;
                                v203 = v457;
                                v202 = v458;
                                if (*(v3 + 15881))
                                {
                                  goto LABEL_484;
                                }
                              }

                              else
                              {
                                v199 = v459;
                                v200 = v460;
                                v203 = v457;
                                v202 = v458;
                              }

                              if (*(v3 + 15882) != 1)
                              {
LABEL_485:
                                AudioUnitGetParameter(*(v3 + 386), 0x64u, 4u, 0, v3 + 1054);
                                AudioUnitGetParameter(*(v3 + 386), 0x65u, 4u, 0, v3 + 1058);
                                AudioUnitGetParameter(*(v3 + 386), 0x66u, 4u, 0, v3 + 1062);
                                AudioUnitGetParameter(*(v3 + 386), 0x67u, 4u, 0, v3 + 1066);
                                AudioUnitGetParameter(*(v3 + 386), 0x68u, 4u, 0, v3 + 1070);
                                goto LABEL_486;
                              }

LABEL_484:
                              VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x67u, v254, &v482, &v486);
                              goto LABEL_485;
                            }

                            v456 = v235;
                            v457 = v203;
                            v458 = v202;
                            v459 = v199;
                            v460 = v200;
                            v247 = 0;
                            inInputBufferLists = *(v3 + 527);
                            LODWORD(v488) = *(v3 + 1057);
                            v485.realp = *(v3 + 529);
                            LODWORD(v485.imagp) = *(v3 + 1061);
                            v479 = *(v3 + 531);
                            v480 = *(v3 + 1065);
                            v477 = *(v3 + 533);
                            v478 = *(v3 + 1069);
                            v475 = *(v3 + 535);
                            v476 = *(v3 + 1073);
                            do
                            {
                              AudioUnitSetParameter(*(v3 + 384), 0x12u, 4u, v247, *(&inInputBufferLists + v247), 0);
                              AudioUnitSetParameter(*(v3 + 384), 0x13u, 4u, v247, *(&v485.realp + v247), 0);
                              AudioUnitSetParameter(*(v3 + 384), 0x14u, 4u, v247, *(&v479 + v247), 0);
                              AudioUnitSetParameter(*(v3 + 384), 0x15u, 4u, v247, *(&v477 + v247), 0);
                              AudioUnitSetParameter(*(v3 + 384), 0x16u, 4u, v247, *(&v475 + v247), 0);
                              ++v247;
                            }

                            while (v247 != 3);
                            v235 = v456;
                            *&v481.mSampleTime = v456;
                            v481.mHostTime = v462;
                            *&v482.mNumberBuffers = v456;
                            *&v482.mBuffers[0].mNumberChannels = v462;
                            v471 = 512;
                            v248 = *&a2->mRateScalar;
                            *&v486.mSampleTime = *&a2->mSampleTime;
                            *&v486.mRateScalar = v248;
                            v249 = *&a2->mSMPTETime.mHours;
                            *&v486.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                            *&v486.mSMPTETime.mHours = v249;
                            AudioUnitProcessMultiple(*(v3 + 384), &v471, &v486, *(v3 + 129), 2u, &v481, 2u, &v482);
                            v250 = *(v3 + 129);
                            if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                            {
                              VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x6Du, v250, v235, &v486);
                              v250 = *(v3 + 129);
                              v199 = v459;
                              v200 = v460;
                              v203 = v457;
                              v202 = v458;
                              if (*(v3 + 15881))
                              {
                                goto LABEL_471;
                              }
                            }

                            else
                            {
                              v199 = v459;
                              v200 = v460;
                              v203 = v457;
                              v202 = v458;
                            }

                            if (*(v3 + 15882) != 1)
                            {
LABEL_472:
                              v240 = *(v3 + 586);
                              goto LABEL_473;
                            }

LABEL_471:
                            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x6Eu, v250, v462, &v486);
                            goto LABEL_472;
                          }

                          v456 = (&v455 - 8);
                          v457 = v203;
                          v458 = v202;
                          v459 = v199;
                          v460 = v200;
                          v243 = 0;
                          inInputBufferLists = *(v3 + 527);
                          LODWORD(v488) = *(v3 + 1057);
                          v485.realp = *(v3 + 529);
                          LODWORD(v485.imagp) = *(v3 + 1061);
                          v479 = *(v3 + 531);
                          v480 = *(v3 + 1065);
                          v477 = *(v3 + 533);
                          v478 = *(v3 + 1069);
                          v475 = *(v3 + 535);
                          v476 = *(v3 + 1073);
                          do
                          {
                            AudioUnitSetParameter(*(v3 + 383), 9u, 4u, v243, *(&inInputBufferLists + v243), 0);
                            AudioUnitSetParameter(*(v3 + 383), 0xAu, 4u, v243, *(&v485.realp + v243), 0);
                            AudioUnitSetParameter(*(v3 + 383), 0xBu, 4u, v243, *(&v479 + v243), 0);
                            AudioUnitSetParameter(*(v3 + 383), 0xCu, 4u, v243, *(&v477 + v243), 0);
                            AudioUnitSetParameter(*(v3 + 383), 0xDu, 4u, v243, *(&v475 + v243), 0);
                            ++v243;
                          }

                          while (v243 != 3);
                          v235 = v456;
                          *&v481.mSampleTime = v456;
                          v481.mHostTime = v462;
                          *&v482.mNumberBuffers = v456;
                          *&v482.mBuffers[0].mNumberChannels = v462;
                          v471 = 512;
                          v244 = *&a2->mRateScalar;
                          *&v486.mSampleTime = *&a2->mSampleTime;
                          *&v486.mRateScalar = v244;
                          v245 = *&a2->mSMPTETime.mHours;
                          *&v486.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                          *&v486.mSMPTETime.mHours = v245;
                          AudioUnitProcessMultiple(*(v3 + 383), &v471, &v486, *(v3 + 129), 2u, &v481, 2u, &v482);
                          v246 = *(v3 + 129);
                          if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
                          {
                            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x6Bu, v246, v235, &v486);
                            v246 = *(v3 + 129);
                            v199 = v459;
                            v200 = v460;
                            v203 = v457;
                            v202 = v458;
                            if (*(v3 + 15881))
                            {
                              goto LABEL_458;
                            }
                          }

                          else
                          {
                            v199 = v459;
                            v200 = v460;
                            v203 = v457;
                            v202 = v458;
                          }

                          if (*(v3 + 15882) != 1)
                          {
LABEL_459:
                            v240 = *(v3 + 586);
                            goto LABEL_460;
                          }

LABEL_458:
                          VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x6Cu, v246, v462, &v486);
                          goto LABEL_459;
                        }

                        if ((v177 & 0x100000000) == 0 || (*(v3 + 4708) & 1) == 0 || !*(v3 + 381))
                        {
                          goto LABEL_437;
                        }

                        memcpy(*(*(v3 + 436) + 16), *(*(v3 + 430) + 16), 8 * *(v3 + 129));
                        memcpy(*(*(v3 + 436) + 32), *(*(v3 + 510) + 16), 8 * *(v3 + 129));
                        v479 = *(v3 + 436);
                        v223 = *(v3 + 435);
                        inInputBufferLists = *(v3 + 431);
                        v488 = v223;
                        v224 = *&a2->mRateScalar;
                        *&v486.mSampleTime = *&a2->mSampleTime;
                        *&v486.mRateScalar = v224;
                        v225 = *&a2->mSMPTETime.mHours;
                        *&v486.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                        *&v486.mSMPTETime.mHours = v225;
                        Parameter = AudioUnitProcessMultiple(*(v3 + 381), &v471, &v486, *(v3 + 129), 1u, &v479, 2u, &inInputBufferLists);
                        v226 = *(v3 + 129);
                        if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
                        {
                          Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x18u, v226, inInputBufferLists, &v486);
                          v226 = *(v3 + 129);
                          v227 = v488;
                          if (*(v3 + 15881))
                          {
                            goto LABEL_421;
                          }
                        }

                        else
                        {
                          v227 = v488;
                        }

                        if (*(v3 + 15882) != 1)
                        {
LABEL_422:
                          if ((*(v3 + 4692) & 2) == 0 || (*(v3 + 4708) & 2) == 0 || !*(v3 + 382))
                          {
                            goto LABEL_437;
                          }

                          memcpy(*(*(v3 + 437) + 16), *(*(v3 + 430) + 16), 4 * (2 * *(v3 + 129)));
                          memcpy(*(*(v3 + 432) + 16), *(*(v3 + 433) + 16), 4 * (2 * *(v3 + 129)));
                          LODWORD(v477) = 1092616192;
                          v228 = *(v3 + 435);
                          *&v482.mNumberBuffers = *(v3 + 431);
                          *&v482.mBuffers[0].mNumberChannels = v228;
                          v229 = *(v3 + 510);
                          v482.mBuffers[0].mData = *(v3 + 437);
                          v483 = v229;
                          v484 = *(v3 + 432);
                          v230 = *(v3 + 433);
                          v231 = 10.0;
                          v485.realp = *(v3 + 430);
                          v485.imagp = v230;
                          if ((*(v3 + 4694) & 0x80) != 0 && (*(v3 + 4710) & 0x80) != 0)
                          {
                            v232 = *(v3 + 404);
                            if (v232)
                            {
                              AudioUnitGetParameter(v232, 9u, 0, 0, &v477);
                              v231 = *&v477;
                            }
                          }

                          AudioUnitSetParameter(*(v3 + 382), 0xAu, 0, 0, v231, 0);
                          AudioUnitSetParameter(*(v3 + 382), 0x17u, 0, 0, *(v3 + 4189), 0);
                          v233 = *&a2->mRateScalar;
                          *&v481.mSampleTime = *&a2->mSampleTime;
                          *&v481.mRateScalar = v233;
                          v234 = *&a2->mSMPTETime.mHours;
                          *&v481.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                          *&v481.mSMPTETime.mHours = v234;
                          Parameter = AudioUnitProcessMultiple(*(v3 + 382), &v471, &v481, *(v3 + 129), 5u, &v482, 2u, &v485);
                          v218 = *(v3 + 129);
                          if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
                          {
                            Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x1Au, v218, v485.realp, &v481);
                            v218 = *(v3 + 129);
                            imagp = v485.imagp;
                            if (*(v3 + 15881))
                            {
                              goto LABEL_436;
                            }
                          }

                          else
                          {
                            imagp = v485.imagp;
                          }

                          if (*(v3 + 15882) != 1)
                          {
                            goto LABEL_437;
                          }

LABEL_436:
                          v220 = &v481;
                          v221 = v3;
                          v222 = 27;
                          goto LABEL_409;
                        }

LABEL_421:
                        Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x19u, v226, v227, &v486);
                        goto LABEL_422;
                      }
                    }

                    else
                    {
                      v206 = *(v3 + 379);
                    }

                    v207 = 2.0;
                    goto LABEL_390;
                  }

                  v190 = *(v3 + 1063);
                  if (v190 == 0.0)
                  {
                    v191 = *(v3 + 2109);
                    v192 = *(*(v3 + 426) + 16);
                    v193 = *(*(v3 + 437) + 16) + 4 * *(v3 + 129);
                    v486.mSampleTime = *(*(v3 + 437) + 16);
                    v486.mHostTime = v193;
                    VPTimeFreqConverter_Analyze(v191, v192, &v486);
                    v190 = *(v3 + 1063);
                    Parameter = *(v3 + 393);
                  }

                  AudioUnitSetParameter(Parameter, 6u, 0, 0, v190, 0);
                  AudioUnitSetParameter(*(v3 + 393), 7u, 0, 0, *(v3 + 1067), 0);
                  AudioUnitSetParameter(*(v3 + 393), 0xDu, 0, 0, *(v3 + 1071), 0);
                  memcpy(*(*(v3 + 435) + 16), *(*(v3 + 508) + 32), *(v3 + 1079));
                  v194 = *(v3 + 435);
                  v481.mSampleTime = *(v3 + 509);
                  v481.mHostTime = v194;
                  v481.mRateScalar = *(v3 + 515);
                  memset(&v481.mWordClockTime, 0, 24);
                  *&v482.mNumberBuffers = *(v3 + 433);
                  *&v482.mBuffers[0].mNumberChannels = 0;
                  v482.mBuffers[0].mData = *(v3 + 504);
                  v195 = *&a2->mRateScalar;
                  *&v486.mSampleTime = *&a2->mSampleTime;
                  *&v486.mRateScalar = v195;
                  v196 = *&a2->mSMPTETime.mHours;
                  *&v486.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
                  *&v486.mSMPTETime.mHours = v196;
                  v471 = 512;
                  Parameter = AudioUnitProcessMultiple(*(v3 + 393), &v471, &v486, *(v3 + 129), 6u, &v481, 3u, &v482);
                  v197 = *(v3 + 129);
                  if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
                  {
                    Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x25u, v197, *(v3 + 433), &v486);
                    v197 = *(v3 + 129);
                    v198 = *(v3 + 504);
                    if (*(v3 + 15881))
                    {
                      goto LABEL_356;
                    }
                  }

                  else
                  {
                    v198 = *(v3 + 504);
                  }

                  if (*(v3 + 15882) != 1)
                  {
LABEL_357:
                    v177 = *(v3 + 586);
                    goto LABEL_358;
                  }

LABEL_356:
                  Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x52u, v197, v198, &v486);
                  goto LABEL_357;
                }

LABEL_856:
                std::vector<std::unique_ptr<VoiceProcessor::SampleRateConverter>>::__throw_out_of_range[abi:ne200100]();
              }
            }

            else
            {
              v140 = *(v3 + 423);
            }

            if (*(v3 + 15882) != 1)
            {
              goto LABEL_272;
            }

            goto LABEL_271;
          }

LABEL_209:
          VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x11u, v121, v122, &buf);
          v122 = *(v3 + 2149);
          LODWORD(v121) = *(v3 + 129);
          goto LABEL_210;
        }

        v115 = *(v3 + 2110);
        if ((*(v3 + 2111) - v115) <= 0x20)
        {
          goto LABEL_856;
        }

        ECApplicator::apply(*(v115 + 32), &buf, v77, &v470, v3 + 1055, v3 + 1059, v3 + 1063, v3 + 1067, v3 + 1071, v3 + 1075);
        v116 = *(v3 + 129);
        if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
        {
          VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x21u, v116, *(v3 + 137), &buf);
          v116 = *(v3 + 129);
          v117 = *(v3 + 424);
          if (*(v3 + 15881))
          {
            goto LABEL_195;
          }
        }

        else
        {
          v117 = *(v3 + 424);
        }

        if (*(v3 + 15882) != 1)
        {
LABEL_196:
          v118 = *(v3 + 2142);
          v119 = *(v117 + 16);
          v486.mSampleTime = *(*(v3 + 511) + 16);
          v486.mHostTime = *&v486.mSampleTime + 4 * v116;
          VPTimeFreqConverter_Analyze(v118, v119, &v486);
          if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
          {
            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x16u, *(v3 + 129), *(v3 + 511), &buf);
          }

          goto LABEL_199;
        }

LABEL_195:
        VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x10u, v116, v117, &buf);
        v117 = *(v3 + 424);
        LODWORD(v116) = *(v3 + 129);
        goto LABEL_196;
      }

      v76 = *(v3 + 3134);
      if (*v75 != 3)
      {
        if (v76 == 2)
        {
          v77 = 1;
          v78 = 3;
          v460 = 2;
          v79 = 56;
          v80 = 40;
          goto LABEL_121;
        }

        v76 = *(v3 + 3134);
        if (v76 <= 0xC && ((0x1028u >> v76) & 1) != 0)
        {
          v77 = 3;
          v78 = 2;
          v460 = 1;
          v79 = 40;
          v80 = 24;
          goto LABEL_121;
        }
      }

      v77 = 1;
      v78 = 2;
      if (v76 != 9)
      {
        v460 = 0;
        v81 = 0;
        goto LABEL_123;
      }

      v460 = 3;
      v79 = 40;
      v80 = 56;
LABEL_121:
      *(v3 + 1060) = *(v75 + v80);
      *(v3 + 16984) = *(v75 + v79);
      v81 = v78;
      v78 = v77;
      v77 = 0;
LABEL_123:
      v82 = v75 + 8;
      *(v3 + 1057) = *(v82 + 16 * v77);
      *(v3 + 16936) = *(v82 + 16 * v78);
      goto LABEL_124;
    }
  }

  v13 = 0;
  while (((*(v3 + 118) >> v13) & 1) == 0)
  {
    if (++v13 == 32)
    {
      v13 = 33;
      break;
    }
  }

  v14 = *(v3 + 136);
  if (v13 >= *v14)
  {
    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v17 = VPLogScope(void)::scope;
    if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
    {
      v18 = (*v17 ? *v17 : MEMORY[0x277D86220]);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = **(v3 + 136);
        LODWORD(buf.mSampleTime) = 136315906;
        *(&buf.mSampleTime + 4) = "vpProcessUplink_v8.cpp";
        WORD2(buf.mHostTime) = 1024;
        *(&buf.mHostTime + 6) = 50;
        WORD1(buf.mRateScalar) = 1024;
        HIDWORD(buf.mRateScalar) = v13;
        LOWORD(buf.mWordClockTime) = 1024;
        *(&buf.mWordClockTime + 2) = v19;
        _os_log_impl(&dword_2724B4000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> ERROR: mPrimaryEpMicIndex is %d, but epmic only has %d channels", &buf, 0x1Eu);
      }
    }

    v20 = *(v3 + 1588);
    if (v20 && ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      CALegacyLog::log(v20, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessUplink_v8.cpp", 50, "ProcessDSPChain_Uplink", "ERROR: mPrimaryEpMicIndex is %d, but epmic only has %d channels", v13, **(v3 + 136));
    }

    v15 = *(*(v3 + 137) + 16);
    v16 = *(v3 + 136);
  }

  else
  {
    v15 = *(*(v3 + 137) + 16);
    v16 = &v14[4 * v13];
  }

  memcpy(v15, v16[2], *(v16 + 3));
  if (*(v3 + 2093) == 1 && (*(v3 + 4694) & 0x40) != 0 && (*(v3 + 4710) & 0x40) != 0)
  {
    v21 = *(v3 + 403);
    if (v21)
    {
      v22 = *(v3 + 503);
      v486.mSampleTime = *(v3 + 137);
      v486.mHostTime = v22;
      v23 = *(v3 + 505);
      v481.mSampleTime = v486.mSampleTime;
      v481.mHostTime = v23;
      v24 = *&a2->mRateScalar;
      *&buf.mSampleTime = *&a2->mSampleTime;
      *&buf.mRateScalar = v24;
      v25 = *&a2->mSMPTETime.mHours;
      *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&buf.mSMPTETime.mHours = v25;
      v482.mNumberBuffers = 512;
      AudioUnitProcessMultiple(v21, &v482.mNumberBuffers, &buf, *(v3 + 129), 2u, &v486, 2u, &v481);
      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
      {
        VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x27u, *(v3 + 129), *(v3 + 137), &buf);
      }

      if ((*(v3 + 4696) & 2) != 0 && (*(v3 + 4712) & 2) != 0 && *(v3 + 414))
      {
        AudioUnitGetParameter(*(v3 + 403), 1u, 0, 0, &v472);
        AudioUnitSetParameter(*(v3 + 414), 0x23u, 0, 0, v472, 0);
      }
    }
  }

LABEL_780:
  v482.mNumberBuffers = 0;
  v424 = VoiceProcessorV2::LocalVoiceDuckingForMediaChatEnabled(v3);
  v425 = v424;
  if (*(v3 + 2088) == 1)
  {
    if (!((*(v3 + 2053) != 0) | v424 & 1))
    {
      goto LABEL_796;
    }

    VoiceProcessorV2::DetectVoiceActivity(v3, a2);
    if ((v425 & 1) == 0)
    {
      goto LABEL_796;
    }
  }

  else
  {
    if ((v424 & 1) == 0)
    {
      goto LABEL_796;
    }

    VoiceProcessorV2::DetectVoiceActivity(v3, a2);
  }

  v426 = *(v3 + 586);
  if ((v426 & 0x2000000000000000) != 0 && (*(v3 + 4711) & 0x20) != 0)
  {
    v427 = *(v3 + 410);
    if (v427)
    {
      v428 = 1936748646;
LABEL_794:
      AudioUnitGetParameter(v427, v428, 0, 0, &v482.mNumberBuffers);
      goto LABEL_796;
    }
  }

  if ((v426 & 0x1000000000000000) != 0 && (*(v3 + 4711) & 0x10) != 0)
  {
    v427 = *(v3 + 409);
    if (v427)
    {
      v428 = 2;
      goto LABEL_794;
    }
  }

  *&v482.mNumberBuffers = v472;
LABEL_796:
  if (*(v3 + 2088) == 1)
  {
    bzero(*(*(v3 + 137) + 16), 4 * *(v3 + 129));
    v482.mNumberBuffers = 0;
  }

  else
  {
    *(v3 + 4108) = 0;
  }

  if ((*(v3 + 8865) & 0x80) != 0 && (*(v3 + 8873) & 0x80) != 0)
  {
    v429 = *(v3 + 454);
    if (((v429 != 0) & v425) == 1)
    {
      AudioUnitSetParameter(v429, 0x12u, 0, 0, *&v482.mNumberBuffers, 0);
    }
  }

  if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
  {
    VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x2Au, *(v3 + 129), *(v3 + 137), a2);
  }

  if ((*(v3 + 4695) & 8) != 0 && (*(v3 + 4711) & 8) != 0)
  {
    v430 = *(v3 + 408);
    if (v430)
    {
      v486.mSampleTime = *(v3 + 137);
      v481.mSampleTime = v486.mSampleTime;
      LODWORD(inInputBufferLists) = 512;
      v431 = *&a2->mRateScalar;
      *&buf.mSampleTime = *&a2->mSampleTime;
      *&buf.mRateScalar = v431;
      v432 = *&a2->mSMPTETime.mHours;
      *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&buf.mSMPTETime.mHours = v432;
      AudioUnitProcessMultiple(v430, &inInputBufferLists, &buf, *(v3 + 129), 1u, &v486, 1u, &v481);
      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
      {
        VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x7Cu, *(v3 + 129), *(v3 + 137), &buf);
      }
    }
  }

  if (*(v3 + 2093) == 1 && (*(v3 + 4696) & 0x40) != 0 && (*(v3 + 4712) & 0x40) != 0)
  {
    v433 = *(v3 + 419);
    if (v433)
    {
      v486.mSampleTime = *(v3 + 137);
      v481.mSampleTime = v486.mSampleTime;
      LODWORD(inInputBufferLists) = 512;
      v434 = *&a2->mRateScalar;
      *&buf.mSampleTime = *&a2->mSampleTime;
      *&buf.mRateScalar = v434;
      v435 = *&a2->mSMPTETime.mHours;
      *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&buf.mSMPTETime.mHours = v435;
      AudioUnitProcessMultiple(v433, &inInputBufferLists, &buf, *(v3 + 129), 1u, &v486, 1u, &v481);
      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
      {
        VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x7Eu, *(v3 + 129), *(v3 + 137), &buf);
      }
    }
  }

  if ((*(v3 + 586) & 0x8000000000000000) != 0 && (*(v3 + 588) & 0x8000000000000000) != 0)
  {
    v436 = *(v3 + 412);
    if (v436)
    {
      v437 = *&a2->mRateScalar;
      *&buf.mSampleTime = *&a2->mSampleTime;
      *&buf.mRateScalar = v437;
      v438 = *&a2->mSMPTETime.mHours;
      *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&buf.mSMPTETime.mHours = v438;
      LODWORD(v486.mSampleTime) = 512;
      AudioUnitProcess(v436, &v486, &buf, *(v3 + 129), *(v3 + 137));
      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
      {
        VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x2Cu, *(v3 + 129), *(v3 + 137), &buf);
      }
    }
  }

  v439 = *(v3 + 587);
  if (v439 & 1) != 0 && (*(v3 + 4712))
  {
    v440 = *(v3 + 413);
    if (v440)
    {
      v441 = *&a2->mRateScalar;
      *&buf.mSampleTime = *&a2->mSampleTime;
      *&buf.mRateScalar = v441;
      v442 = *&a2->mSMPTETime.mHours;
      *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&buf.mSMPTETime.mHours = v442;
      LODWORD(v486.mSampleTime) = 512;
      AudioUnitProcess(v440, &v486, &buf, *(v3 + 129), *(v3 + 137));
      v439 = *(v3 + 587);
    }
  }

  if ((v439 & 2) != 0 && (*(v3 + 4712) & 2) != 0 && (v443 = *(v3 + 414)) != 0)
  {
    v444 = *&a2->mRateScalar;
    *&buf.mSampleTime = *&a2->mSampleTime;
    *&buf.mRateScalar = v444;
    v445 = *&a2->mSMPTETime.mHours;
    *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
    *&buf.mSMPTETime.mHours = v445;
    LODWORD(v486.mSampleTime) = 512;
    AudioUnitProcess(v443, &v486, &buf, *(v3 + 129), *(v3 + 137));
    if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
    {
      VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x2Du, *(v3 + 129), *(v3 + 137), &buf);
    }

    if ((*(v3 + 4695) & 0x10) != 0 && (*(v3 + 4711) & 0x10) != 0 && *(v3 + 409))
    {
      LODWORD(v481.mSampleTime) = 0;
      AudioUnitGetParameter(*(v3 + 414), 1u, 0, 0, &v481);
      AudioUnitSetParameter(*(v3 + 409), 0x11u, 0, 0, *&v481.mSampleTime, 0);
    }

    LODWORD(v481.mSampleTime) = 0;
    AudioUnitGetParameter(*(v3 + 414), 0x1Bu, 0, 0, &v481);
    mSampleTime_low = LODWORD(v481.mSampleTime);
    if (*(v3 + 577) != *&v481.mSampleTime)
    {
      if ((*(v3 + 4695) & 0x10) != 0 && (*(v3 + 4711) & 0x10) != 0)
      {
        v447 = *(v3 + 409);
        if (v447)
        {
          AudioUnitSetParameter(v447, 0x12u, 0, 0, *&v481.mSampleTime, 0);
          mSampleTime_low = LODWORD(v481.mSampleTime);
        }
      }

      *(v3 + 577) = mSampleTime_low;
    }
  }

  else if ((*(v3 + 4695) & 0x40) != 0 && ((*(v3 + 4711) & 0x40) != 0 || *(v3 + 480) == 1))
  {
    LODWORD(buf.mSampleTime) = __exp10f(*(v3 + 1099) / 20.0);
    MEMORY[0x2743CCE20](*(*(v3 + 137) + 16), 1, &buf, *(*(v3 + 137) + 16), 1, *(v3 + 129));
    if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
    {
      VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x2Bu, *(v3 + 129), *(v3 + 137), a2);
    }
  }

  VoiceProcessorV6::ProcessLevelDrivenSuppressor(v3, a2);
  if ((*(v3 + 4696) & 8) != 0 && (*(v3 + 4712) & 8) != 0)
  {
    v448 = *(v3 + 416);
    if (v448)
    {
      v449 = *&a2->mRateScalar;
      *&buf.mSampleTime = *&a2->mSampleTime;
      *&buf.mRateScalar = v449;
      v450 = *&a2->mSMPTETime.mHours;
      *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&buf.mSMPTETime.mHours = v450;
      LODWORD(v486.mSampleTime) = 512;
      v451 = atomic_load(gWirelessChargingMatIsAttached);
      AudioUnitSetParameter(v448, 5u, 0, 0, (v451 & 1), 0);
      AudioUnitProcess(*(v3 + 416), &v486, &buf, *(v3 + 129), *(v3 + 137));
    }
  }

  v452 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t VoiceProcessorV9::ProcessDSPChain_Uplink(uint64_t this, AudioTimeStamp *a2)
{
  v3 = this;
  v537 = *MEMORY[0x277D85DE8];
  v4 = **(this + 1088);
  if (v4)
  {
    bzero(*(this + 1416), v4);
  }

  if (*(v3 + 1412) == 1)
  {
    VoiceProcessorV2::PostSRCMicClipDetection(v3);
  }

  if ((*(v3 + 2091) & 1) == 0)
  {
    this = VoiceProcessorV2::GetAbsoluteChIndexForEpmicAndApplyPreDigitalGain(v3);
  }

  v5 = *(v3 + 15881);
  if (v5 == 1 && (this = VoiceProcessorV2::InjectionFilesReadSignal(v3, 7, *(v3 + 129), *(v3 + 135)), LOBYTE(v5) = *(v3 + 15881), (v5 & 1) != 0) && (this = VoiceProcessorV2::InjectionFilesReadSignal(v3, 8, *(v3 + 129), *(v3 + 136)), LOBYTE(v5) = *(v3 + 15881), (v5 & 1) != 0))
  {
    if ((*(v3 + 15880) & 1) == 0 && (*(v3 + 15883) & 1) == 0)
    {
      v6 = *(v3 + 135);
      v9 = (v3 + 516);
      v10 = *(v3 + 129);
      goto LABEL_21;
    }

    LOBYTE(v5) = 1;
  }

  else if ((*(v3 + 15883) & 1) == 0)
  {
    v6 = *(v3 + 135);
    goto LABEL_19;
  }

  v6 = *(v3 + 135);
  if (v6->mNumberBuffers)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      bzero(v6->mBuffers[v7].mData, v6->mBuffers[v7].mDataByteSize);
      ++v8;
      v6 = *(v3 + 135);
      ++v7;
    }

    while (v8 < v6->mNumberBuffers);
    LOBYTE(v5) = *(v3 + 15881);
  }

LABEL_19:
  v9 = (v3 + 516);
  v10 = *(v3 + 129);
  if (v5 & 1) != 0 || (*(v3 + 15882))
  {
LABEL_21:
    this = VoiceProcessorV2::SaveFilesWriteSignal(v3, 4u, v10, v6, a2);
    v10 = *(v3 + 129);
    v11 = *(v3 + 136);
    if (*(v3 + 15881))
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v11 = *(v3 + 136);
LABEL_24:
  if ((*(v3 + 15882) & 1) == 0)
  {
    v12 = *(v3 + 178);
    goto LABEL_28;
  }

LABEL_25:
  this = VoiceProcessorV2::SaveFilesWriteSignal(v3, 5u, v10, v11, a2);
  v10 = *(v3 + 129);
  v12 = *(v3 + 178);
  if (*(v3 + 15881))
  {
    goto LABEL_29;
  }

LABEL_28:
  if (*(v3 + 15882) == 1)
  {
LABEL_29:
    this = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x4Cu, v10, v12, a2);
  }

  v520 = 0.0;
  if ((*(v3 + 2091) & 1) != 0 || (*(v3 + 2093) & 1) != 0 || (*(v3 + 480) & 1) != 0 || (v26 = *(v3 + 586)) == 0 && (*(v3 + 4696) & 0x7F) == 0)
  {
    v13 = 0;
    while (((*(v3 + 118) >> v13) & 1) == 0)
    {
      if (++v13 == 32)
      {
        v13 = 33;
        break;
      }
    }

    v14 = *(v3 + 136);
    if (v13 >= *v14)
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v17 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(1, VPLogScope(void)::scope, 0))
      {
        v18 = (*v17 ? *v17 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = **(v3 + 136);
          LODWORD(buf.mSampleTime) = 136315906;
          *(&buf.mSampleTime + 4) = "vpProcessUplink_v9.cpp";
          WORD2(buf.mHostTime) = 1024;
          *(&buf.mHostTime + 6) = 53;
          WORD1(buf.mRateScalar) = 1024;
          HIDWORD(buf.mRateScalar) = v13;
          LOWORD(buf.mWordClockTime) = 1024;
          *(&buf.mWordClockTime + 2) = v19;
          _os_log_impl(&dword_2724B4000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> ERROR: mPrimaryEpMicIndex is %d, but epmic only has %d channels", &buf, 0x1Eu);
        }
      }

      v20 = *(v3 + 1588);
      if (v20 && ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v20, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessUplink_v9.cpp", 53, "ProcessDSPChain_Uplink", "ERROR: mPrimaryEpMicIndex is %d, but epmic only has %d channels", v13, **(v3 + 136));
      }

      v15 = *(*(v3 + 137) + 16);
      v16 = *(v3 + 136);
    }

    else
    {
      v15 = *(*(v3 + 137) + 16);
      v16 = &v14[4 * v13];
    }

    memcpy(v15, v16[2], *(v16 + 3));
    if (*(v3 + 2093) == 1 && (*(v3 + 4694) & 0x40) != 0 && (*(v3 + 4710) & 0x40) != 0)
    {
      v21 = *(v3 + 403);
      if (v21)
      {
        v22 = *(v3 + 503);
        inInputBufferLists.mSampleTime = *(v3 + 137);
        inInputBufferLists.mHostTime = v22;
        v23 = *(v3 + 505);
        v529.mSampleTime = inInputBufferLists.mSampleTime;
        v529.mHostTime = v23;
        v24 = *&a2->mRateScalar;
        *&buf.mSampleTime = *&a2->mSampleTime;
        *&buf.mRateScalar = v24;
        v25 = *&a2->mSMPTETime.mHours;
        *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
        *&buf.mSMPTETime.mHours = v25;
        v530.mNumberBuffers = 512;
        AudioUnitProcessMultiple(v21, &v530.mNumberBuffers, &buf, *(v3 + 129), 2u, &inInputBufferLists, 2u, &v529);
        if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
        {
          VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x27u, *(v3 + 129), *(v3 + 137), &buf);
        }

        if ((*(v3 + 4696) & 2) != 0 && (*(v3 + 4712) & 2) != 0 && *(v3 + 414))
        {
          AudioUnitGetParameter(*(v3 + 403), 1u, 0, 0, &v520);
          AudioUnitSetParameter(*(v3 + 414), 0x23u, 0, 0, v520, 0);
        }
      }
    }

    goto LABEL_878;
  }

  v519 = 0;
  *(v3 + 2137) = 0;
  *(v3 + 2139) = 0;
  *(v3 + 2138) = 0;
  *(v3 + 4274) = 1;
  *(v3 + 1069) = *(*(v3 + 135) + 8);
  if (v26 & 1) != 0 && (*(v3 + 4704))
  {
    this = *(v3 + 349);
    if (this)
    {
      v27 = *&a2->mRateScalar;
      *&buf.mSampleTime = *&a2->mSampleTime;
      *&buf.mRateScalar = v27;
      v28 = *&a2->mSMPTETime.mHours;
      *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&buf.mSMPTETime.mHours = v28;
      v519 = 512;
      this = AudioUnitProcess(this, &v519, &buf, *(v3 + 129), *(v3 + 136));
    }
  }

  v29 = 24 * **(v3 + 136);
  MEMORY[0x28223BE20](this);
  v32 = (&v501 - ((v31 + 15) & 0x3FFFFFFFF0));
  v33 = *(v3 + 136);
  if (*v33)
  {
    v34 = 0;
    v35 = 2;
    v36 = v32;
    do
    {
      *&v36->mNumberBuffers = 0;
      *&v36->mBuffers[0].mNumberChannels = 0;
      v36->mBuffers[0].mData = 0;
      v36->mNumberBuffers = 1;
      v36->mBuffers[0] = *&v33[v35];
      ++v34;
      v35 += 4;
      ++v36;
    }

    while (v34 < *v33);
  }

  v37 = *(v3 + 586);
  if ((v37 & 2) != 0 && (*(v3 + 4704) & 2) != 0)
  {
    Parameter = *(v3 + 350);
    if (Parameter)
    {
      v38 = *&a2->mRateScalar;
      *&buf.mSampleTime = *&a2->mSampleTime;
      *&buf.mRateScalar = v38;
      v39 = *&a2->mSMPTETime.mHours;
      *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&buf.mSMPTETime.mHours = v39;
      v519 = 512;
      AudioUnitProcess(Parameter, &v519, &buf, *v9, v32);
      v45 = *v9;
      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
      {
        VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x4Du, v45, v32, &buf);
      }

      Parameter = CADeprecated::CABufferList::CopyDataFrom(*(v3 + 139), v32, v45, v40, v41, v42, v43, v44, v501);
      v37 = *(v3 + 586);
    }
  }

  if ((v37 & 4) != 0 && (*(v3 + 4704) & 4) != 0)
  {
    Parameter = *(v3 + 351);
    if (Parameter)
    {
      v46 = *&a2->mRateScalar;
      *&buf.mSampleTime = *&a2->mSampleTime;
      *&buf.mRateScalar = v46;
      v47 = *&a2->mSMPTETime.mHours;
      *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&buf.mSMPTETime.mHours = v47;
      v519 = 512;
      AudioUnitProcess(Parameter, &v519, &buf, *v9, v32 + 1);
      v53 = *v9;
      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
      {
        VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x4Eu, v53, v32 + 1, &buf);
      }

      Parameter = CADeprecated::CABufferList::CopyDataFrom(*(v3 + 140), v32 + 1, v53, v48, v49, v50, v51, v52, v501);
      v37 = *(v3 + 586);
    }
  }

  if ((v37 & 8) != 0 && (*(v3 + 4704) & 8) != 0)
  {
    Parameter = *(v3 + 352);
    if (Parameter)
    {
      v54 = *&a2->mRateScalar;
      *&buf.mSampleTime = *&a2->mSampleTime;
      *&buf.mRateScalar = v54;
      v55 = *&a2->mSMPTETime.mHours;
      *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&buf.mSMPTETime.mHours = v55;
      v519 = 512;
      AudioUnitProcess(Parameter, &v519, &buf, *v9, v32 + 2);
      v61 = *v9;
      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
      {
        VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x4Fu, v61, v32 + 2, &buf);
      }

      Parameter = CADeprecated::CABufferList::CopyDataFrom(*(v3 + 141), v32 + 2, v61, v56, v57, v58, v59, v60, v501);
      v37 = *(v3 + 586);
    }
  }

  if ((v37 & 0x10) != 0 && (*(v3 + 4704) & 0x10) != 0)
  {
    Parameter = *(v3 + 353);
    if (Parameter)
    {
      v62 = *&a2->mRateScalar;
      *&buf.mSampleTime = *&a2->mSampleTime;
      *&buf.mRateScalar = v62;
      v63 = *&a2->mSMPTETime.mHours;
      *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&buf.mSMPTETime.mHours = v63;
      v519 = 512;
      AudioUnitProcess(Parameter, &v519, &buf, *v9, v32 + 3);
      v69 = *v9;
      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
      {
        VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x50u, v69, v32 + 3, &buf);
      }

      Parameter = CADeprecated::CABufferList::CopyDataFrom(*(v3 + 142), v32 + 3, v69, v64, v65, v66, v67, v68, v501);
      v37 = *(v3 + 586);
    }
  }

  if ((v37 & 0x40) != 0 && (*(v3 + 4704) & 0x40) != 0 && *(v3 + 355))
  {
    v70 = *&a2->mRateScalar;
    *&buf.mSampleTime = *&a2->mSampleTime;
    *&buf.mRateScalar = v70;
    v71 = *&a2->mSMPTETime.mHours;
    *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
    *&buf.mSMPTETime.mHours = v71;
    Parameter = VoiceProcessorV6::ApplyGMCoexNoiseMitigation(v3, *(v3 + 136), *(v3 + 136), &buf, *(v3 + 129));
  }

  v72 = *(v3 + 136);
  v73 = *v72;
  v508 = &v501;
  if (v73 >= 3)
  {
    v74 = *(v3 + 3134);
    if (v73 != 3)
    {
      if (v74 == 2)
      {
        v75 = 1;
        v76 = 3;
        v77 = 56;
        v78 = 40;
        goto LABEL_122;
      }

      v74 = *(v3 + 3134);
      if (v74 <= 0xC && ((0x1028u >> v74) & 1) != 0)
      {
        v75 = 3;
        v76 = 2;
        v74 = 1;
        v77 = 40;
        v78 = 24;
        goto LABEL_122;
      }
    }

    v79 = 0;
    v75 = 1;
    v76 = 2;
    v77 = 40;
    if (v74 == 14)
    {
      v80 = 16960;
      goto LABEL_125;
    }

    if (v74 != 9)
    {
      LODWORD(v509) = 0;
      goto LABEL_127;
    }

    v74 = 3;
    v78 = 56;
LABEL_122:
    v79 = v76;
    *(v3 + 1060) = *(v72 + v78);
    v80 = 16984;
    v76 = v74;
LABEL_125:
    v81 = *(v72 + v77);
    LODWORD(v509) = v79;
    *(v3 + v80) = v81;
    v79 = v76;
    v76 = v75;
    v75 = 0;
LABEL_127:
    v82 = v72 + 8;
    *(v3 + 1057) = *(v82 + 16 * v75);
    *(v3 + 16936) = *(v82 + 16 * v76);
    goto LABEL_128;
  }

  *(v3 + 1057) = *(v72 + 8);
  if (*v72 < 2u)
  {
    v79 = 0;
    LODWORD(v509) = 0;
    v76 = 0;
    v75 = 0;
  }

  else
  {
    v79 = 0;
    if (*(v3 + 17160) == 1)
    {
      LODWORD(v509) = 0;
      v76 = 0;
      *(v3 + 1057) = *(v72 + 24);
      *(v3 + 16936) = *(v72 + 8);
      v75 = 1;
    }

    else
    {
      LODWORD(v509) = 0;
      v75 = 0;
      *(v3 + 16936) = *(v72 + 24);
      v76 = 1;
    }
  }

LABEL_128:
  v83 = *(v3 + 586);
  if ((v83 & 0x80) != 0 && (*(v3 + 4704) & 0x80) != 0)
  {
    Parameter = *(v3 + 356);
    if (Parameter)
    {
      v84 = *&a2->mRateScalar;
      *&buf.mSampleTime = *&a2->mSampleTime;
      *&buf.mRateScalar = v84;
      v85 = *&a2->mSMPTETime.mHours;
      *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&buf.mSMPTETime.mHours = v85;
      v519 = 512;
      Parameter = AudioUnitProcess(Parameter, &v519, &buf, *(v3 + 129), (v3 + 16904));
      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
      {
        Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 6u, *(v3 + 129), (v3 + 16904), &buf);
      }

      v83 = *(v3 + 586);
    }
  }

  if (v83 & 0x100) != 0 && (*(v3 + 4705))
  {
    Parameter = *(v3 + 357);
    if (Parameter)
    {
      v86 = *&a2->mRateScalar;
      *&buf.mSampleTime = *&a2->mSampleTime;
      *&buf.mRateScalar = v86;
      v87 = *&a2->mSMPTETime.mHours;
      *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&buf.mSMPTETime.mHours = v87;
      v519 = 512;
      Parameter = AudioUnitProcess(Parameter, &v519, &buf, *(v3 + 129), (v3 + 16928));
      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
      {
        Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 7u, *(v3 + 129), (v3 + 16928), &buf);
      }

      v83 = *(v3 + 586);
    }
  }

  if ((v83 & 0x200) != 0)
  {
    v88 = *(v3 + 588);
    if ((v88 & 0x200) != 0)
    {
      Parameter = *(v3 + 358);
      if (Parameter)
      {
        if ((v89 = v83 & v88, (v89 & 0x1000000000000) != 0) && *(v3 + 397) || (v89 & 0x1000000000) != 0 && *(v3 + 385) || (v89 & 0x10000000) != 0 && *(v3 + 377))
        {
          v90 = *&a2->mRateScalar;
          *&buf.mSampleTime = *&a2->mSampleTime;
          *&buf.mRateScalar = v90;
          v91 = *&a2->mSMPTETime.mHours;
          *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
          *&buf.mSMPTETime.mHours = v91;
          v519 = 512;
          Parameter = AudioUnitProcess(Parameter, &v519, &buf, *(v3 + 129), (v3 + 16952));
          if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
          {
            Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 8u, *(v3 + 129), (v3 + 16952), &buf);
          }

          v83 = *(v3 + 586);
        }
      }
    }
  }

  if ((v83 & 0x400) != 0 && (*(v3 + 4705) & 4) != 0)
  {
    Parameter = *(v3 + 359);
    if (Parameter)
    {
      v92 = *&a2->mRateScalar;
      *&buf.mSampleTime = *&a2->mSampleTime;
      *&buf.mRateScalar = v92;
      v93 = *&a2->mSMPTETime.mHours;
      *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&buf.mSMPTETime.mHours = v93;
      v519 = 512;
      Parameter = AudioUnitProcess(Parameter, &v519, &buf, *(v3 + 129), (v3 + 16976));
      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
      {
        Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 9u, *(v3 + 129), (v3 + 16976), &buf);
      }

      v83 = *(v3 + 586);
    }
  }

  if ((v83 & 0x10000000) != 0 && (*(v3 + 4707) & 0x10) != 0)
  {
    Parameter = *(v3 + 377);
    if (Parameter)
    {
      if (**(v3 + 177))
      {
        v94 = 1.0;
      }

      else
      {
        v94 = 0.0;
      }

      AudioUnitSetParameter(Parameter, 0x66616331u, 0, 0, v94, 0);
      if (*(*(v3 + 177) + 1))
      {
        v95 = 1.0;
      }

      else
      {
        v95 = 0.0;
      }

      AudioUnitSetParameter(*(v3 + 377), 0x66616332u, 0, 0, v95, 0);
      if (*(*(v3 + 177) + 2))
      {
        v96 = 1.0;
      }

      else
      {
        v96 = 0.0;
      }

      AudioUnitSetParameter(*(v3 + 377), 0x66616333u, 0, 0, v96, 0);
      v97 = 0;
      qmemcpy(&buf, "1dmr2dmr3dmr", 12);
      do
      {
        AudioUnitSetParameter(*(v3 + 377), *(&buf.mSampleTime + v97), 0, 0, *(v3 + 1100), 0);
        v97 += 4;
      }

      while (v97 != 12);
      v530.mNumberBuffers = 0;
      AudioUnitGetParameter(*(v3 + 414), 1u, 0, 0, &v530.mNumberBuffers);
      AudioUnitSetParameter(*(v3 + 377), 0x67746479u, 0, 0, *&v530.mNumberBuffers, 0);
      LODWORD(v534.realp) = 0;
      AudioUnitGetParameter(*(v3 + 414), 0x1Bu, 0, 0, &v534);
      if (*(v3 + 577) != *&v534.realp)
      {
        AudioUnitSetParameter(*(v3 + 377), 0x67747067u, 0, 0, *&v534.realp, 0);
        *(v3 + 577) = v534.realp;
      }

      AudioUnitSetParameter(*(v3 + 377), 0x67746467u, 0, 0, *(v3 + 3153), 0);
      v98 = AudioUnitSetParameter(*(v3 + 409), 0x6774706Du, 0, 0, *(v3 + 580), 0);
      MEMORY[0x28223BE20](v98);
      *(&v501 - 8) = 3;
      *(&v501 - 7) = *(v3 + 1057);
      *(&v501 - 5) = *(v3 + 16936);
      *(&v501 - 3) = *(v3 + 1060);
      v99 = *(v3 + 135);
      *&inInputBufferLists.mSampleTime = &v501 - 8;
      inInputBufferLists.mHostTime = v99;
      v529.mSampleTime = *(v3 + 137);
      v100 = *&a2->mRateScalar;
      *&buf.mSampleTime = *&a2->mSampleTime;
      *&buf.mRateScalar = v100;
      v101 = *&a2->mSMPTETime.mHours;
      *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&buf.mSMPTETime.mHours = v101;
      LODWORD(v533.realp) = 512;
      AudioUnitProcessMultiple(*(v3 + 377), &v533, &buf, *(v3 + 129), 2u, &inInputBufferLists, 1u, &v529);
      if (*(v3 + 16752))
      {
        v102 = 1852142452;
      }

      else
      {
        v102 = 0;
      }

      if (*(v3 + 16752))
      {
        v103 = 1733326433;
      }

      else
      {
        v103 = 1852142452;
      }

      AudioUnitGetProperty(*(v3 + 377), v103, 0, v102, *(*(v3 + 2183) + 16), (*(v3 + 2183) + 12));
      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
      {
        VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x20u, (*(v3 + 129) + 1), *(v3 + 2183), &buf);
      }

      AudioUnitGetParameter(*(v3 + 377), 0x776E6466u, 0, 0, v3 + 4376);
      AudioUnitGetParameter(*(v3 + 377), 0x67747370u, 0, 0, &v520);
      v104 = v520;
      *(v3 + 4377) = v520;
      AudioUnitSetParameter(*(v3 + 414), 0x23u, 0, 0, v104, 0);
      Parameter = AudioUnitGetParameter(*(v3 + 377), 0x67746774u, 0, 0, v3 + 3154);
      v83 = *(v3 + 586);
    }
  }

  if ((v83 & 0x400000) != 0 && (*(v3 + 4706) & 0x40) != 0)
  {
    if (*(v3 + 371))
    {
      Parameter = *(v3 + 2200);
      if (Parameter)
      {
        v105 = *(v3 + 2115);
        v106 = *(*(v3 + 2195) + 16) + 4 * *(v3 + 129);
        buf.mSampleTime = *(*(v3 + 2195) + 16);
        buf.mHostTime = v106;
        VPTimeFreqConverter_Analyze(Parameter, v105, &buf);
        v83 = *(v3 + 586);
      }
    }
  }

  if ((v83 & 0x800000) != 0 && (*(v3 + 4706) & 0x80) != 0)
  {
    if (*(v3 + 372))
    {
      Parameter = *(v3 + 2201);
      if (Parameter)
      {
        v107 = *(v3 + 2118);
        v108 = *(*(v3 + 2196) + 16) + 4 * *(v3 + 129);
        buf.mSampleTime = *(*(v3 + 2196) + 16);
        buf.mHostTime = v108;
        VPTimeFreqConverter_Analyze(Parameter, v107, &buf);
        v83 = *(v3 + 586);
      }
    }
  }

  if (v83 & 0x1000000) != 0 && (*(v3 + 4707))
  {
    if (*(v3 + 373))
    {
      Parameter = *(v3 + 2202);
      if (Parameter)
      {
        v109 = *(v3 + 2121);
        v110 = *(*(v3 + 2197) + 16) + 4 * *(v3 + 129);
        buf.mSampleTime = *(*(v3 + 2197) + 16);
        buf.mHostTime = v110;
        VPTimeFreqConverter_Analyze(Parameter, v109, &buf);
        v83 = *(v3 + 586);
      }
    }
  }

  if ((v83 & 0x2000000) != 0 && (*(v3 + 4707) & 2) != 0)
  {
    if (*(v3 + 374))
    {
      Parameter = *(v3 + 2203);
      if (Parameter)
      {
        v111 = *(v3 + 2124);
        v112 = *(*(v3 + 2198) + 16) + 4 * *(v3 + 129);
        buf.mSampleTime = *(*(v3 + 2198) + 16);
        buf.mHostTime = v112;
        VPTimeFreqConverter_Analyze(Parameter, v111, &buf);
        v83 = *(v3 + 586);
      }
    }
  }

  if (((v83 & 0x1000000000000) == 0 || (*(v3 + 4710) & 1) == 0 || !*(v3 + 397)) && (v83 & 0x800) != 0 && (*(v3 + 4705) & 8) != 0)
  {
    Parameter = *(v3 + 360);
    if (Parameter)
    {
      MEMORY[0x28223BE20](Parameter);
      *(&v501 - 6) = 2;
      *(&v501 - 5) = *(v3 + 1057);
      *(&v501 - 3) = *(v3 + 16936);
      *&v529.mSampleTime = &v501 - 6;
      v529.mHostTime = 0;
      *&inInputBufferLists.mSampleTime = v3 + 16904;
      memset(&inInputBufferLists.mHostTime, 0, 24);
      v519 = 512;
      v113 = *&a2->mRateScalar;
      *&buf.mSampleTime = *&a2->mSampleTime;
      *&buf.mRateScalar = v113;
      v114 = *&a2->mSMPTETime.mHours;
      *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&buf.mSMPTETime.mHours = v114;
      Parameter = AudioUnitProcessMultiple(v115, &v519, &buf, *(v3 + 129), 2u, &v529, 4u, &inInputBufferLists);
      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
      {
        Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x65u, *(v3 + 129), (v3 + 16904), &buf);
      }

      v83 = *(v3 + 586);
    }
  }

  v518 = 0;
  v116 = *&a2->mRateScalar;
  *&buf.mSampleTime = *&a2->mSampleTime;
  *&buf.mRateScalar = v116;
  v117 = *&a2->mSMPTETime.mHours;
  *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
  *&buf.mSMPTETime.mHours = v117;
  if ((v83 & 0x4000000) != 0 && (*(v3 + 4707) & 4) != 0 && *(v3 + 375))
  {
    v118 = *(v3 + 2110);
    if ((*(v3 + 2111) - v118) <= 0x20)
    {
      goto LABEL_954;
    }

    ECApplicator::apply(*(v118 + 32), &buf, v75, &v518, v3 + 1055, v3 + 1059, v3 + 1063, v3 + 1067, v3 + 1071, v3 + 1075);
    v119 = *(v3 + 129);
    if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
    {
      VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x21u, v119, *(v3 + 137), &buf);
      v119 = *(v3 + 129);
      v120 = *(v3 + 424);
      if (*(v3 + 15881))
      {
        goto LABEL_228;
      }
    }

    else
    {
      v120 = *(v3 + 424);
    }

    if (*(v3 + 15882) != 1)
    {
LABEL_229:
      v121 = *(v3 + 2142);
      v122 = *(v120 + 16);
      inInputBufferLists.mSampleTime = *(*(v3 + 511) + 16);
      inInputBufferLists.mHostTime = *&inInputBufferLists.mSampleTime + 4 * v119;
      VPTimeFreqConverter_Analyze(v121, v122, &inInputBufferLists);
      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
      {
        Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x16u, *(v3 + 129), *(v3 + 511), &buf);
      }

      goto LABEL_232;
    }

LABEL_228:
    VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x10u, v119, v120, &buf);
    v120 = *(v3 + 424);
    LODWORD(v119) = *(v3 + 129);
    goto LABEL_229;
  }

LABEL_232:
  v517 = 0;
  if ((*(v3 + 4691) & 8) == 0 || (*(v3 + 4707) & 8) == 0 || !*(v3 + 376))
  {
    goto LABEL_246;
  }

  v123 = *(v3 + 2110);
  if ((*(v3 + 2111) - v123) <= 0x28)
  {
    goto LABEL_954;
  }

  ECApplicator::apply(*(v123 + 40), &buf, v76, &v517, v3 + 1055, v3 + 1059, v3 + 1063, v3 + 1067, v3 + 1071, v3 + 1075);
  v124 = *(v3 + 129);
  if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
  {
    VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x22u, v124, *(v3 + 137), &buf);
    v124 = *(v3 + 129);
    v125 = *(v3 + 2149);
    if (*(v3 + 15881))
    {
      goto LABEL_242;
    }
  }

  else
  {
    v125 = *(v3 + 2149);
  }

  if (*(v3 + 15882) == 1)
  {
LABEL_242:
    VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x11u, v124, v125, &buf);
    v125 = *(v3 + 2149);
    LODWORD(v124) = *(v3 + 129);
  }

  v126 = *(v3 + 2157);
  v127 = *(v125 + 16);
  inInputBufferLists.mSampleTime = *(*(v3 + 512) + 16);
  inInputBufferLists.mHostTime = *&inInputBufferLists.mSampleTime + 4 * v124;
  VPTimeFreqConverter_Analyze(v126, v127, &inInputBufferLists);
  if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
  {
    Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x17u, *(v3 + 129), *(v3 + 512), &buf);
  }

LABEL_246:
  v128 = *(v3 + 586);
  v506 = v9;
  if ((v128 & 0x400000) != 0 && (*(v3 + 4706) & 0x40) != 0 && *(v3 + 371))
  {
    v129 = *(v3 + 2110);
    if (*(v3 + 2111) == v129)
    {
      goto LABEL_954;
    }

    Parameter = ECApplicator::apply(*v129, &buf, v75, &v518 + 1, v3 + 1054, v3 + 1058, v3 + 1062, v3 + 1066, v3 + 1070, v3 + 1074);
    v130 = *(v3 + 129);
    if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
    {
      Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x1Cu, v130, (v3 + 16904), &buf);
      v130 = *(v3 + 129);
      v131 = *(v3 + 420);
      if (*(v3 + 15881))
      {
        goto LABEL_289;
      }
    }

    else
    {
      v131 = *(v3 + 420);
    }

    if (*(v3 + 15882) == 1)
    {
LABEL_289:
      Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0xCu, v130, v131, &buf);
    }
  }

  else if ((v128 & 0x10000000) == 0 || (*(v3 + 4707) & 0x10) == 0 || !*(v3 + 377))
  {
    v132 = 0;
    while (((*(v3 + 118) >> v132) & 1) == 0)
    {
      if (++v132 == 32)
      {
        v132 = 33;
        break;
      }
    }

    if (v132 >= **(v3 + 136))
    {
      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v133 = CALog::LogObjIfEnabled(1, VPLogScope(void)::scope);
      if (v133)
      {
        v134 = v133;
        if (os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
        {
          v135 = **(v3 + 136);
          LODWORD(inInputBufferLists.mSampleTime) = 136315906;
          *(&inInputBufferLists.mSampleTime + 4) = "vpProcessUplink_v9.cpp";
          WORD2(inInputBufferLists.mHostTime) = 1024;
          *(&inInputBufferLists.mHostTime + 6) = 514;
          WORD1(inInputBufferLists.mRateScalar) = 1024;
          HIDWORD(inInputBufferLists.mRateScalar) = v132;
          LOWORD(inInputBufferLists.mWordClockTime) = 1024;
          *(&inInputBufferLists.mWordClockTime + 2) = v135;
          _os_log_impl(&dword_2724B4000, v134, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> ERROR: mPrimaryEpMicIndex is %d, but epmic only has %d channels", &inInputBufferLists, 0x1Eu);
        }
      }

      v136 = *(v3 + 1588);
      if (v136 && ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v9 = v506;
        CALegacyLog::log(v136, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProcessUplink_v9.cpp", 514, "ProcessDSPChain_Uplink", "ERROR: mPrimaryEpMicIndex is %d, but epmic only has %d channels", v132, **(v3 + 136));
        v132 = 0;
      }

      else
      {
        v132 = 0;
        v9 = v506;
      }
    }

    v137 = *(v3 + 136) + 16 * v132;
    Parameter = memcpy(*(*(v3 + 137) + 16), *(v137 + 16), *(v137 + 12));
  }

  v138 = (v3 + 17096);
  if ((*(v3 + 4696) & 0x20) != 0 && (*(v3 + 4712) & 0x20) != 0)
  {
    Parameter = *(v3 + 418);
    if (Parameter)
    {
      inInputBufferLists.mSampleTime = *(v3 + 136);
      inInputBufferLists.mHostTime = v3 + 17096;
      v529.mSampleTime = *(v3 + 137);
      v519 = 512;
      Parameter = AudioUnitProcessMultiple(Parameter, &v519, &buf, *(v3 + 129), 2u, &inInputBufferLists, 1u, &v529);
    }
  }

  v516 = 0;
  if ((*(v3 + 4690) & 0x80) != 0 && (*(v3 + 4706) & 0x80) != 0 && *(v3 + 372))
  {
    v139 = *(v3 + 2110);
    if ((*(v3 + 2111) - v139) <= 8)
    {
      goto LABEL_954;
    }

    Parameter = ECApplicator::apply(*(v139 + 8), &buf, v76, &v516, v3 + 1055, v3 + 1059, v3 + 1063, v3 + 1067, v3 + 1071, v3 + 1075);
    v140 = *(v3 + 129);
    if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
    {
      Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x1Du, v140, (v3 + 16928), &buf);
      v140 = *(v3 + 129);
      v141 = *(v3 + 421);
      if (*(v3 + 15881))
      {
        goto LABEL_292;
      }
    }

    else
    {
      v141 = *(v3 + 421);
    }

    if (*(v3 + 15882) == 1)
    {
LABEL_292:
      Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0xDu, v140, v141, &buf);
    }
  }

  v515 = 0;
  if ((*(v3 + 4691) & 1) != 0 && (*(v3 + 4707) & 1) != 0 && *(v3 + 373))
  {
    v142 = *(v3 + 2110);
    if ((*(v3 + 2111) - v142) <= 0x10)
    {
      goto LABEL_954;
    }

    Parameter = ECApplicator::apply(*(v142 + 16), &buf, v79, &v515, v3 + 1056, v3 + 1060, v3 + 1064, v3 + 1068, v3 + 1072, v3 + 1076);
    v143 = *(v3 + 129);
    if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
    {
      Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x1Eu, v143, (v3 + 16952), &buf);
      v143 = *(v3 + 129);
      v144 = *(v3 + 423);
      if (*(v3 + 15881))
      {
        goto LABEL_303;
      }
    }

    else
    {
      v144 = *(v3 + 423);
    }

    if (*(v3 + 15882) == 1)
    {
LABEL_303:
      Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0xEu, v143, v144, &buf);
    }
  }

  v514 = 0;
  if ((*(v3 + 4691) & 2) == 0 || (*(v3 + 4707) & 2) == 0 || !*(v3 + 374))
  {
    goto LABEL_315;
  }

  v145 = *(v3 + 2110);
  if ((*(v3 + 2111) - v145) <= 0x18)
  {
LABEL_954:
    std::vector<std::unique_ptr<VoiceProcessor::SampleRateConverter>>::__throw_out_of_range[abi:ne200100]();
  }

  Parameter = ECApplicator::apply(*(v145 + 24), &buf, v509, &v514, v3 + 1057, v3 + 1061, v3 + 1065, v3 + 1069, v3 + 1073, v3 + 1077);
  v146 = *(v3 + 129);
  if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
  {
    Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x1Fu, v146, (v3 + 16976), &buf);
    v146 = *(v3 + 129);
    v147 = *(v3 + 422);
    if (*(v3 + 15881))
    {
      goto LABEL_314;
    }
  }

  else
  {
    v147 = *(v3 + 422);
  }

  if (*(v3 + 15882) == 1)
  {
LABEL_314:
    Parameter = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0xFu, v146, v147, &buf);
  }

LABEL_315:
  if ((*(v3 + 8869) & 8) != 0 && (*(v3 + 8877) & 8) != 0)
  {
    if (*(v3 + 482))
    {
      *(v3 + 17128) = 0;
      if (*(v3 + 4691) & 1) != 0 && (*(v3 + 4707))
      {
        Parameter = *(v3 + 373);
        if (Parameter)
        {
          if (*(v3 + 2140))
          {
            LODWORD(inInputBufferLists.mSampleTime) = 0;
            Parameter = AudioUnitGetPropertyInfo(Parameter, 0xF3Cu, 0, 0, &inInputBufferLists, 0);
            if (!Parameter && LODWORD(inInputBufferLists.mSampleTime) == 4 * *v9)
            {
              v148 = *(*(v3 + 2140) + 16);
              Parameter = AudioUnitGetProperty(*(v3 + 373), 0xF3Cu, 0, 0, v148, &inInputBufferLists);
              v149 = Parameter;
              if (*(v3 + 489) == 1)
              {
                Parameter = AudioUnitSetProperty(*(v3 + 482), 0xF3Cu, 0, 0, v148, LODWORD(inInputBufferLists.mSampleTime));
              }

              *(v3 + 17128) = v149 == 0;
            }
          }
        }
      }
    }
  }

  if ((*(v3 + 4692) & 0x10) != 0 && (*(v3 + 4708) & 0x10) != 0 && *(v3 + 385))
  {
    v509 = (v3 + 17096);
    MEMORY[0x28223BE20](Parameter);
    *(&v501 - 6) = 0u;
    *(&v501 - 5) = 0u;
    *(&v501 - 3) = 0u;
    *(&v501 - 2) = 0u;
    *(&v501 - 4) = 0u;
    v500 = 0;
    *(&v501 - 24) = 5;
    *(&v501 - 11) = *(v3 + 1057);
    *(&v501 - 5) = *(v3 + 16936);
    *(&v501 - 9) = *(v3 + 1060);
    *(&v501 - 7) = *(v3 + 16984);
    v150 = *(v3 + 2139);
    v151 = *(*(v3 + 420) + 16);
    v507 = *(*(v3 + 421) + 16);
    v152 = v507;
    v153 = *(*(v3 + 423) + 16);
    v504 = v150;
    v505 = v153;
    v154 = *(*(v3 + 422) + 16);
    v155 = *(*(v3 + 2165) + 16);
    LODWORD(v533.realp) = 1048576000;
    v156 = *(v3 + 129);
    MEMORY[0x2743CCD80](v151, 1);
    MEMORY[0x2743CCD80](v155, 1, v154, 1, v155, 1, *(v3 + 129));
    MEMORY[0x2743CCD80](v155, 1, v152, 1, v155, 1, *(v3 + 129));
    MEMORY[0x2743CCE20](v155, 1, &v533, v155, 1, *(v3 + 129));
    *(&v501 - 3) = *(*(v3 + 2165) + 8);
    *&v530.mNumberBuffers = &v501 - 12;
    v534.realp = *(v3 + 137);
    v519 = 512;
    v157 = *&a2->mRateScalar;
    *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
    *&inInputBufferLists.mRateScalar = v157;
    v158 = *&a2->mSMPTETime.mHours;
    *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
    *&inInputBufferLists.mSMPTETime.mHours = v158;
    AudioUnitProcessMultiple(*(v3 + 385), &v519, &inInputBufferLists, *(v3 + 129), 1u, &v530, 1u, &v534);
    v159 = v504;
    memcpy((*(*(v3 + 2161) + 16) + 4 * *(v3 + 4320)), v504, 4 * *(v3 + 129));
    memcpy((*(*(v3 + 2162) + 16) + 4 * *(v3 + 4320)), v151, 4 * *(v3 + 129));
    v160 = v505;
    memcpy((*(*(v3 + 2163) + 16) + 4 * *(v3 + 4320)), v505, 4 * *(v3 + 129));
    v161 = v154;
    memcpy((*(*(v3 + 2215) + 16) + 4 * *(v3 + 4320)), v154, 4 * *(v3 + 129));
    v162 = v507;
    memcpy((*(*(v3 + 2164) + 16) + 4 * *(v3 + 4320)), v507, 4 * *(v3 + 129));
    LODWORD(v527) = 4 * *(v3 + 129);
    AudioUnitGetProperty(*(v3 + 385), 0x9087u, 0, 0, *(*(v3 + 2166) + 16), &v527);
    v163 = *(*(v3 + 2167) + 16) + 4 * *(v3 + 129);
    v529.mSampleTime = *(*(v3 + 2167) + 16);
    v529.mHostTime = v163;
    VPTimeFreqConverter_Analyze(*(v3 + 2168), *(*(v3 + 137) + 16), &v529);
    memcpy(v159, *(*(v3 + 2161) + 16), 4 * *(v3 + 129));
    memcpy(v151, *(*(v3 + 2162) + 16), 4 * *(v3 + 129));
    memcpy(v160, *(*(v3 + 2163) + 16), 4 * *(v3 + 129));
    memcpy(v161, *(*(v3 + 2215) + 16), 4 * *(v3 + 129));
    memcpy(v162, *(*(v3 + 2164) + 16), 4 * *(v3 + 129));
    memmove(*(*(v3 + 2161) + 16), (*(*(v3 + 2161) + 16) + 4 * *(v3 + 129)), 4 * *(v3 + 4320));
    memmove(*(*(v3 + 2162) + 16), (*(*(v3 + 2162) + 16) + 4 * *(v3 + 129)), 4 * *(v3 + 4320));
    memmove(*(*(v3 + 2163) + 16), (*(*(v3 + 2163) + 16) + 4 * *(v3 + 129)), 4 * *(v3 + 4320));
    memmove(*(*(v3 + 2215) + 16), (*(*(v3 + 2215) + 16) + 4 * *(v3 + 129)), 4 * *(v3 + 4320));
    memmove(*(*(v3 + 2164) + 16), (*(*(v3 + 2164) + 16) + 4 * *(v3 + 129)), 4 * *(v3 + 4320));
    if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
    {
      VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x7Cu, *(v3 + 129), *(v3 + 137), &inInputBufferLists);
    }

    v138 = v509;
  }

  v164 = *(v3 + 522);
  v165 = *(v3 + 2139);
  v166 = *(*(v3 + 514) + 16) + 4 * *(v3 + 129);
  inInputBufferLists.mSampleTime = *(*(v3 + 514) + 16);
  inInputBufferLists.mHostTime = v166;
  VPTimeFreqConverter_Analyze(v164, v165, &inInputBufferLists);
  v513 = 0.0;
  if ((*(v3 + 4690) & 0x40) != 0 && (*(v3 + 4706) & 0x40) != 0)
  {
    if (*(v3 + 371))
    {
      v168 = *(v3 + 516);
      v169 = *(v3 + 2115);
      v170 = *(*(v3 + 430) + 16) + 4 * *(v3 + 129);
      inInputBufferLists.mSampleTime = *(*(v3 + 430) + 16);
      inInputBufferLists.mHostTime = v170;
      VPTimeFreqConverter_Analyze(v168, v169, &inInputBufferLists);
      v171 = *(v3 + 520);
      v172 = *(*(v3 + 420) + 16);
      v173 = *(*(v3 + 508) + 16) + 4 * *(v3 + 129);
      inInputBufferLists.mSampleTime = *(*(v3 + 508) + 16);
      inInputBufferLists.mHostTime = v173;
      VPTimeFreqConverter_Analyze(v171, v172, &inInputBufferLists);
      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
      {
        Property = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x12u, *(v3 + 129), *(v3 + 430), &buf);
      }
    }
  }

  if ((*(v3 + 4690) & 0x80) != 0 && (*(v3 + 4706) & 0x80) != 0)
  {
    if (*(v3 + 372))
    {
      v174 = *(v3 + 517);
      v175 = *(v3 + 2118);
      v176 = *(*(v3 + 509) + 16) + 4 * *(v3 + 129);
      inInputBufferLists.mSampleTime = *(*(v3 + 509) + 16);
      inInputBufferLists.mHostTime = v176;
      VPTimeFreqConverter_Analyze(v174, v175, &inInputBufferLists);
      v177 = *(v3 + 521);
      v178 = *(*(v3 + 421) + 16);
      v179 = *(*(v3 + 508) + 32) + 4 * *(v3 + 129);
      inInputBufferLists.mSampleTime = *(*(v3 + 508) + 32);
      inInputBufferLists.mHostTime = v179;
      VPTimeFreqConverter_Analyze(v177, v178, &inInputBufferLists);
      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
      {
        Property = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x13u, *(v3 + 129), *(v3 + 509), &buf);
      }
    }
  }

  v180 = *(v3 + 586);
  if ((v180 & 0x1000000) != 0)
  {
    v181 = *(v3 + 588);
    if ((v181 & 0x1000000) != 0)
    {
      if (*(v3 + 373))
      {
        if ((v180 & v181 & 0x80000000000) != 0)
        {
          Property = *(v3 + 392);
          if (Property)
          {
            Property = AudioUnitGetParameter(Property, 0x2Bu, 0, 0, &v513);
          }
        }

        if (v513 != 0.0 || (*(v3 + 4694) & 1) != 0 && (*(v3 + 4710) & 1) != 0 && *(v3 + 397))
        {
          v182 = *(v3 + 518);
          v183 = *(v3 + 2121);
          v184 = *(*(v3 + 2179) + 16) + 4 * *(v3 + 129);
          inInputBufferLists.mSampleTime = *(*(v3 + 2179) + 16);
          inInputBufferLists.mHostTime = v184;
          VPTimeFreqConverter_Analyze(v182, v183, &inInputBufferLists);
          v185 = *(v3 + 2144);
          v186 = *(*(v3 + 423) + 16);
          v187 = *(*(v3 + 508) + 48) + 4 * *(v3 + 129);
          inInputBufferLists.mSampleTime = *(*(v3 + 508) + 48);
          inInputBufferLists.mHostTime = v187;
          VPTimeFreqConverter_Analyze(v185, v186, &inInputBufferLists);
          if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
          {
            Property = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x14u, *(v3 + 129), *(v3 + 2179), &buf);
          }
        }
      }
    }
  }

  if ((*(v3 + 4691) & 2) != 0 && (*(v3 + 4707) & 2) != 0)
  {
    if (*(v3 + 374))
    {
      v188 = *(v3 + 519);
      v189 = *(v3 + 2124);
      v190 = *(*(v3 + 510) + 16) + 4 * *(v3 + 129);
      inInputBufferLists.mSampleTime = *(*(v3 + 510) + 16);
      inInputBufferLists.mHostTime = v190;
      VPTimeFreqConverter_Analyze(v188, v189, &inInputBufferLists);
      v191 = *(v3 + 2108);
      v192 = *(*(v3 + 422) + 16);
      v193 = *(*(v3 + 508) + 64) + 4 * *(v3 + 129);
      inInputBufferLists.mSampleTime = *(*(v3 + 508) + 64);
      inInputBufferLists.mHostTime = v193;
      VPTimeFreqConverter_Analyze(v191, v192, &inInputBufferLists);
      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
      {
        Property = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x15u, *(v3 + 129), *(v3 + 510), &buf);
      }
    }
  }

  v194 = *(v3 + 586);
  if ((v194 & 0x1000) != 0 && (*(v3 + 4705) & 0x10) != 0)
  {
    Property = *(v3 + 361);
    if (Property)
    {
      MEMORY[0x28223BE20](Property);
      *(&v501 - 6) = 2;
      *(&v501 - 5) = *(v3 + 1057);
      *(&v501 - 3) = *(v3 + 16936);
      v534.realp = (&v501 - 6);
      v534.imagp = 0;
      v529.mSampleTime = *(v3 + 2184);
      memset(&v529.mHostTime, 0, 24);
      v519 = 512;
      v195 = *&a2->mRateScalar;
      *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
      *&inInputBufferLists.mRateScalar = v195;
      v196 = *&a2->mSMPTETime.mHours;
      *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&inInputBufferLists.mSMPTETime.mHours = v196;
      AudioUnitProcessMultiple(v197, &v519, &inInputBufferLists, *(v3 + 129), 2u, &v534, 4u, &v529);
      v198 = *(v3 + 2187);
      v199 = *(*(v3 + 2184) + 16);
      v200 = *(*(v3 + 2185) + 16) + 4 * *(v3 + 129);
      *&v530.mNumberBuffers = *(*(v3 + 2185) + 16);
      *&v530.mBuffers[0].mNumberChannels = v200;
      VPTimeFreqConverter_Analyze(v198, v199, &v530);
      if (*(v3 + 17632) == 1)
      {
        v201 = *(v3 + 129);
        *&v530.mNumberBuffers = *(*(v3 + 430) + 16);
        *&v530.mBuffers[0].mNumberChannels = *&v530.mNumberBuffers + 4 * v201;
        v533.realp = *(*(v3 + 2185) + 16);
        v533.imagp = &v533.realp[v201];
        v202 = *(*(v3 + 2186) + 16);
        v203 = &v202[v201];
        vDSP_zvabs(&v530, 1, v202, 1, v201);
        vDSP_zvabs(&v533, 1, v203, 1, *(v3 + 129));
        vDSP_vmin(v202, 1, v203, 1, v202, 1, *(v3 + 129));
        LODWORD(v527) = 507307272;
        MEMORY[0x2743CCE00](v203, 1, &v527, v203, 1, *(v3 + 129));
        vDSP_vdiv(v203, 1, v202, 1, v203, 1, *(v3 + 129));
        MEMORY[0x2743CCDD0](v533.realp, 1, v203, 1, v533.realp, 1, *(v3 + 129));
        Property = MEMORY[0x2743CCDD0](v533.imagp, 1, v203, 1, v533.imagp, 1, *(v3 + 129));
      }

      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
      {
        Property = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x61u, *(v3 + 129), *(v3 + 2185), &inInputBufferLists);
      }

      v194 = *(v3 + 586);
    }
  }

  if ((v194 & 0x20000000) != 0 && (*(v3 + 4707) & 0x20) != 0)
  {
    Property = *(v3 + 378);
    if (Property)
    {
      v529.mSampleTime = *(v3 + 430);
      *&v530.mNumberBuffers = v529.mSampleTime;
      v519 = 512;
      v204 = *&a2->mRateScalar;
      *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
      *&inInputBufferLists.mRateScalar = v204;
      v205 = *&a2->mSMPTETime.mHours;
      *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&inInputBufferLists.mSMPTETime.mHours = v205;
      Property = AudioUnitProcessMultiple(Property, &v519, &inInputBufferLists, *(v3 + 129), 1u, &v529, 1u, &v530);
      if (!Property)
      {
        Property = AudioUnitGetProperty(*(v3 + 378), 0x1450u, 0, 0, *(*(v3 + 2183) + 16), (*(v3 + 2183) + 12));
        if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
        {
          Property = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x20u, (*(v3 + 129) + 1), *(v3 + 2183), &inInputBufferLists);
        }
      }

      v194 = *(v3 + 586);
    }
  }

  if ((v194 & 0x100000000000) != 0)
  {
    v206 = *(v3 + 588);
    if ((v206 & 0x100000000000) != 0)
    {
      Property = *(v3 + 393);
      if (Property)
      {
        if ((v194 & v206 & 0x1000000000000) == 0 || !*(v3 + 397))
        {
          v207 = *(v3 + 1063);
          if (v207 == 0.0)
          {
            v208 = *(v3 + 2109);
            v209 = *(*(v3 + 426) + 16);
            v210 = *(*(v3 + 437) + 16) + 4 * *(v3 + 129);
            inInputBufferLists.mSampleTime = *(*(v3 + 437) + 16);
            inInputBufferLists.mHostTime = v210;
            VPTimeFreqConverter_Analyze(v208, v209, &inInputBufferLists);
            v207 = *(v3 + 1063);
            Property = *(v3 + 393);
          }

          AudioUnitSetParameter(Property, 6u, 0, 0, v207, 0);
          AudioUnitSetParameter(*(v3 + 393), 7u, 0, 0, *(v3 + 1067), 0);
          AudioUnitSetParameter(*(v3 + 393), 0xDu, 0, 0, *(v3 + 1071), 0);
          memcpy(*(*(v3 + 435) + 16), *(*(v3 + 508) + 32), *(v3 + 1079));
          v211 = *(v3 + 435);
          v529.mSampleTime = *(v3 + 509);
          v529.mHostTime = v211;
          v529.mRateScalar = *(v3 + 515);
          memset(&v529.mWordClockTime, 0, 24);
          *&v530.mNumberBuffers = *(v3 + 433);
          *&v530.mBuffers[0].mNumberChannels = 0;
          v530.mBuffers[0].mData = *(v3 + 504);
          v212 = *&a2->mRateScalar;
          *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
          *&inInputBufferLists.mRateScalar = v212;
          v213 = *&a2->mSMPTETime.mHours;
          *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
          *&inInputBufferLists.mSMPTETime.mHours = v213;
          v519 = 512;
          Property = AudioUnitProcessMultiple(*(v3 + 393), &v519, &inInputBufferLists, *(v3 + 129), 6u, &v529, 3u, &v530);
          v214 = *(v3 + 129);
          if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
          {
            Property = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x25u, v214, *(v3 + 433), &inInputBufferLists);
            v214 = *(v3 + 129);
            v215 = *(v3 + 504);
            if (*(v3 + 15881))
            {
              goto LABEL_395;
            }
          }

          else
          {
            v215 = *(v3 + 504);
          }

          if (*(v3 + 15882) != 1)
          {
LABEL_396:
            v194 = *(v3 + 586);
            goto LABEL_397;
          }

LABEL_395:
          Property = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x52u, v214, v215, &inInputBufferLists);
          goto LABEL_396;
        }
      }
    }
  }

LABEL_397:
  v512 = 0;
  if ((v194 & 0x40000000) != 0 && (*(v3 + 4707) & 0x40) != 0 && *(v3 + 379))
  {
    v216 = 1;
    v217 = 1;
  }

  else if ((v194 & 0x200000000) != 0 && (*(v3 + 4708) & 2) != 0)
  {
    v216 = 0;
    v217 = *(v3 + 382) != 0;
  }

  else
  {
    v216 = 0;
    v217 = 0;
  }

  v218 = v194 & 0x80000000;
  if ((v194 & 0x80000000) != 0 && (*(v3 + 4707) & 0x80) != 0 && *(v3 + 380))
  {
    v219 = 1;
    v216 = 1;
    v220 = 1;
    if ((v194 & 0x100000000) == 0)
    {
      goto LABEL_422;
    }
  }

  else
  {
    if ((v194 & 0x100000000) == 0)
    {
      v219 = 0;
      v220 = 1;
      goto LABEL_422;
    }

    v220 = 1;
    if (*(v3 + 4708))
    {
      v221 = *(v3 + 381);
      v219 = v221 != 0;
      if (v221)
      {
        v220 = 2;
      }

      else
      {
        v220 = 1;
      }
    }

    else
    {
      v219 = 0;
    }
  }

  v222 = *(v3 + 588);
  if ((v222 & 0x100000000) != 0 && *(v3 + 381) && (v194 & v222 & 0x200000000) != 0 && *(v3 + 382))
  {
    v220 = 2;
    v216 = 2;
  }

LABEL_422:
  if ((v194 & 0x40000000) == 0)
  {
    goto LABEL_439;
  }

  if ((*(v3 + 4707) & 0x40) == 0)
  {
    goto LABEL_439;
  }

  Property = *(v3 + 379);
  if (!Property)
  {
    goto LABEL_439;
  }

  AudioUnitSetProperty(Property, 0x457u, 0, 0, v3 + 2332, 4u);
  if ((*(v3 + 4691) & 0x80) == 0 || (*(v3 + 4707) & 0x80) == 0)
  {
    v223 = *(v3 + 379);
LABEL_428:
    v224 = 2.0;
    goto LABEL_429;
  }

  v223 = *(v3 + 379);
  if (!*(v3 + 380))
  {
    goto LABEL_428;
  }

  v224 = *(v3 + 688);
LABEL_429:
  AudioUnitSetParameter(v223, 0x1Bu, 0, 0, v224, 0);
  v225 = *(v3 + 586);
  if ((v225 & 0x400000) != 0)
  {
    v226 = *(v3 + 588);
    if ((v226 & 0x400000) != 0 && *(v3 + 371) && (v225 & v226 & 0x800000) != 0 && *(v3 + 372))
    {
      AudioUnitSetParameter(*(v3 + 379), 0x3Fu, 0, 0, *(v3 + 1062) * *(v3 + 1063), 0);
    }
  }

  *&v227 = *(v3 + 139) + 24;
  *&v228 = *(v3 + 140) + 24;
  if (**(v3 + 136) <= 2u)
  {
    *&v529.mSampleTime = *(v3 + 139) + 24;
    *&v529.mHostTime = v228;
    v529.mRateScalar = 0.0;
    v529.mWordClockTime = v138;
    *&v529.mSMPTETime.mSubframes = *(v3 + 210);
  }

  else
  {
    v229 = *(v3 + 141) + 24;
    *&v529.mSMPTETime.mSubframes = *(v3 + 210);
    v529.mSampleTime = v228;
    v529.mHostTime = v229;
    v529.mRateScalar = v227;
    v529.mWordClockTime = v138;
  }

  *&v530.mNumberBuffers = 0;
  v519 = 512;
  AudioUnitSetParameter(*(v3 + 379), 0x2Cu, 0, 0, *(v3 + 1098), 0);
  v230 = *&a2->mRateScalar;
  *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
  *&inInputBufferLists.mRateScalar = v230;
  v231 = *&a2->mSMPTETime.mHours;
  *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
  *&inInputBufferLists.mSMPTETime.mHours = v231;
  Property = AudioUnitProcessMultiple(*(v3 + 379), &v519, &inInputBufferLists, *(v3 + 129), 6u, &v529, 1u, &v530);
  v194 = *(v3 + 586);
  v218 = v194 & 0x80000000;
LABEL_439:
  if (!v218 || (*(v3 + 4707) & 0x80) == 0 || !*(v3 + 380))
  {
    if ((v194 & 0x100000000) == 0 || (*(v3 + 4708) & 1) == 0 || !*(v3 + 381))
    {
      goto LABEL_476;
    }

    memcpy(*(*(v3 + 436) + 16), *(*(v3 + 430) + 16), 8 * *(v3 + 129));
    memcpy(*(*(v3 + 436) + 32), *(*(v3 + 510) + 16), 8 * *(v3 + 129));
    v527 = *(v3 + 436);
    v240 = *(v3 + 435);
    v534.realp = *(v3 + 431);
    v534.imagp = v240;
    v241 = *&a2->mRateScalar;
    *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
    *&inInputBufferLists.mRateScalar = v241;
    v242 = *&a2->mSMPTETime.mHours;
    *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
    *&inInputBufferLists.mSMPTETime.mHours = v242;
    Property = AudioUnitProcessMultiple(*(v3 + 381), &v519, &inInputBufferLists, *(v3 + 129), 1u, &v527, 2u, &v534);
    v243 = *(v3 + 129);
    if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
    {
      Property = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x18u, v243, v534.realp, &inInputBufferLists);
      v243 = *(v3 + 129);
      imagp = v534.imagp;
      if (*(v3 + 15881))
      {
        goto LABEL_460;
      }
    }

    else
    {
      imagp = v534.imagp;
    }

    if (*(v3 + 15882) != 1)
    {
LABEL_461:
      if ((*(v3 + 4692) & 2) == 0 || (*(v3 + 4708) & 2) == 0 || !*(v3 + 382))
      {
        goto LABEL_476;
      }

      memcpy(*(*(v3 + 437) + 16), *(*(v3 + 430) + 16), 4 * (2 * *(v3 + 129)));
      memcpy(*(*(v3 + 432) + 16), *(*(v3 + 433) + 16), 4 * (2 * *(v3 + 129)));
      LODWORD(v525) = 1092616192;
      v245 = *(v3 + 435);
      *&v530.mNumberBuffers = *(v3 + 431);
      *&v530.mBuffers[0].mNumberChannels = v245;
      v246 = *(v3 + 510);
      v530.mBuffers[0].mData = *(v3 + 437);
      v531 = v246;
      v532 = *(v3 + 432);
      v247 = *(v3 + 433);
      v248 = 10.0;
      v533.realp = *(v3 + 430);
      v533.imagp = v247;
      if ((*(v3 + 4694) & 0x80) != 0 && (*(v3 + 4710) & 0x80) != 0)
      {
        v249 = *(v3 + 404);
        if (v249)
        {
          AudioUnitGetParameter(v249, 9u, 0, 0, &v525);
          v248 = *&v525;
        }
      }

      AudioUnitSetParameter(*(v3 + 382), 0xAu, 0, 0, v248, 0);
      AudioUnitSetParameter(*(v3 + 382), 0x17u, 0, 0, *(v3 + 4189), 0);
      v250 = *&a2->mRateScalar;
      *&v529.mSampleTime = *&a2->mSampleTime;
      *&v529.mRateScalar = v250;
      v251 = *&a2->mSMPTETime.mHours;
      *&v529.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&v529.mSMPTETime.mHours = v251;
      Property = AudioUnitProcessMultiple(*(v3 + 382), &v519, &v529, *(v3 + 129), 5u, &v530, 2u, &v533);
      v235 = *(v3 + 129);
      if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
      {
        Property = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x1Au, v235, v533.realp, &v529);
        v235 = *(v3 + 129);
        v236 = v533.imagp;
        if (*(v3 + 15881))
        {
          goto LABEL_475;
        }
      }

      else
      {
        v236 = v533.imagp;
      }

      if (*(v3 + 15882) != 1)
      {
        goto LABEL_476;
      }

LABEL_475:
      p_inInputBufferLists = &v529;
      v238 = v3;
      v239 = 27;
      goto LABEL_448;
    }

LABEL_460:
    Property = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x19u, v243, imagp, &inInputBufferLists);
    goto LABEL_461;
  }

  memcpy(*(*(v3 + 436) + 16 * *(v3 + 1048) + 16), *(*(v3 + 430) + 16), 4 * (2 * *(v3 + 129)));
  memcpy(*(*(v3 + 436) + 16 * *(v3 + 1049) + 16), *(*(v3 + 509) + 16), 4 * (2 * *(v3 + 129)));
  if (*(v3 + 1074) == 0.0 && *(v3 + 1075) == 0.0)
  {
    v232 = 0.0;
  }

  else
  {
    v232 = 1.0;
  }

  AudioUnitSetParameter(*(v3 + 380), 0x20u, 0, 0, v232, 0);
  v529.mSampleTime = *(v3 + 436);
  *&v530.mNumberBuffers = *(v3 + 431);
  v233 = *&a2->mRateScalar;
  *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
  *&inInputBufferLists.mRateScalar = v233;
  v234 = *&a2->mSMPTETime.mHours;
  *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
  *&inInputBufferLists.mSMPTETime.mHours = v234;
  v519 = 512;
  AudioUnitProcessMultiple(*(v3 + 380), &v519, &inInputBufferLists, *(v3 + 129), 1u, &v529, 1u, &v530);
  LODWORD(v534.realp) = 8 * *(v3 + 129);
  AudioUnitGetProperty(*(v3 + 380), 0xE7Au, 0, 0, *(*(v3 + 541) + 16), &v534);
  LODWORD(v534.realp) = 8 * *(v3 + 129);
  Property = AudioUnitGetProperty(*(v3 + 380), 0xE79u, 0, 0, *(*(v3 + 541) + 32), &v534);
  v235 = *(v3 + 129);
  v236 = *(v3 + 431);
  if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
  {
    p_inInputBufferLists = &inInputBufferLists;
    v238 = v3;
    v239 = 10;
LABEL_448:
    Property = VoiceProcessorV2::SaveFilesWriteSignal(v238, v239, v235, v236, p_inInputBufferLists);
  }

LABEL_476:
  MEMORY[0x28223BE20](Property);
  v252 = (&v501 - 8);
  *(&v501 - 3) = 0u;
  *(&v501 - 2) = 0u;
  *(&v501 - 4) = 0u;
  *(&v501 - 16) = 3;
  *&v255 = MEMORY[0x28223BE20](v253);
  v509 = (&v501 - 8);
  v500 = 0;
  *(&v501 - 3) = v255;
  *(&v501 - 2) = v255;
  *(&v501 - 4) = v255;
  *(&v501 - 16) = v256;
  v257 = *(v3 + 586);
  if ((v257 & 0x400000000) != 0 && (*(v3 + 4708) & 4) != 0 && *(v3 + 383) || (v257 & 0x800000000) != 0 && (*(v3 + 4708) & 8) != 0 && *(v3 + 384) || (v257 & 0x2000000000) != 0 && (*(v3 + 4708) & 0x20) != 0 && *(v3 + 386))
  {
    *(&v501 - 7) = *(*(v3 + 430) + 8);
    *(&v501 - 5) = *(*(v3 + 509) + 8);
    *(&v501 - 3) = *(*(v3 + 510) + 8);
    v258 = *(v3 + 508);
    v259 = v509;
    v509->mBuffers[0] = *(v258 + 8);
    *&v259[1].mNumberBuffers = *(v258 + 24);
    *&v259[1].mBuffers[0].mData = *(v258 + 56);
  }

  if ((v257 & 0x400000000) != 0 && (*(v3 + 4708) & 4) != 0 && *(v3 + 383))
  {
    p_mNumberBuffers = (&v501 - 8);
    v503 = v220;
    LODWORD(v504) = v219;
    LODWORD(v505) = v216;
    LODWORD(v507) = v217;
    v260 = 0;
    v534.realp = *(v3 + 527);
    LODWORD(v534.imagp) = *(v3 + 1057);
    v533.realp = *(v3 + 529);
    LODWORD(v533.imagp) = *(v3 + 1061);
    v527 = *(v3 + 531);
    v528 = *(v3 + 1065);
    v525 = *(v3 + 533);
    v526 = *(v3 + 1069);
    v523 = *(v3 + 535);
    v524 = *(v3 + 1073);
    do
    {
      AudioUnitSetParameter(*(v3 + 383), 9u, 4u, v260, *(&v534.realp + v260), 0);
      AudioUnitSetParameter(*(v3 + 383), 0xAu, 4u, v260, *(&v533.realp + v260), 0);
      AudioUnitSetParameter(*(v3 + 383), 0xBu, 4u, v260, *(&v527 + v260), 0);
      AudioUnitSetParameter(*(v3 + 383), 0xCu, 4u, v260, *(&v525 + v260), 0);
      AudioUnitSetParameter(*(v3 + 383), 0xDu, 4u, v260, *(&v523 + v260), 0);
      ++v260;
    }

    while (v260 != 3);
    v252 = p_mNumberBuffers;
    *&v529.mSampleTime = p_mNumberBuffers;
    v529.mHostTime = v509;
    *&v530.mNumberBuffers = p_mNumberBuffers;
    *&v530.mBuffers[0].mNumberChannels = v509;
    v519 = 512;
    v261 = *&a2->mRateScalar;
    *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
    *&inInputBufferLists.mRateScalar = v261;
    v262 = *&a2->mSMPTETime.mHours;
    *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
    *&inInputBufferLists.mSMPTETime.mHours = v262;
    AudioUnitProcessMultiple(*(v3 + 383), &v519, &inInputBufferLists, *(v3 + 129), 2u, &v529, 2u, &v530);
    v263 = *(v3 + 129);
    if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
    {
      VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x6Bu, v263, v252, &inInputBufferLists);
      v263 = *(v3 + 129);
      v217 = v507;
      v216 = v505;
      v220 = v503;
      v219 = v504;
      if (*(v3 + 15881))
      {
        goto LABEL_497;
      }
    }

    else
    {
      v217 = v507;
      v216 = v505;
      v220 = v503;
      v219 = v504;
    }

    if (*(v3 + 15882) != 1)
    {
LABEL_498:
      v257 = *(v3 + 586);
      goto LABEL_499;
    }

LABEL_497:
    VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x6Cu, v263, v509, &inInputBufferLists);
    goto LABEL_498;
  }

LABEL_499:
  if ((v257 & 0x800000000) != 0 && (*(v3 + 4708) & 8) != 0 && *(v3 + 384))
  {
    p_mNumberBuffers = &v252->mNumberBuffers;
    v503 = v220;
    LODWORD(v504) = v219;
    LODWORD(v505) = v216;
    LODWORD(v507) = v217;
    v264 = 0;
    v534.realp = *(v3 + 527);
    LODWORD(v534.imagp) = *(v3 + 1057);
    v533.realp = *(v3 + 529);
    LODWORD(v533.imagp) = *(v3 + 1061);
    v527 = *(v3 + 531);
    v528 = *(v3 + 1065);
    v525 = *(v3 + 533);
    v526 = *(v3 + 1069);
    v523 = *(v3 + 535);
    v524 = *(v3 + 1073);
    do
    {
      AudioUnitSetParameter(*(v3 + 384), 0x12u, 4u, v264, *(&v534.realp + v264), 0);
      AudioUnitSetParameter(*(v3 + 384), 0x13u, 4u, v264, *(&v533.realp + v264), 0);
      AudioUnitSetParameter(*(v3 + 384), 0x14u, 4u, v264, *(&v527 + v264), 0);
      AudioUnitSetParameter(*(v3 + 384), 0x15u, 4u, v264, *(&v525 + v264), 0);
      AudioUnitSetParameter(*(v3 + 384), 0x16u, 4u, v264, *(&v523 + v264), 0);
      ++v264;
    }

    while (v264 != 3);
    v252 = p_mNumberBuffers;
    *&v529.mSampleTime = p_mNumberBuffers;
    v529.mHostTime = v509;
    *&v530.mNumberBuffers = p_mNumberBuffers;
    *&v530.mBuffers[0].mNumberChannels = v509;
    v519 = 512;
    v265 = *&a2->mRateScalar;
    *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
    *&inInputBufferLists.mRateScalar = v265;
    v266 = *&a2->mSMPTETime.mHours;
    *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
    *&inInputBufferLists.mSMPTETime.mHours = v266;
    AudioUnitProcessMultiple(*(v3 + 384), &v519, &inInputBufferLists, *(v3 + 129), 2u, &v529, 2u, &v530);
    v267 = *(v3 + 129);
    if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
    {
      VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x6Du, v267, v252, &inInputBufferLists);
      v267 = *(v3 + 129);
      v217 = v507;
      v216 = v505;
      v220 = v503;
      v219 = v504;
      if (*(v3 + 15881))
      {
        goto LABEL_510;
      }
    }

    else
    {
      v217 = v507;
      v216 = v505;
      v220 = v503;
      v219 = v504;
    }

    if (*(v3 + 15882) != 1)
    {
LABEL_511:
      v257 = *(v3 + 586);
      goto LABEL_512;
    }

LABEL_510:
    VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x6Eu, v267, v509, &inInputBufferLists);
    goto LABEL_511;
  }

LABEL_512:
  if ((v257 & 0x2000000000) != 0 && (*(v3 + 4708) & 0x20) != 0 && *(v3 + 386))
  {
    p_mNumberBuffers = &v252->mNumberBuffers;
    v503 = v220;
    LODWORD(v504) = v219;
    LODWORD(v505) = v216;
    LODWORD(v507) = v217;
    v268 = 0;
    v533.realp = *(v3 + 527);
    LODWORD(v533.imagp) = *(v3 + 1057);
    v527 = *(v3 + 529);
    v528 = *(v3 + 1061);
    v525 = *(v3 + 531);
    v526 = *(v3 + 1065);
    v523 = *(v3 + 533);
    v524 = *(v3 + 1069);
    v521 = *(v3 + 535);
    v522 = *(v3 + 1073);
    do
    {
      AudioUnitSetParameter(*(v3 + 386), 0x64u, 4u, v268, *(&v533.realp + v268), 0);
      AudioUnitSetParameter(*(v3 + 386), 0x65u, 4u, v268, *(&v527 + v268), 0);
      AudioUnitSetParameter(*(v3 + 386), 0x66u, 4u, v268, *(&v525 + v268), 0);
      AudioUnitSetParameter(*(v3 + 386), 0x67u, 4u, v268, *(&v523 + v268), 0);
      AudioUnitSetParameter(*(v3 + 386), 0x68u, 4u, v268, *(&v521 + v268), 0);
      ++v268;
    }

    while (v268 != 3);
    *&v530.mNumberBuffers = 1;
    *&v530.mBuffers[0].mNumberChannels = 0;
    v530.mBuffers[0].mData = 0;
    v530.mBuffers[0] = *(*(v3 + 508) + 8);
    v534.realp = p_mNumberBuffers;
    v534.imagp = &v509->mNumberBuffers;
    v529.mSampleTime = *(v3 + 430);
    v529.mHostTime = &v530;
    v529.mRateScalar = 0.0;
    v529.mWordClockTime = 0;
    v519 = 512;
    v269 = *&a2->mRateScalar;
    *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
    *&inInputBufferLists.mRateScalar = v269;
    v270 = *&a2->mSMPTETime.mHours;
    *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
    *&inInputBufferLists.mSMPTETime.mHours = v270;
    AudioUnitProcessMultiple(*(v3 + 386), &v519, &inInputBufferLists, *(v3 + 129), 2u, &v534, 4u, &v529);
    HIDWORD(v511) = 0;
    AudioUnitGetParameter(*(v3 + 386), 0xAu, 0, 0, &v511 + 1);
    v271 = *(v3 + 129);
    if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
    {
      VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x66u, v271, *(v3 + 430), &inInputBufferLists);
      v271 = *(v3 + 129);
      v217 = v507;
      v216 = v505;
      v220 = v503;
      v219 = v504;
      if (*(v3 + 15881))
      {
        goto LABEL_523;
      }
    }

    else
    {
      v217 = v507;
      v216 = v505;
      v220 = v503;
      v219 = v504;
    }

    if (*(v3 + 15882) != 1)
    {
LABEL_524:
      AudioUnitGetParameter(*(v3 + 386), 0x64u, 4u, 0, v3 + 1054);
      AudioUnitGetParameter(*(v3 + 386), 0x65u, 4u, 0, v3 + 1058);
      AudioUnitGetParameter(*(v3 + 386), 0x66u, 4u, 0, v3 + 1062);
      AudioUnitGetParameter(*(v3 + 386), 0x67u, 4u, 0, v3 + 1066);
      AudioUnitGetParameter(*(v3 + 386), 0x68u, 4u, 0, v3 + 1070);
      goto LABEL_525;
    }

LABEL_523:
    VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x67u, v271, &v530, &inInputBufferLists);
    goto LABEL_524;
  }

LABEL_525:
  if (v216 == 2)
  {
    VoiceProcessorV4::SignalParamSwitchMixNF(v3, v219, v217, &v512);
  }

  else if (v216 == 1)
  {
    VoiceProcessorV2::SignalParamSwitchMix(v3, v219, v217, &v512, v254);
  }

  if (v220 == 1)
  {
    VoiceProcessorV2::TimeAlignedReferenceAndOtherHandling(v3, HIBYTE(v518), v516, v219, v512);
  }

  else
  {
    VoiceProcessorV4::TimeAlignedReferenceAndOtherHandlingNF(v3, HIBYTE(v518), v514, v219, v512);
  }

  LODWORD(v527) = 0;
  if ((*(v3 + 586) & 0x2000000000000) != 0 && (*(v3 + 588) & 0x2000000000000) != 0)
  {
    v272 = *(v3 + 398);
    if (v272)
    {
      MEMORY[0x28223BE20](v272);
      *(&v501 - 3) = 0u;
      *(&v501 - 2) = 0u;
      *(&v501 - 4) = 0u;
      *(&v501 - 16) = 3;
      *&v275 = MEMORY[0x28223BE20](v273);
      v500 = 0;
      *(&v501 - 3) = v275;
      *(&v501 - 2) = v275;
      *(&v501 - 4) = v275;
      *(&v501 - 16) = v276;
      *(v277 - 56) = *(*(v3 + 430) + 8);
      *(v277 - 40) = *(*(v3 + 433) + 8);
      *(v277 - 24) = *(*(v3 + 2179) + 8);
      v278 = *(v3 + 508);
      *(&v501 - 7) = *(v278 + 8);
      *(&v501 - 5) = *(v278 + 24);
      *(&v501 - 3) = *(v278 + 40);
      v529.mSampleTime = v279;
      v529.mHostTime = (&v501 - 8);
      *&v530.mNumberBuffers = *(v3 + 1090);
      if ((v280 & v281 & 0x400000000000000) != 0)
      {
        v282 = *(v3 + 407);
        if (v282)
        {
          LODWORD(inInputBufferLists.mSampleTime) = 0;
          AudioUnitGetParameter(v282, 0, 0, 0, &inInputBufferLists);
          AudioUnitSetParameter(*(v3 + 398), 0, 0, 0, *&inInputBufferLists.mSampleTime, 0);
          AudioUnitGetParameter(*(v3 + 398), 0xDu, 0, 0, &v527);
          v274 = *(v3 + 398);
        }
      }

      v283 = *&a2->mRateScalar;
      *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
      *&inInputBufferLists.mRateScalar = v283;
      v284 = *&a2->mSMPTETime.mHours;
      *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&inInputBufferLists.mSMPTETime.mHours = v284;
      AudioUnitProcessMultiple(v274, &v519, &inInputBufferLists, *(v3 + 129), 2u, &v529, 2u, &v530);
      v285 = *(v3 + 129);
      if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
      {
        VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x81u, v285, *(v3 + 2180), &inInputBufferLists);
        v285 = *(v3 + 129);
        v286 = *(v3 + 2181);
        if (*(v3 + 15881))
        {
          goto LABEL_544;
        }
      }

      else
      {
        v286 = *(v3 + 2181);
      }

      if (*(v3 + 15882) == 1)
      {
LABEL_544:
        VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x82u, v285, v286, &inInputBufferLists);
      }
    }
  }

  v287 = memcpy(*(*(v3 + 434) + 16), *(*(v3 + 508) + 16), *(v3 + 1079));
  v288 = *(v3 + 586);
  if ((v288 & 0x1000000) != 0 && (*(v3 + 4707) & 1) != 0 && *(v3 + 373) && v513 == 1.0)
  {
    v287 = memcpy(*(*(v3 + 2143) + 16), *(*(v3 + 508) + 48), *(v3 + 1079));
    v288 = *(v3 + 586);
  }

  if ((v288 & 0x400000000000) != 0)
  {
    v289 = *(v3 + 588);
    if ((v289 & 0x400000000000) != 0)
    {
      if (*(v3 + 395))
      {
        LODWORD(v534.realp) = 1092616192;
        if ((v288 & v289 & 0x80000000000000) != 0)
        {
          v287 = *(v3 + 404);
          if (v287)
          {
            v287 = AudioUnitGetParameter(v287, 9u, 0, 0, &v534);
            v288 = *(v3 + 586);
          }
        }

        if ((v288 & 0x100000000) != 0 && (*(v3 + 4708) & 1) != 0 && *(v3 + 381))
        {
          LODWORD(inInputBufferLists.mSampleTime) = 0;
          LODWORD(v529.mSampleTime) = 0;
          v530.mNumberBuffers = 0;
          AudioUnitGetParameter(*(v3 + 382), 0x18u, 0, 0, &inInputBufferLists);
          AudioUnitGetParameter(*(v3 + 382), 0x19u, 0, 0, &v529);
          AudioUnitGetParameter(*(v3 + 382), 5u, 0, 0, &v530.mNumberBuffers);
          AudioUnitSetParameter(*(v3 + 395), 3u, 0, 0, *&inInputBufferLists.mSampleTime, 0);
          AudioUnitSetParameter(*(v3 + 395), 4u, 0, 0, *&v529.mSampleTime, 0);
          AudioUnitSetParameter(*(v3 + 395), 5u, 0, 0, *&v530.mNumberBuffers, 0);
          v287 = AudioUnitSetParameter(*(v3 + 395), 6u, 0, 0, *&v534.realp, 0);
        }

        MEMORY[0x28223BE20](v287);
        v500 = 0;
        *(&v501 - 3) = 0u;
        *(&v501 - 2) = 0u;
        *(&v501 - 12) = 2;
        v290 = *(v3 + 430);
        *(&v501 - 4) = *(v290 + 16);
        *(&v501 - 5) = *(v290 + 8);
        v291 = *(v3 + 433);
        v500 = *(v291 + 16);
        *(&v501 - 3) = *(v291 + 8);
        *&v293 = MEMORY[0x28223BE20](v292);
        *(&v501 - 3) = v293;
        *(&v501 - 2) = v293;
        *(&v501 - 12) = v294;
        MEMORY[0x28223BE20](v295);
        *(&v501 - 3) = 0;
        v500 = 0;
        *(&v501 - 4) = 0;
        *(&v501 - 8) = 1;
        v296 = *(v3 + 434);
        *(v297 - 32) = *(v296 + 16);
        *(v297 - 40) = *(v296 + 8);
        v298 = *(v3 + 508);
        *(v297 - 16) = *(v298 + 32);
        *(v297 - 24) = *(v298 + 24);
        v500 = *(v296 + 16);
        *(&v501 - 3) = *(v296 + 8);
        v529.mSampleTime = v299;
        v529.mHostTime = v300;
        *&v530.mNumberBuffers = v299;
        *&v530.mBuffers[0].mNumberChannels = &v501 - 4;
        v301 = *&a2->mRateScalar;
        *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
        *&inInputBufferLists.mRateScalar = v301;
        v302 = *&a2->mSMPTETime.mHours;
        *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
        *&inInputBufferLists.mSMPTETime.mHours = v302;
        v519 = 512;
        AudioUnitProcessMultiple(*(v3 + 395), &v519, &inInputBufferLists, *(v3 + 129), 2u, &v529, 2u, &v530);
        v303 = *(v3 + 129);
        if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
        {
          VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x83u, v303, *(v3 + 430), &inInputBufferLists);
          v303 = *(v3 + 129);
          v304 = *(v3 + 433);
          if (*(v3 + 15881))
          {
            goto LABEL_566;
          }
        }

        else
        {
          v304 = *(v3 + 433);
        }

        if (*(v3 + 15882) != 1)
        {
LABEL_567:
          v288 = *(v3 + 586);
          goto LABEL_568;
        }

LABEL_566:
        VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x84u, v303, v304, &inInputBufferLists);
        goto LABEL_567;
      }
    }
  }

LABEL_568:
  if ((v288 & 0x800000000000) != 0 && (*(v3 + 588) & 0x800000000000) != 0)
  {
    v305 = *(v3 + 396);
    if (v305)
    {
      MEMORY[0x28223BE20](v305);
      *(&v501 - 3) = 0u;
      *(&v501 - 2) = 0u;
      *(&v501 - 12) = 2;
      *&v307 = MEMORY[0x28223BE20](v306);
      v500 = 0;
      *(&v501 - 3) = v307;
      *(&v501 - 2) = v307;
      *(&v501 - 12) = v308;
      *(v309 - 40) = *(*(v3 + 430) + 8);
      *(v309 - 24) = *(*(v3 + 2180) + 8);
      *(&v501 - 5) = *(*(v3 + 508) + 8);
      *(&v501 - 3) = *(*(v3 + 2181) + 8);
      *&v311 = MEMORY[0x28223BE20](v310);
      *(&v501 - 3) = v311;
      *(&v501 - 2) = v311;
      *(&v501 - 12) = v312;
      *&v315 = MEMORY[0x28223BE20](v313);
      v500 = 0;
      *(&v501 - 3) = v315;
      *(&v501 - 2) = v315;
      *(&v501 - 12) = v316;
      v317 = *(v3 + 2182);
      *(v318 - 40) = *(v317 + 8);
      *(v318 - 24) = *(v317 + 24);
      *(&v501 - 5) = *(v317 + 40);
      *(&v501 - 3) = *(v317 + 56);
      if ((v319 & v320 & 0x2000000000000) != 0)
      {
        v321 = *(v3 + 398);
        if (v321)
        {
          LODWORD(inInputBufferLists.mSampleTime) = 0;
          AudioUnitGetParameter(v321, 1u, 0, 0, &inInputBufferLists);
          AudioUnitSetParameter(*(v3 + 396), 0, 4u, 0, *&inInputBufferLists.mSampleTime, 0);
          AudioUnitSetParameter(*(v3 + 399), 0, 0, 0, *&inInputBufferLists.mSampleTime, 0);
          v314 = *(v3 + 396);
        }
      }

      *&v529.mSampleTime = &v501 - 6;
      v529.mHostTime = (&v501 - 6);
      *&v530.mNumberBuffers = &v501 - 6;
      *&v530.mBuffers[0].mNumberChannels = &v501 - 6;
      v322 = *&a2->mRateScalar;
      *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
      *&inInputBufferLists.mRateScalar = v322;
      v323 = *&a2->mSMPTETime.mHours;
      *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&inInputBufferLists.mSMPTETime.mHours = v323;
      v519 = 512;
      AudioUnitProcessMultiple(v314, &v519, &inInputBufferLists, *(v3 + 129), 2u, &v529, 2u, &v530);
      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
      {
        VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x85u, *(v3 + 129), *(v3 + 2182), &inInputBufferLists);
      }

      v288 = *(v3 + 586);
    }
  }

  if ((v288 & 0x4000000000000) != 0)
  {
    v324 = *(v3 + 588);
    if ((v324 & 0x4000000000000) != 0)
    {
      v325 = *(v3 + 399);
      if (v325)
      {
        if ((v288 & v324 & 0x800000000000) != 0 && *(v3 + 396))
        {
          MEMORY[0x28223BE20](v325);
          v500 = 0;
          *(&v501 - 3) = 0u;
          *(&v501 - 2) = 0u;
          *(&v501 - 12) = 2;
          v326 = *(v3 + 2182);
          *(&v501 - 5) = *(v326 + 8);
          *(&v501 - 3) = *(v326 + 24);
          *&v529.mSampleTime = &v501 - 6;
          *&v530.mNumberBuffers = *(v3 + 433);
          v327 = *&a2->mRateScalar;
          *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
          *&inInputBufferLists.mRateScalar = v327;
          v328 = *&a2->mSMPTETime.mHours;
          *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
          *&inInputBufferLists.mSMPTETime.mHours = v328;
          v519 = 512;
          AudioUnitProcessMultiple(v329, &v519, &inInputBufferLists, *(v3 + 129), 1u, &v529, 1u, &v530);
          if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
          {
            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x87u, *(v3 + 129), *(v3 + 433), &inInputBufferLists);
          }

          v288 = *(v3 + 586);
        }
      }
    }
  }

  if ((v288 & 0x40000000000000) != 0 && (*(v3 + 4710) & 0x40) != 0 && *(v3 + 403))
  {
    v330 = 1;
  }

  else
  {
    v330 = (v288 & 0x80000000000000) != 0 && (*(v3 + 4710) & 0x80) != 0 && *(v3 + 404) != 0;
  }

  LODWORD(v525) = 0;
  LODWORD(v523) = 0;
  v331 = AudioUnitGetParameter(*(v3 + 392), 0x1Du, 0, 0, &v525);
  v332 = *&v525 < 1.0 && v330;
  if (v330)
  {
    LODWORD(inInputBufferLists.mSampleTime) = 1065353216;
    if (*&v525 < 1.0)
    {
      vDSP_vfill(&inInputBufferLists, *(*(v3 + 505) + 16), 1, *(v3 + 129));
    }

    vDSP_vfill(&inInputBufferLists, *(*(v3 + 503) + 16), 1, *(v3 + 129));
    v333 = *(v3 + 586);
  }

  else
  {
    v333 = *(v3 + 586);
    if ((v333 & 0x80000000000) == 0 || (*(v3 + 4709) & 8) == 0 || !*(v3 + 392))
    {
LABEL_613:
      LODWORD(v509) = 0;
      if ((v333 & 0x8000000000000) == 0)
      {
        goto LABEL_624;
      }

      goto LABEL_614;
    }
  }

  if ((v333 & 0x1000000000000) != 0 && (*(v3 + 4710) & 1) != 0 && *(v3 + 397))
  {
    goto LABEL_613;
  }

  if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
  {
    v331 = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x63u, *(v3 + 129), *(v3 + 430), &buf);
    v333 = *(v3 + 586);
  }

  LODWORD(v509) = 1;
  if ((v333 & 0x8000000000000) != 0)
  {
LABEL_614:
    if ((*(v3 + 4710) & 8) != 0)
    {
      v331 = *(v3 + 400);
      if (v331)
      {
        v519 = 512;
        inInputBufferLists.mSampleTime = *(v3 + 430);
        v529.mSampleTime = *(v3 + 431);
        v331 = AudioUnitProcessMultiple(v331, &v519, &buf, *(v3 + 129), 1u, &inInputBufferLists, 1u, &v529);
        v334 = *(v3 + 2156);
        v337 = *(v334 + 12);
        v335 = v334 + 12;
        v336 = v337;
        v338 = *(v335 + 4);
        if (v331 || (v331 = AudioUnitGetProperty(*(v3 + 400), 0x3ECu, 0, 0, *(v335 + 4), v335), v331))
        {
          if (v336 >= 4)
          {
            memset_pattern16(v338, &unk_2727568B0, v336 & 0xFFFFFFFC);
          }
        }

        if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
        {
          v331 = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x74u, *(v3 + 129), *(v3 + 430), &buf);
        }

        v333 = *(v3 + 586);
      }
    }
  }

LABEL_624:
  v507 = *(v3 + 2214);
  if ((v333 & 0x40000000000000) != 0 && (*(v3 + 4710) & 0x40) != 0)
  {
    v331 = *(v3 + 403);
    if (v331)
    {
      v339 = *(v3 + 503);
      v529.mSampleTime = *(v3 + 430);
      v529.mHostTime = v339;
      *&v529.mRateScalar = v3 + 16904;
      v340 = *(v3 + 505);
      *&v530.mNumberBuffers = *(v3 + 431);
      *&v530.mBuffers[0].mNumberChannels = v340;
      v530.mBuffers[0].mData = v507;
      v519 = 512;
      v341 = *&a2->mRateScalar;
      *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
      *&inInputBufferLists.mRateScalar = v341;
      v342 = *&a2->mSMPTETime.mHours;
      *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&inInputBufferLists.mSMPTETime.mHours = v342;
      AudioUnitProcessMultiple(v331, &v519, &inInputBufferLists, *(v3 + 129), 3u, &v529, 3u, &v530);
      AudioUnitGetParameter(*(v3 + 403), 1u, 0, 0, &v520);
      v331 = AudioUnitGetParameter(*(v3 + 403), 1u, 0, 0, v3 + 4377);
      if ((*(v3 + 4696) & 2) == 0 || (*(v3 + 4712) & 2) == 0 || !*(v3 + 414))
      {
        goto LABEL_639;
      }

      v343 = *(v3 + 403);
      v344 = 2;
      goto LABEL_638;
    }
  }

  if ((v333 & 0x80000000000000) == 0 || (*(v3 + 4710) & 0x80) == 0 || (v331 = *(v3 + 404)) == 0)
  {
    v350 = 0;
    goto LABEL_644;
  }

  MEMORY[0x28223BE20](v331);
  *(&v501 - 3) = 0;
  v500 = 0;
  *(&v501 - 4) = 0;
  *(&v501 - 8) = 1;
  *(&v501 - 3) = *(*(v3 + 2182) + 8);
  AudioUnitSetParameter(v345, 0x14u, 0, 0, *(v3 + 4189), 0);
  v346 = *(v3 + 433);
  *&v529.mSampleTime = &v501 - 4;
  v529.mHostTime = v346;
  v529.mRateScalar = *(v3 + 503);
  v529.mWordClockTime = v3 + 16904;
  v347 = *(v3 + 438);
  *&v530.mNumberBuffers = *(v3 + 431);
  *&v530.mBuffers[0].mNumberChannels = v347;
  v530.mBuffers[0].mData = *(v3 + 505);
  v531 = v507;
  v348 = *&a2->mRateScalar;
  *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
  *&inInputBufferLists.mRateScalar = v348;
  v349 = *&a2->mSMPTETime.mHours;
  *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
  *&inInputBufferLists.mSMPTETime.mHours = v349;
  v519 = 512;
  AudioUnitProcessMultiple(*(v3 + 404), &v519, &inInputBufferLists, *(v3 + 129), 4u, &v529, 4u, &v530);
  v331 = AudioUnitGetParameter(*(v3 + 404), 2u, 0, 0, &v520);
  if ((*(v3 + 4696) & 2) != 0 && (*(v3 + 4712) & 2) != 0 && *(v3 + 414))
  {
    v343 = *(v3 + 404);
    v344 = 9;
LABEL_638:
    AudioUnitGetParameter(v343, v344, 0, 0, &v523);
    v331 = AudioUnitSetParameter(*(v3 + 414), 0x12u, 0, 0, *&v523, 0);
  }

LABEL_639:
  if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
  {
    v331 = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x27u, *(v3 + 129), *(v3 + 431), &inInputBufferLists);
  }

  v350 = 1;
LABEL_644:
  v351 = *(v3 + 586);
  if ((v351 & 0x200000000000000) != 0 && (*(v3 + 4711) & 2) != 0)
  {
    v331 = *(v3 + 406);
    if (v331)
    {
      v529.mSampleTime = *(v3 + 430);
      *&v530.mNumberBuffers = 0;
      v352 = *&a2->mSMPTETime.mHours;
      *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&inInputBufferLists.mSMPTETime.mHours = v352;
      v353 = *&a2->mRateScalar;
      *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
      *&inInputBufferLists.mRateScalar = v353;
      v519 = 512;
      v354 = *(v3 + 506);
      v355 = *(v354 + 16);
      v356 = *(v354 + 12);
      v331 = AudioUnitProcessMultiple(v331, &v519, &inInputBufferLists, *(v3 + 129), 1u, &v529, 1u, &v530);
      if (v331 || (v331 = AudioUnitGetProperty(*(v3 + 406), 0x13EDu, 0, 0, *(*(v3 + 506) + 16), (*(v3 + 506) + 12)), v331))
      {
        if (v356 >= 4)
        {
          memset_pattern16(v355, &unk_2727568B0, v356 & 0xFFFFFFFC);
        }
      }

      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
      {
        v331 = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x54u, *(v3 + 129), *(v3 + 506), &inInputBufferLists);
      }

      v351 = *(v3 + 586);
    }
  }

  if ((v351 & 0x400000000000000) != 0 && (*(v3 + 4711) & 4) != 0)
  {
    if (*(v3 + 407))
    {
      v357 = *(v3 + 4344);
      if (v357)
      {
        if (v357 == 1)
        {
          v358 = 1136;
          v359 = 1112;
        }

        else
        {
          v358 = 1128;
          v359 = 1120;
        }

        v360 = *(v3 + v358);
        v361 = *(v3 + 2158);
        v362 = *(*(v3 + v359) + 40);
        v363 = *(*(v3 + 2154) + 16) + 4 * *(v3 + 129);
        inInputBufferLists.mSampleTime = *(*(v3 + 2154) + 16);
        inInputBufferLists.mHostTime = v363;
        VPTimeFreqConverter_Analyze(v361, v362, &inInputBufferLists);
        v364 = *(v3 + 2159);
        v365 = *(v360 + 40);
        v366 = *(*(v3 + 2154) + 32) + 4 * *(v3 + 129);
        inInputBufferLists.mSampleTime = *(*(v3 + 2154) + 32);
        inInputBufferLists.mHostTime = v366;
        VPTimeFreqConverter_Analyze(v364, v365, &inInputBufferLists);
        v529.mSampleTime = *(v3 + 2154);
        *&v530.mNumberBuffers = v529.mSampleTime;
        v519 = 512;
        v367 = *&a2->mRateScalar;
        *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
        *&inInputBufferLists.mRateScalar = v367;
        v368 = *&a2->mSMPTETime.mHours;
        *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
        *&inInputBufferLists.mSMPTETime.mHours = v368;
        v369 = AudioUnitProcessMultiple(*(v3 + 407), &v519, &inInputBufferLists, *(v3 + 129), 1u, &v529, 1u, &v530);
        if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
        {
          VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x6Fu, *(v3 + 129), *(v3 + 2154), &inInputBufferLists);
        }

        v370 = *(v3 + 2155);
        v373 = *(v370 + 12);
        v371 = v370 + 12;
        v372 = v373;
        v374 = *(v371 + 4);
        if ((v369 || AudioUnitGetProperty(*(v3 + 407), 0x15FEu, 0, 0, *(v371 + 4), v371)) && v372 >= 4)
        {
          memset_pattern16(v374, &unk_2727568B0, v372 & 0xFFFFFFFC);
        }

        v331 = AudioUnitGetParameter(*(v3 + 407), 0, 0, 0, v3 + 4376);
        if (v331)
        {
          *(v3 + 4376) = 0;
        }

        if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
        {
          v331 = VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x70u, *(v3 + 129), *(v3 + 2155), &inInputBufferLists);
        }

        v351 = *(v3 + 586);
      }
    }
  }

  if ((v351 & 0x80000000000) != 0 && (*(v3 + 588) & 0x80000000000) != 0 && *(v3 + 392))
  {
    MEMORY[0x28223BE20](v331);
    *(&v501 - 4) = 0;
    *(&v501 - 3) = 0;
    *(&v501 - 8) = 1;
    MEMORY[0x28223BE20](v375);
    *(&v501 - 4) = 0;
    *(&v501 - 3) = 0;
    v500 = 0;
    *(&v501 - 8) = v378;
    if ((v376 & v377 & 0x800000000000) != 0)
    {
      v379 = &v501 - 3;
      v380 = &v501 - 3;
      if (*(v3 + 396))
      {
        v381 = *(v3 + 2182);
        *v379 = *(v381 + 8);
        v382 = (v381 + 40);
LABEL_683:
        *v380 = *v382;
        AudioUnitSetParameter(*(v3 + 392), 6u, 0, 0, *(v3 + 1062), 0);
        AudioUnitSetParameter(*(v3 + 392), 7u, 0, 0, *(v3 + 1066), 0);
        AudioUnitSetParameter(*(v3 + 392), 0xDu, 0, 0, *(v3 + 1070), 0);
        *&v529.mSampleTime = &v501 - 4;
        v529.mHostTime = (&v501 - 4);
        v383 = *(v3 + 505);
        v529.mRateScalar = *(v3 + 515);
        v529.mWordClockTime = v383;
        *&v529.mSMPTETime.mSubframes = v507;
        *&v529.mSMPTETime.mType = 0;
        v384 = *(v3 + 586);
        if ((v384 & 0x1000000000000) != 0 && (*(v3 + 4710) & 1) != 0 && *(v3 + 397))
        {
          *&v529.mSMPTETime.mType = *(v3 + 511);
        }

        if (!v332)
        {
          v529.mWordClockTime = 0;
        }

        v385 = *(v3 + 513);
        *&v530.mNumberBuffers = 0;
        *&v530.mBuffers[0].mNumberChannels = v385;
        v530.mBuffers[0].mData = 0;
        if ((v384 & 0x4000000) != 0 && (v386 = *(v3 + 588), (v386 & 0x4000000) != 0) && (v387 = *(v3 + 375)) != 0 && (v384 & v386 & 0x400000) != 0 && *(v3 + 371))
        {
          LODWORD(inInputBufferLists.mSampleTime) = 0;
          *&v529.mSMPTETime.mType = *(v3 + 511);
          AudioUnitGetParameter(v387, 0x2Du, 0, 0, &inInputBufferLists);
          AudioUnitSetParameter(*(v3 + 392), 0x2Au, 0, 0, *&inInputBufferLists.mSampleTime, 0);
          AudioUnitGetParameter(*(v3 + 371), 0x2Du, 0, 0, &inInputBufferLists);
          AudioUnitSetParameter(*(v3 + 392), 0x29u, 0, 0, *&inInputBufferLists.mSampleTime, 0);
        }

        else if ((v384 & 0x1000000) != 0 && (*(v3 + 4707) & 1) != 0 && *(v3 + 373) && v513 == 1.0)
        {
          *&v529.mSMPTETime.mType = *(v3 + 2143);
        }

        if (v332)
        {
          v388 = 3464;
        }

        else
        {
          v388 = 3448;
        }

        v389 = 4040;
        *&v530.mNumberBuffers = *(v3 + v388);
        if (v332)
        {
          v389 = 4024;
        }

        v530.mBuffers[0].mData = *(v3 + v389);
        v390 = *&a2->mRateScalar;
        *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
        *&inInputBufferLists.mRateScalar = v390;
        v391 = *&a2->mSMPTETime.mHours;
        *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
        *&inInputBufferLists.mSMPTETime.mHours = v391;
        v519 = 512;
        AudioUnitProcessMultiple(*(v3 + 392), &v519, &inInputBufferLists, *(v3 + 129), 6u, &v529, 3u, &v530);
        if ((v350 & v332 & 1) == 0)
        {
          AudioUnitGetParameter(*(v3 + 392), 0x20u, 0, 0, &v520);
          AudioUnitGetParameter(*(v3 + 392), 0x20u, 0, 0, v3 + 4377);
        }

        v392 = *(v3 + 129);
        if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
        {
          VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x24u, v392, *(v3 + v388), &inInputBufferLists);
          v392 = *(v3 + 129);
          v393 = *(v3 + 503);
          if (*(v3 + 15881))
          {
            goto LABEL_713;
          }
        }

        else
        {
          v393 = *(v3 + 503);
        }

        if (*(v3 + 15882) != 1)
        {
LABEL_714:
          v351 = *(v3 + 586);
          goto LABEL_715;
        }

LABEL_713:
        VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x51u, v392, v393, &inInputBufferLists);
        goto LABEL_714;
      }
    }

    else
    {
      v379 = &v501 - 3;
      v380 = &v501 - 3;
    }

    *v379 = *(*(v3 + 430) + 8);
    v382 = (*(v3 + 434) + 8);
    goto LABEL_683;
  }

LABEL_715:
  if ((v351 & 0x1000000000000) != 0 && (*(v3 + 4710) & 1) != 0 && *(v3 + 397))
  {
    LODWORD(v521) = 0;
    AudioUnitGetParameter(*(v3 + 371), 0x25u, 0, 0, &v521);
    AudioUnitSetParameter(*(v3 + 397), 0, 4u, 2u, *&v521, 0);
    AudioUnitSetParameter(*(v3 + 397), 0, 4u, 3u, *&v521, 0);
    if ((*(v3 + 4689) & 0x10) != 0 && (*(v3 + 4705) & 0x10) != 0)
    {
      v394 = 17480;
      if (!*(v3 + 361))
      {
        v394 = 3440;
      }
    }

    else
    {
      v394 = 3440;
    }

    v395 = memcpy(*(*(v3 + 2199) + 16), *(*(v3 + v394) + 16), *(*(v3 + v394) + 12));
    MEMORY[0x28223BE20](v395);
    v500 = 0;
    *(&v501 - 3) = 0u;
    *(&v501 - 2) = 0u;
    *(&v501 - 5) = 0u;
    *(&v501 - 4) = 0u;
    *(&v501 - 20) = 4;
    *(&v501 - 9) = *(*(v3 + 430) + 8);
    *(&v501 - 7) = *(*(v3 + 2179) + 8);
    *(&v501 - 5) = *(*(v3 + 510) + 8);
    *(&v501 - 3) = *(*(v3 + 509) + 8);
    *&v397 = MEMORY[0x28223BE20](v396);
    v500 = 0;
    *(&v501 - 3) = v397;
    *(&v501 - 2) = v397;
    *(&v501 - 5) = v397;
    *(&v501 - 4) = v397;
    *(&v501 - 20) = 4;
    *(&v501 - 9) = *(*(v3 + 2195) + 8);
    *(&v501 - 7) = *(*(v3 + 2197) + 8);
    *(&v501 - 5) = *(*(v3 + 2198) + 8);
    *(&v501 - 3) = *(*(v3 + 2196) + 8);
    *&v529.mSampleTime = &v501 - 10;
    v529.mHostTime = (&v501 - 10);
    *&v530.mNumberBuffers = &v501 - 10;
    *&v530.mBuffers[0].mNumberChannels = &v501 - 10;
    v398 = *&a2->mRateScalar;
    *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
    *&inInputBufferLists.mRateScalar = v398;
    v399 = *&a2->mSMPTETime.mHours;
    *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
    *&inInputBufferLists.mSMPTETime.mHours = v399;
    v519 = 512;
    AudioUnitProcessMultiple(*(v3 + 397), &v519, &inInputBufferLists, *(v3 + 129), 2u, &v529, 2u, &v530);
    v400 = *(v3 + 129);
    v534.realp = *(*(v3 + 2199) + 16);
    v534.imagp = &v534.realp[v400];
    v533.realp = *(*(v3 + 430) + 16);
    v533.imagp = &v533.realp[v400];
    v401 = *(*(v3 + 2186) + 16);
    v402 = &v401[v400];
    vDSP_zvabs(&v534, 1, v401, 1, v400);
    vDSP_zvabs(&v533, 1, v402, 1, *(v3 + 129));
    vDSP_vmin(v401, 1, v402, 1, v401, 1, *(v3 + 129));
    HIDWORD(v511) = 507307272;
    MEMORY[0x2743CCE00](v402, 1, &v511 + 4, v402, 1, *(v3 + 129));
    vDSP_vdiv(v402, 1, v401, 1, v402, 1, *(v3 + 129));
    MEMORY[0x2743CCDD0](v533.realp, 1, v402, 1, v533.realp, 1, *(v3 + 129));
    MEMORY[0x2743CCDD0](v533.imagp, 1, v402, 1, v533.imagp, 1, *(v3 + 129));
    if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
    {
      VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x86u, *(v3 + 129), (&v501 - 10), &inInputBufferLists);
    }

    v351 = *(v3 + 586);
  }

  if ((v351 & 0x4000000000000) != 0)
  {
    v403 = *(v3 + 588);
    if ((v403 & 0x4000000000000) != 0)
    {
      v404 = *(v3 + 399);
      if (v404)
      {
        if ((v351 & v403 & 0x1000000000000) != 0 && *(v3 + 397))
        {
          MEMORY[0x28223BE20](v404);
          v500 = 0;
          *(&v501 - 3) = 0u;
          *(&v501 - 2) = 0u;
          *(&v501 - 12) = 2;
          *(&v501 - 5) = *(*(v3 + 430) + 8);
          *(&v501 - 3) = *(*(v3 + 2179) + 8);
          *&v529.mSampleTime = &v501 - 6;
          *&v530.mNumberBuffers = *(v3 + 433);
          v405 = *&a2->mRateScalar;
          *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
          *&inInputBufferLists.mRateScalar = v405;
          v406 = *&a2->mSMPTETime.mHours;
          *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
          *&inInputBufferLists.mSMPTETime.mHours = v406;
          v519 = 512;
          AudioUnitProcessMultiple(v407, &v519, &inInputBufferLists, *(v3 + 129), 1u, &v529, 1u, &v530);
          if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
          {
            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x87u, *(v3 + 129), *(v3 + 433), &inInputBufferLists);
          }

          v351 = *(v3 + 586);
        }
      }
    }
  }

  if ((v351 & 0x1000000000000) != 0 && (v408 = *(v3 + 588), (v408 & 0x1000000000000) != 0) && *(v3 + 397) && (LODWORD(inInputBufferLists.mSampleTime) = 0, LODWORD(v529.mSampleTime) = 0, (v351 & v408 & 0x400000) != 0) && (v409 = *(v3 + 371)) != 0)
  {
    AudioUnitGetParameter(v409, 0x43u, 0, 0, &inInputBufferLists);
    AudioUnitGetParameter(*(v3 + 371), 0x47u, 0, 0, &v529);
    v351 = *(v3 + 586);
    v411 = *&v529.mSampleTime != 0.0 && *&inInputBufferLists.mSampleTime != 0.0;
  }

  else
  {
    v411 = 0;
  }

  if ((v351 & 0x100000000000) != 0)
  {
    v412 = *(v3 + 588);
    if ((v412 & 0x100000000000) != 0)
    {
      v413 = *(v3 + 393);
      if (v413)
      {
        if ((v351 & v412 & 0x1000000000000) != 0 && *(v3 + 397))
        {
          MEMORY[0x28223BE20](v413);
          *(&v501 - 4) = 0;
          *(&v501 - 3) = 0;
          *(&v501 - 8) = 1;
          MEMORY[0x28223BE20](v414);
          *(&v501 - 3) = 0;
          v500 = 0;
          *(&v501 - 4) = 0;
          *(&v501 - 8) = v415;
          *(v416 - 24) = *(*(v3 + 430) + 8);
          *(&v501 - 3) = *(*(v3 + 433) + 8);
          AudioUnitSetParameter(v417, 6u, 0, 0, *(v3 + 1062), 0);
          AudioUnitSetParameter(*(v3 + 393), 7u, 0, 0, *(v3 + 1066), 0);
          AudioUnitSetParameter(*(v3 + 393), 0xDu, 0, 0, *(v3 + 1070), 0);
          *&v529.mSampleTime = &v501 - 4;
          v529.mHostTime = (&v501 - 4);
          v418 = *(v3 + 505);
          *&v529.mRateScalar = &v501 - 4;
          v529.mWordClockTime = v418;
          *&v529.mSMPTETime.mSubframes = v507;
          *&v529.mSMPTETime.mType = 0;
          *&v530.mNumberBuffers = *(v3 + 433);
          *&v530.mBuffers[0].mNumberChannels = 0;
          v530.mBuffers[0].mData = *(v3 + 504);
          v419 = *&a2->mRateScalar;
          *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
          *&inInputBufferLists.mRateScalar = v419;
          v420 = *&a2->mSMPTETime.mHours;
          *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
          *&inInputBufferLists.mSMPTETime.mHours = v420;
          v519 = 512;
          AudioUnitProcessMultiple(*(v3 + 393), &v519, &inInputBufferLists, *(v3 + 129), 6u, &v529, 3u, &v530);
          v421 = *(v3 + 129);
          if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
          {
            VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x25u, v421, *(v3 + 433), &inInputBufferLists);
            v421 = *(v3 + 129);
            v422 = *(v3 + 504);
            if (*(v3 + 15881))
            {
              goto LABEL_759;
            }
          }

          else
          {
            v422 = *(v3 + 504);
          }

          if (*(v3 + 15882) != 1)
          {
LABEL_760:
            if (v411)
            {
              vDSP_vmin(*(*(v3 + 503) + 16), 1, *(*(v3 + 504) + 16), 1, *(*(v3 + 503) + 16), 1, *(v3 + 129));
            }

            v351 = *(v3 + 586);
            goto LABEL_763;
          }

LABEL_759:
          VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x52u, v421, v422, &inInputBufferLists);
          goto LABEL_760;
        }
      }
    }
  }

LABEL_763:
  if ((v351 & 0x200000000000) == 0)
  {
    goto LABEL_778;
  }

  v423 = *(v3 + 588);
  if ((v423 & 0x200000000000) == 0)
  {
    goto LABEL_778;
  }

  v424 = *(v3 + 394);
  if (!v424 || (v351 & v423 & 0x1000000000000) != 0 && *(v3 + 397))
  {
    goto LABEL_778;
  }

  MEMORY[0x28223BE20](v424);
  *(&v501 - 4) = 0;
  *(&v501 - 3) = 0;
  *(&v501 - 8) = 1;
  MEMORY[0x28223BE20](v425);
  *(&v501 - 3) = 0;
  v500 = 0;
  *(&v501 - 4) = 0;
  *(&v501 - 8) = v426;
  *(v427 - 24) = *(*(v3 + 2179) + 8);
  *(&v501 - 3) = *(*(v3 + 508) + 40);
  AudioUnitSetParameter(v428, 6u, 0, 0, *(v3 + 1062), 0);
  AudioUnitSetParameter(*(v3 + 394), 7u, 0, 0, *(v3 + 1066), 0);
  AudioUnitSetParameter(*(v3 + 394), 0xDu, 0, 0, *(v3 + 1070), 0);
  *&v529.mSampleTime = &v501 - 4;
  v529.mHostTime = (&v501 - 4);
  v429 = *(v3 + 505);
  v529.mRateScalar = *(v3 + 515);
  v529.mWordClockTime = v429;
  *&v529.mSMPTETime.mSubframes = v507;
  *&v529.mSMPTETime.mType = 0;
  *&v530.mNumberBuffers = *(v3 + 433);
  *&v530.mBuffers[0].mNumberChannels = 0;
  v530.mBuffers[0].mData = *(v3 + 2191);
  v430 = *&a2->mRateScalar;
  *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
  *&inInputBufferLists.mRateScalar = v430;
  v431 = *&a2->mSMPTETime.mHours;
  *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
  *&inInputBufferLists.mSMPTETime.mHours = v431;
  v519 = 512;
  AudioUnitProcessMultiple(*(v3 + 394), &v519, &inInputBufferLists, *(v3 + 129), 6u, &v529, 3u, &v530);
  v432 = *(v3 + 129);
  if (*(v3 + 15881) & 1) != 0 || (*(v3 + 15882))
  {
    VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x26u, v432, *(v3 + 433), &inInputBufferLists);
    v432 = *(v3 + 129);
    v433 = *(v3 + 2191);
    if (*(v3 + 15881))
    {
      goto LABEL_774;
    }
  }

  else
  {
    v433 = *(v3 + 2191);
  }

  if (*(v3 + 15882) == 1)
  {
LABEL_774:
    VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x53u, v432, v433, &inInputBufferLists);
  }

  if (*&v527 != 0.0)
  {
    vDSP_vmin(*(*(v3 + 503) + 16), 1, *(*(v3 + 2191) + 16), 1, *(*(v3 + 503) + 16), 1, *(v3 + 129));
  }

  v351 = *(v3 + 586);
LABEL_778:
  if ((v351 & 0x80000000000) != 0 && (*(v3 + 4709) & 8) != 0 && *(v3 + 392))
  {
    if (!v332)
    {
LABEL_789:
      if ((*(v3 + 4709) & 8) != 0)
      {
        if (*(v3 + 392) != 0 || v330)
        {
          goto LABEL_827;
        }

        goto LABEL_793;
      }

LABEL_790:
      if (v330)
      {
        goto LABEL_827;
      }

LABEL_793:
      LODWORD(inInputBufferLists.mSampleTime) = 1065353216;
      v437 = *(v3 + 129);
      vDSP_vfill(&inInputBufferLists, *(*(v3 + 505) + 16), 1, v437);
      memcpy(*(*(v3 + 431) + 16), *(*(v3 + 430) + 16), 8 * v437);
      goto LABEL_827;
    }
  }

  else if ((v351 & 0x100000000000) == 0 || (*(v3 + 4709) & 0x10) == 0 || *(v3 + 393) == 0 || !v332)
  {
    if ((v351 & 0x80000000000) == 0)
    {
      goto LABEL_790;
    }

    goto LABEL_789;
  }

  v434 = *(*(v3 + 505) + 16);
  memcpy(*(*(v3 + 436) + 16), v434, 4 * *(v3 + 129));
  vDSP_vmin(*(*(v3 + 503) + 16), 1, v434, 1, v434, 1, *(v3 + 129));
  v435 = *(v3 + 586);
  if ((v435 & 0x200000000000000) != 0)
  {
    v436 = v506;
    if ((*(v3 + 4711) & 2) != 0 && *(v3 + 406))
    {
      vDSP_vmin(*(*(v3 + 506) + 16), 1, v434, 1, v434, 1, *(v3 + 129));
      v435 = *(v3 + 586);
    }
  }

  else
  {
    v436 = v506;
  }

  if ((v435 & 0x400000000000000) != 0 && (*(v3 + 4711) & 4) != 0 && *(v3 + 407))
  {
    vDSP_vmin(*(*(v3 + 2155) + 16), 1, v434, 1, v434, 1, *(v3 + 129));
    v435 = *(v3 + 586);
  }

  if ((v435 & 0x8000000000000) != 0 && (*(v3 + 4710) & 8) != 0 && *(v3 + 400))
  {
    vDSP_vmin(*(*(v3 + 2156) + 16), 1, v434, 1, v434, 1, *(v3 + 129));
    v435 = *(v3 + 586);
  }

  if ((v435 & 0x1000) != 0)
  {
    v438 = *(v3 + 588);
    if ((v438 & 0x1000) != 0 && *(v3 + 361) && ((v435 & v438 & 0x1000000000000) == 0 || !*(v3 + 397)))
    {
      v439 = *(v3 + 2185);
      goto LABEL_822;
    }
  }

  if ((v435 & 0x800000000000) == 0 || (*(v3 + 4709) & 0x80) == 0 || !*(v3 + 396))
  {
    if (v435 & 0x1000000000000) != 0 && (*(v3 + 4710))
    {
      v440 = *(v3 + 129);
      if (*(v3 + 397) != 0 && !v411)
      {
        v439 = *(v3 + 2199);
        goto LABEL_818;
      }
    }

    else
    {
      v440 = *v436;
    }

    v439 = *(v3 + 430);
LABEL_818:
    v441 = *(v439 + 16);
    goto LABEL_823;
  }

  v439 = *(v3 + 2182);
LABEL_822:
  v441 = *(v439 + 16);
  v440 = *(v3 + 129);
LABEL_823:
  if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
  {
    VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x63u, v440, v439, &buf);
  }

  v442 = *(*(v3 + 431) + 16);
  MEMORY[0x2743CCDD0](v441, 1, v434, 1, v442, 1, *(v3 + 129));
  MEMORY[0x2743CCDD0](v441 + 4 * *(v3 + 129) + 4, 1, v434 + 4, 1, v442 + 4 * *(v3 + 129) + 4, 1, (*(v3 + 129) - 1));
  *(v441 + 4 * *(v3 + 129)) = *(v441 + 4 * *(v3 + 129)) * *&v434[4 * (*(v3 + 129) - 1)];
LABEL_827:
  if (((v509 & 1) != 0 || (*(v3 + 4693) & 8) != 0 && (*(v3 + 4709) & 8) != 0 && *(v3 + 392)) && ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1))
  {
    VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x62u, *(v3 + 129), *(v3 + 431), &buf);
  }

  if ((*(v3 + 4695) & 0x10) != 0 && (*(v3 + 4711) & 0x10) != 0)
  {
    v443 = *(v3 + 409);
    if (v443)
    {
      if (*(v3 + 3134) == 12)
      {
        v444 = *(v3 + 2169);
        *v444 = v520;
        v445 = *(v3 + 4320);
        v446 = *(v3 + 129);
        v447 = v445 % v446;
        v448 = vcvtms_u32_f32(v445 / v446);
        if (v447)
        {
          v449 = ((v447 / v446) * v444[v448 + 1]) + ((1.0 - (v447 / v446)) * v444[v448]);
        }

        else
        {
          v449 = v444[v448];
        }

        v520 = v449;
        memmove(v444 + 1, v444, *(v3 + 2170) - v444 - 4);
        v443 = *(v3 + 409);
      }

      AudioUnitSetParameter(v443, 0, 0, 0, *(v3 + 3153), 0);
      AudioUnitSetParameter(*(v3 + 409), 4u, 0, 0, *(v3 + 1054), 0);
      AudioUnitSetParameter(*(v3 + 409), 0x13u, 0, 0, *(v3 + 1058), 0);
      AudioUnitSetParameter(*(v3 + 409), 3u, 0, 0, v520, 0);
      LODWORD(v534.realp) = 0;
      AudioUnitGetParameter(*(v3 + 409), 0x1Cu, 0, 0, &v534);
      if (*&v534.realp == 1.0)
      {
        v450 = v3 + 2792;
        LODWORD(inInputBufferLists.mSampleTime) = -1082130432;
        AudioUnitGetParameter(*(v3 + 409), 0x1Du, 0, 0, &inInputBufferLists);
        v451 = *&inInputBufferLists.mSampleTime != 2.0 || *&inInputBufferLists.mSampleTime == 1.0;
        v452 = v451 ? 22 : 23;
        v453 = *&v450[8 * v452];
        if (v453)
        {
          LODWORD(v529.mSampleTime) = 0;
          if (!AudioUnitGetPropertyInfo(v453, 0xED8u, 0, 0, &v529, 0))
          {
            v454 = *(v3 + 2192);
            if (*(v3 + 2193) - v454 >= LODWORD(v529.mSampleTime))
            {
              AudioUnitGetProperty(*&v450[8 * v452], 0xED8u, 0, 0, v454, &v529);
            }
          }

          v530.mNumberBuffers = 0;
          AudioUnitGetParameter(*&v450[8 * v452], 1u, 0, 0, &v530.mNumberBuffers);
          AudioUnitSetProperty(*(v3 + 409), 0x846u, 0, 0, *(v3 + 2192), vcvts_n_u32_f32(*&v530.mNumberBuffers, 2uLL));
        }
      }

      AudioUnitSetParameter(*(v3 + 409), 0xEu, 0, 0, *(v3 + 580), 0);
      LODWORD(v533.realp) = 0;
      AudioUnitGetParameter(*(v3 + 371), 0x2Du, 0, 0, &v533);
      AudioUnitSetParameter(*(v3 + 409), 0x23u, 0, 0, *&v533.realp, 0);
      LODWORD(v521) = 1120403456;
      v455 = *(v3 + 586);
      if ((v455 & 0x20000000) != 0 && (*(v3 + 4707) & 0x20) != 0 && (v456 = *(v3 + 378)) != 0 || (v455 & 0x20000000000000) != 0 && (*(v3 + 4710) & 0x20) != 0 && (v456 = *(v3 + 402)) != 0 || (v455 & 0x40000000000000) != 0 && (*(v3 + 4710) & 0x40) != 0 && (v456 = *(v3 + 403)) != 0)
      {
        v457 = 2;
      }

      else
      {
        if ((v455 & 0x80000000000000) == 0 || (*(v3 + 4710) & 0x80) == 0 || (v456 = *(v3 + 404)) == 0)
        {
          v458 = 100.0;
          goto LABEL_870;
        }

        v457 = 9;
      }

      AudioUnitGetParameter(v456, v457, 0, 0, &v521);
      v458 = *&v521;
LABEL_870:
      AudioUnitSetParameter(*(v3 + 409), 0x25u, 0, 0, v458, 0);
      if (*(v3 + 3134) == 12)
      {
        v459 = *(v3 + 514);
        v529.mSampleTime = *(v3 + 420);
        v529.mHostTime = v459;
        v460 = *(v3 + 434);
        v529.mRateScalar = *(v3 + 2167);
        v529.mWordClockTime = v460;
        v461 = *(v3 + 2166);
        *&v529.mSMPTETime.mSubframes = 0;
        *&v529.mSMPTETime.mType = v461;
        *&v530.mNumberBuffers = 0;
        v519 = 512;
        v462 = *&a2->mRateScalar;
        *&inInputBufferLists.mSampleTime = *&a2->mSampleTime;
        *&inInputBufferLists.mRateScalar = v462;
        v463 = *&a2->mSMPTETime.mHours;
        *&inInputBufferLists.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
        *&inInputBufferLists.mSMPTETime.mHours = v463;
        AudioUnitProcessMultiple(*(v3 + 409), &v519, &inInputBufferLists, *(v3 + 129), 6u, &v529, 1u, &v530);
        v511 = 4;
        AudioUnitGetProperty(*(v3 + 409), 0x15u, 0, 0, &v511 + 4, &v511);
        if (!HIDWORD(v511))
        {
          v510 = 0.0;
          AudioUnitGetParameter(*(v3 + 409), 0xBu, 0, 0, &v510);
          MEMORY[0x2743CCE20](*(*(v3 + 137) + 16), 1, &v510, *(*(v3 + 137) + 16), 1, *(v3 + 129));
        }
      }

      else
      {
        v464 = *(v3 + 514);
        inInputBufferLists.mSampleTime = *(v3 + 420);
        inInputBufferLists.mHostTime = v464;
        v465 = *(v3 + 513);
        inInputBufferLists.mRateScalar = *(v3 + 431);
        inInputBufferLists.mWordClockTime = v465;
        v466 = *(v3 + 505);
        *&inInputBufferLists.mSMPTETime.mSubframes = *(v3 + 503);
        *&inInputBufferLists.mSMPTETime.mType = v466;
        v467 = *(v3 + 436);
        *&inInputBufferLists.mSMPTETime.mHours = v507;
        *&inInputBufferLists.mFlags = v467;
        *&v530.mNumberBuffers = *(v3 + 137);
        v519 = 512;
        v468 = *&a2->mRateScalar;
        *&v529.mSampleTime = *&a2->mSampleTime;
        *&v529.mRateScalar = v468;
        v469 = *&a2->mSMPTETime.mHours;
        *&v529.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
        *&v529.mSMPTETime.mHours = v469;
        AudioUnitProcessMultiple(*(v3 + 409), &v519, &v529, *(v3 + 129), 8u, &inInputBufferLists, 1u, &v530);
      }

      LODWORD(inInputBufferLists.mSampleTime) = 0;
      AudioUnitGetParameter(*(v3 + 409), 1u, 0, 0, &inInputBufferLists);
      *(v3 + 3154) = LODWORD(inInputBufferLists.mSampleTime);
      if ((*(v3 + 4696) & 2) != 0 && (*(v3 + 4712) & 2) != 0 && *(v3 + 414))
      {
        AudioUnitGetParameter(*(v3 + 409), 2u, 0, 0, &v520);
        AudioUnitSetParameter(*(v3 + 414), 0x23u, 0, 0, v520, 0);
      }
    }
  }

LABEL_878:
  v530.mNumberBuffers = 0;
  v470 = VoiceProcessorV2::LocalVoiceDuckingForMediaChatEnabled(v3);
  v471 = v470;
  if (*(v3 + 2088) == 1)
  {
    if (!((*(v3 + 2053) != 0) | v470 & 1))
    {
      goto LABEL_894;
    }

    VoiceProcessorV2::DetectVoiceActivity(v3, a2);
    if ((v471 & 1) == 0)
    {
      goto LABEL_894;
    }
  }

  else
  {
    if ((v470 & 1) == 0)
    {
      goto LABEL_894;
    }

    VoiceProcessorV2::DetectVoiceActivity(v3, a2);
  }

  v472 = *(v3 + 586);
  if ((v472 & 0x2000000000000000) != 0 && (*(v3 + 4711) & 0x20) != 0)
  {
    v473 = *(v3 + 410);
    if (v473)
    {
      v474 = 1936748646;
LABEL_892:
      AudioUnitGetParameter(v473, v474, 0, 0, &v530.mNumberBuffers);
      goto LABEL_894;
    }
  }

  if ((v472 & 0x1000000000000000) != 0 && (*(v3 + 4711) & 0x10) != 0)
  {
    v473 = *(v3 + 409);
    if (v473)
    {
      v474 = 2;
      goto LABEL_892;
    }
  }

  *&v530.mNumberBuffers = v520;
LABEL_894:
  if (*(v3 + 2088) == 1)
  {
    bzero(*(*(v3 + 137) + 16), 4 * *(v3 + 129));
    v530.mNumberBuffers = 0;
  }

  else
  {
    *(v3 + 4108) = 0;
  }

  if ((*(v3 + 8865) & 0x80) != 0 && (*(v3 + 8873) & 0x80) != 0)
  {
    v475 = *(v3 + 454);
    if (((v475 != 0) & v471) == 1)
    {
      AudioUnitSetParameter(v475, 0x12u, 0, 0, *&v530.mNumberBuffers, 0);
    }
  }

  if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
  {
    VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x2Au, *(v3 + 129), *(v3 + 137), a2);
  }

  if ((*(v3 + 4695) & 8) != 0 && (*(v3 + 4711) & 8) != 0)
  {
    v476 = *(v3 + 408);
    if (v476)
    {
      inInputBufferLists.mSampleTime = *(v3 + 137);
      v529.mSampleTime = inInputBufferLists.mSampleTime;
      LODWORD(v534.realp) = 512;
      v477 = *&a2->mRateScalar;
      *&buf.mSampleTime = *&a2->mSampleTime;
      *&buf.mRateScalar = v477;
      v478 = *&a2->mSMPTETime.mHours;
      *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&buf.mSMPTETime.mHours = v478;
      AudioUnitProcessMultiple(v476, &v534, &buf, *(v3 + 129), 1u, &inInputBufferLists, 1u, &v529);
      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
      {
        VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x7Cu, *(v3 + 129), *(v3 + 137), &buf);
      }
    }
  }

  if (*(v3 + 2093) == 1 && (*(v3 + 4696) & 0x40) != 0 && (*(v3 + 4712) & 0x40) != 0)
  {
    v479 = *(v3 + 419);
    if (v479)
    {
      inInputBufferLists.mSampleTime = *(v3 + 137);
      v529.mSampleTime = inInputBufferLists.mSampleTime;
      LODWORD(v534.realp) = 512;
      v480 = *&a2->mRateScalar;
      *&buf.mSampleTime = *&a2->mSampleTime;
      *&buf.mRateScalar = v480;
      v481 = *&a2->mSMPTETime.mHours;
      *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&buf.mSMPTETime.mHours = v481;
      AudioUnitProcessMultiple(v479, &v534, &buf, *(v3 + 129), 1u, &inInputBufferLists, 1u, &v529);
      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
      {
        VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x7Eu, *(v3 + 129), *(v3 + 137), &buf);
      }
    }
  }

  if ((*(v3 + 586) & 0x8000000000000000) != 0 && (*(v3 + 588) & 0x8000000000000000) != 0)
  {
    v482 = *(v3 + 412);
    if (v482)
    {
      v483 = *&a2->mRateScalar;
      *&buf.mSampleTime = *&a2->mSampleTime;
      *&buf.mRateScalar = v483;
      v484 = *&a2->mSMPTETime.mHours;
      *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&buf.mSMPTETime.mHours = v484;
      LODWORD(inInputBufferLists.mSampleTime) = 512;
      AudioUnitProcess(v482, &inInputBufferLists, &buf, *(v3 + 129), *(v3 + 137));
      if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
      {
        VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x2Cu, *(v3 + 129), *(v3 + 137), &buf);
      }
    }
  }

  v485 = *(v3 + 587);
  if (v485 & 1) != 0 && (*(v3 + 4712))
  {
    v486 = *(v3 + 413);
    if (v486)
    {
      v487 = *&a2->mRateScalar;
      *&buf.mSampleTime = *&a2->mSampleTime;
      *&buf.mRateScalar = v487;
      v488 = *&a2->mSMPTETime.mHours;
      *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&buf.mSMPTETime.mHours = v488;
      LODWORD(inInputBufferLists.mSampleTime) = 512;
      AudioUnitProcess(v486, &inInputBufferLists, &buf, *(v3 + 129), *(v3 + 137));
      v485 = *(v3 + 587);
    }
  }

  if ((v485 & 2) != 0 && (*(v3 + 4712) & 2) != 0 && (v489 = *(v3 + 414)) != 0)
  {
    v490 = *&a2->mRateScalar;
    *&buf.mSampleTime = *&a2->mSampleTime;
    *&buf.mRateScalar = v490;
    v491 = *&a2->mSMPTETime.mHours;
    *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
    *&buf.mSMPTETime.mHours = v491;
    LODWORD(inInputBufferLists.mSampleTime) = 512;
    AudioUnitProcess(v489, &inInputBufferLists, &buf, *(v3 + 129), *(v3 + 137));
    if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
    {
      VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x2Du, *(v3 + 129), *(v3 + 137), &buf);
    }

    if ((*(v3 + 4695) & 0x10) != 0 && (*(v3 + 4711) & 0x10) != 0 && *(v3 + 409))
    {
      LODWORD(v529.mSampleTime) = 0;
      AudioUnitGetParameter(*(v3 + 414), 1u, 0, 0, &v529);
      AudioUnitSetParameter(*(v3 + 409), 0x11u, 0, 0, *&v529.mSampleTime, 0);
    }

    LODWORD(v529.mSampleTime) = 0;
    AudioUnitGetParameter(*(v3 + 414), 0x1Bu, 0, 0, &v529);
    mSampleTime_low = LODWORD(v529.mSampleTime);
    if (*(v3 + 577) != *&v529.mSampleTime)
    {
      if ((*(v3 + 4695) & 0x10) != 0 && (*(v3 + 4711) & 0x10) != 0)
      {
        v493 = *(v3 + 409);
        if (v493)
        {
          AudioUnitSetParameter(v493, 0x12u, 0, 0, *&v529.mSampleTime, 0);
          mSampleTime_low = LODWORD(v529.mSampleTime);
        }
      }

      *(v3 + 577) = mSampleTime_low;
    }
  }

  else if ((*(v3 + 4695) & 0x40) != 0 && ((*(v3 + 4711) & 0x40) != 0 || *(v3 + 480) == 1))
  {
    LODWORD(buf.mSampleTime) = __exp10f(*(v3 + 1099) / 20.0);
    MEMORY[0x2743CCE20](*(*(v3 + 137) + 16), 1, &buf, *(*(v3 + 137) + 16), 1, *(v3 + 129));
    if ((*(v3 + 15881) & 1) != 0 || *(v3 + 15882) == 1)
    {
      VoiceProcessorV2::SaveFilesWriteSignal(v3, 0x2Bu, *(v3 + 129), *(v3 + 137), a2);
    }
  }

  VoiceProcessorV6::ProcessLevelDrivenSuppressor(v3, a2);
  if ((*(v3 + 4696) & 8) != 0 && (*(v3 + 4712) & 8) != 0)
  {
    v494 = *(v3 + 416);
    if (v494)
    {
      v495 = *&a2->mRateScalar;
      *&buf.mSampleTime = *&a2->mSampleTime;
      *&buf.mRateScalar = v495;
      v496 = *&a2->mSMPTETime.mHours;
      *&buf.mSMPTETime.mSubframes = *&a2->mSMPTETime.mSubframes;
      *&buf.mSMPTETime.mHours = v496;
      LODWORD(inInputBufferLists.mSampleTime) = 512;
      v497 = atomic_load(gWirelessChargingMatIsAttached);
      AudioUnitSetParameter(v494, 5u, 0, 0, (v497 & 1), 0);
      AudioUnitProcess(*(v3 + 416), &inInputBufferLists, &buf, *(v3 + 129), *(v3 + 137));
    }
  }

  v498 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t VoiceProcessorV2::GetPropertyInfo(VoiceProcessorV2 *this, int a2, unsigned int *a3, unsigned __int8 *a4)
{
  v30 = *MEMORY[0x277D85DE8];
  result = 1651532146;
  if (!a3 || !a4)
  {
    goto LABEL_109;
  }

  result = 4294956417;
  if (a2 > 1836082531)
  {
    if (a2 > 1986881902)
    {
      if (a2 > 1987209579)
      {
        if (a2 <= 1987211118)
        {
          if (a2 > 1987210612)
          {
            if (a2 != 1987210613)
            {
              v8 = 28524;
              goto LABEL_86;
            }

            goto LABEL_106;
          }

          if (a2 != 1987209580)
          {
            v8 = 26991;
            goto LABEL_86;
          }
        }

        else if (a2 <= 1987211378)
        {
          if (a2 != 1987211119)
          {
            v8 = 28773;
            goto LABEL_86;
          }
        }

        else if (a2 != 1987211379)
        {
          if (a2 != 1987212146)
          {
            v8 = 29812;
LABEL_86:
            v13 = v8 | 0x76720000;
LABEL_87:
            if (a2 == v13)
            {
              goto LABEL_88;
            }

LABEL_115:
            result = 2003332927;
            goto LABEL_109;
          }

LABEL_106:
          result = 0;
          v16 = 8;
          goto LABEL_107;
        }

LABEL_88:
        result = 0;
        v16 = 4;
LABEL_107:
        *a3 = v16;
        IsDeviceSupportingAdvancedChatFlavors = 1;
        goto LABEL_108;
      }

      if (a2 > 1987207779)
      {
        if (a2 > 1987208052)
        {
          if (a2 != 1987208053)
          {
            v8 = 25715;
            goto LABEL_86;
          }
        }

        else if (a2 != 1987207780)
        {
          v8 = 25204;
          goto LABEL_86;
        }

        goto LABEL_88;
      }

      if (a2 <= 1986884465)
      {
        if (a2 == 1986881903)
        {
          goto LABEL_88;
        }

        v12 = 1986882933;
        goto LABEL_32;
      }

      if (a2 == 1986884466)
      {
        goto LABEL_106;
      }

      v14 = 29812;
LABEL_81:
      v13 = v14 | 0x766D0000;
      goto LABEL_87;
    }

    if (a2 > 1937141090)
    {
      if (a2 > 1986097260)
      {
        if (a2 > 1986880626)
        {
          if (a2 == 1986880627)
          {
            goto LABEL_88;
          }

          v14 = 26988;
        }

        else
        {
          if (a2 == 1986097261)
          {
            goto LABEL_88;
          }

          v14 = 25187;
        }

        goto LABEL_81;
      }

      if (a2 <= 1953915763)
      {
        if (a2 == 1937141091)
        {
          goto LABEL_88;
        }

        v12 = 1953915762;
        goto LABEL_32;
      }

      if (a2 == 1953915764)
      {
        goto LABEL_88;
      }

      v11 = 1969844082;
      goto LABEL_68;
    }

    if (a2 <= 1885957986)
    {
      if (a2 > 1836278116)
      {
        if (a2 != 1836278117 && a2 != 1868653667)
        {
          goto LABEL_115;
        }

        if (!_os_feature_enabled_impl())
        {
          result = 4294956417;
          goto LABEL_109;
        }

        goto LABEL_106;
      }

      if (a2 == 1836082532)
      {
        *a3 = 4;
        IsDeviceSupportingAdvancedChatFlavors = VoiceProcessorV2::IsDeviceSupportingAdvancedChatFlavors(0xFFFFD581);
        result = 0;
LABEL_108:
        *a4 = IsDeviceSupportingAdvancedChatFlavors;
        goto LABEL_109;
      }

      v11 = 1836266093;
      goto LABEL_68;
    }

    if (a2 > 1936746594)
    {
      if (a2 != 1936746595)
      {
        if (a2 == 1936747876)
        {
          *buf = 0;
          if (GetSpatialMetadataSPI(void)::sSpatialMetadataSPIOnce != -1)
          {
            dispatch_once(&GetSpatialMetadataSPI(void)::sSpatialMetadataSPIOnce, &__block_literal_global_3842);
          }

          (*(GetSpatialMetadataSPI(void)::sSpatialMetadataSPI + 8))(buf, 32);
          v22 = 0;
          if (GetSpatialMetadataSPI(void)::sSpatialMetadataSPIOnce != -1)
          {
            dispatch_once(&GetSpatialMetadataSPI(void)::sSpatialMetadataSPIOnce, &__block_literal_global_3842);
          }

          (*(GetSpatialMetadataSPI(void)::sSpatialMetadataSPI + 40))(*buf, &v22);
          if (GetSpatialMetadataSPI(void)::sSpatialMetadataSPIOnce != -1)
          {
            dispatch_once(&GetSpatialMetadataSPI(void)::sSpatialMetadataSPIOnce, &__block_literal_global_3842);
          }

          (*(GetSpatialMetadataSPI(void)::sSpatialMetadataSPI + 16))(*buf);
          result = 0;
          v16 = v22;
          goto LABEL_107;
        }

        goto LABEL_115;
      }

      goto LABEL_106;
    }

    if (a2 != 1885957987)
    {
      v13 = 1936744803;
      goto LABEL_87;
    }

LABEL_56:
    result = 0;
    v15 = 4;
LABEL_103:
    *a3 = v15;
    *a4 = 0;
    goto LABEL_109;
  }

  if (a2 <= 1634300530)
  {
    switch(a2)
    {
      case 32768:
      case 32769:
      case 32772:
      case 32773:
      case 32786:
      case 32787:
      case 32788:
      case 32792:
      case 32794:
      case 32797:
        goto LABEL_88;
      case 32780:
        result = 0;
        v9 = *(this + 528);
        v10 = *(this + 526);
        goto LABEL_93;
      case 32781:
        result = 0;
        v9 = *(this + 536);
        v10 = *(this + 534);
LABEL_93:
        v16 = (v9 - v10) & 0xFFFFFFFC;
        goto LABEL_107;
      case 32783:
        if (*(this + 278))
        {
          goto LABEL_106;
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_101;
        }

        *buf = 136315906;
        *&buf[4] = "vpProperties.cpp";
        v24 = 1024;
        v25 = 123;
        v26 = 2080;
        v27 = "mTelephonyMicDSPSettingsDict != nullptr";
        v28 = 2080;
        v29 = "InvalidPropertyValue";
        v17 = MEMORY[0x277D86220];
        break;
      case 32784:
        if (*(this + 279))
        {
          goto LABEL_106;
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_101;
        }

        *buf = 136315906;
        *&buf[4] = "vpProperties.cpp";
        v24 = 1024;
        v25 = 129;
        v26 = 2080;
        v27 = "mTelephonyRefDSPSettingsDict != nullptr";
        v28 = 2080;
        v29 = "InvalidPropertyValue";
        v17 = MEMORY[0x277D86220];
        break;
      case 32796:
        result = 0;
        v15 = 4 * *(this + 552);
        goto LABEL_103;
      case 32798:
        if (*(this + 280))
        {
          goto LABEL_106;
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_101;
        }

        *buf = 136315906;
        *&buf[4] = "vpProperties.cpp";
        v24 = 1024;
        v25 = 135;
        v26 = 2080;
        v27 = "mPowerBudget != nullptr";
        v28 = 2080;
        v29 = "InvalidPropertyValue";
        v17 = MEMORY[0x277D86220];
        break;
      case 32799:
      case 32800:
      case 32801:
        goto LABEL_106;
      default:
        goto LABEL_115;
    }

    _os_log_impl(&dword_2724B4000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d  ca_require: %s %s", buf, 0x26u);
LABEL_101:
    result = 561406316;
    goto LABEL_109;
  }

  if (a2 > 1701864050)
  {
    if (a2 > 1718384241)
    {
      if (a2 > 1768514914)
      {
        if (a2 != 1768514915)
        {
          v13 = 1835361379;
          goto LABEL_87;
        }

        goto LABEL_88;
      }

      if (a2 == 1718384242)
      {
        goto LABEL_88;
      }

      v12 = 1751214436;
LABEL_32:
      if (a2 != v12)
      {
        goto LABEL_115;
      }

      goto LABEL_106;
    }

    if (a2 == 1701864051 || a2 == 1701868402)
    {
      goto LABEL_88;
    }

    if (a2 != 1718384225)
    {
      goto LABEL_115;
    }

    goto LABEL_56;
  }

  if (a2 > 1635085676)
  {
    if (a2 == 1635085677)
    {
      goto LABEL_88;
    }

    if (a2 == 1684305512)
    {
LABEL_109:
      v19 = *MEMORY[0x277D85DE8];
      return result;
    }

    v11 = 1685483378;
LABEL_68:
    if (a2 != v11)
    {
      goto LABEL_115;
    }

    goto LABEL_109;
  }

  if (a2 == 1634300531)
  {
    result = 0;
    v16 = 8 * *(this + 544);
    goto LABEL_107;
  }

  if (a2 != 1634758259)
  {
    v13 = 1634758502;
    goto LABEL_87;
  }

  v20 = *(*this + 152);
  v21 = *MEMORY[0x277D85DE8];

  return v20(this, 1634758502);
}

void *___ZL21GetSpatialMetadataSPIv_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/AudioToolbox.framework/libAudioDSP.dylib", 1);
  if (result)
  {
    result = dlsym(result, "gSpatialMetadataSPI");
    GetSpatialMetadataSPI(void)::sSpatialMetadataSPI = result;
  }

  return result;
}

uint64_t VoiceProcessorV2::GetProperty(VoiceProcessorV2 *this, uint64_t a2, unsigned int *a3, unsigned int a4, unsigned int *a5)
{
  v6 = a2;
  if (a3)
  {
    CADeprecated::CAAtomicSignaler::PersistentTryer::PersistentTryer(&v11, this + 2496, 0);
    result = VoiceProcessorV2::GetPropertyInternal(this, v6, a3, a4, a5);
    atomic_fetch_add((v11 + 4), 0xFFFFFFFF);
  }

  else
  {
    v12 = 0;
    return (*(*this + 152))(this, a2, a5, &v12);
  }

  return result;
}

uint64_t VoiceProcessorV2::GetPropertyInternal(VoiceProcessorV2 *this, int a2, unsigned int *a3, unsigned int a4, unsigned int *a5)
{
  while (1)
  {
    v42 = *MEMORY[0x277D85DE8];
    v9 = this + 0x4000;
    v36 = a3;
    v34 = 0;
    v35 = a4;
    if (a2 > 1684305511)
    {
      if (a2 <= 1868653666)
      {
        if (a2 > 1768514914)
        {
          if (a2 <= 1836082531)
          {
            if (a2 != 1768514915)
            {
              if (a2 != 1835361379)
              {
                goto LABEL_119;
              }

              if (a4 != 4)
              {
                v15 = 561211770;
                if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_151;
                }

                *buf = 136315906;
                *&buf[4] = "vpProperties.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 405;
                *&buf[18] = 2080;
                *&buf[20] = "inDataSize == sizeof(UInt32)";
                v40 = 2080;
                v41 = "BadPropertySize";
                v16 = MEMORY[0x277D86220];
                goto LABEL_51;
              }

              if ((*(*this + 112))(this) > 9 || (v18 = *(this + 20), v18 == 2) || v18 == 4)
              {
                v10 = *(this + 2260);
              }

              else
              {
                v10 = *(this + 2264);
              }

              goto LABEL_147;
            }

            if (a4 <= 3)
            {
              goto LABEL_140;
            }

            v10 = *(this + 16568);
          }

          else
          {
            if (a2 != 1836082532)
            {
              if (a2 != 1836266093)
              {
                if (a2 != 1836278117)
                {
                  goto LABEL_119;
                }

                if (a4 != 8)
                {
                  v15 = 561211770;
                  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_151;
                  }

                  *buf = 136315906;
                  *&buf[4] = "vpProperties.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 662;
                  *&buf[18] = 2080;
                  *&buf[20] = "inDataSize == sizeof(AUVoiceIOMutedSpeechActivityEventListener)";
                  v40 = 2080;
                  v41 = "BadPropertySize";
                  v16 = MEMORY[0x277D86220];
                  goto LABEL_51;
                }

                Copy = *(this + 2053);
                if (Copy)
                {
                  Copy = _Block_copy(Copy);
                }

LABEL_87:
                *a3 = Copy;
                goto LABEL_113;
              }

              goto LABEL_54;
            }

            if (a4 != 4)
            {
              v15 = 561211770;
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_151;
              }

              *buf = 136315906;
              *&buf[4] = "vpProperties.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 424;
              *&buf[18] = 2080;
              *&buf[20] = "inDataSize == sizeof(UInt32)";
              v40 = 2080;
              v41 = "BadPropertySize";
              v16 = MEMORY[0x277D86220];
              goto LABEL_51;
            }

            if (!VoiceProcessorV2::IsDeviceSupportingAdvancedChatFlavors(this))
            {
              *a3 = 0;
              goto LABEL_148;
            }

            v10 = *(this + 2262);
          }

LABEL_147:
          *a3 = v10;
LABEL_148:
          v27 = 4;
LABEL_149:
          *a5 = v27;
          goto LABEL_150;
        }

        if (a2 > 1718384224)
        {
          if (a2 == 1718384225)
          {
            if (a4 <= 3)
            {
              v15 = 561211770;
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_151;
              }

              *buf = 136315906;
              *&buf[4] = "vpProperties.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 657;
              *&buf[18] = 2080;
              *&buf[20] = "inDataSize >= sizeof(UInt32)";
              v40 = 2080;
              v41 = "BadPropertySize";
              v16 = MEMORY[0x277D86220];
              goto LABEL_51;
            }

            v10 = *(this + 4135);
            goto LABEL_147;
          }

          if (a2 == 1718384242)
          {
            if (a4 <= 3)
            {
              v15 = 561211770;
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_151;
              }

              *buf = 136315906;
              *&buf[4] = "vpProperties.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 652;
              *&buf[18] = 2080;
              *&buf[20] = "inDataSize >= sizeof(UInt32)";
              v40 = 2080;
              v41 = "BadPropertySize";
              v16 = MEMORY[0x277D86220];
              goto LABEL_51;
            }

            v10 = *(this + 4134);
            goto LABEL_147;
          }

          if (a2 != 1751214436)
          {
            goto LABEL_119;
          }

          if (a4 != 8)
          {
LABEL_49:
            v15 = 561211770;
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_151;
            }

            *buf = 136315906;
            *&buf[4] = "vpProperties.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 735;
            *&buf[18] = 2080;
            *&buf[20] = "inDataSize == sizeof(CFStringRef)";
            v40 = 2080;
            v41 = "BadPropertySize";
            v16 = MEMORY[0x277D86220];
            goto LABEL_51;
          }

          v11 = *(this + 274);
          if (v11)
          {
LABEL_111:
            CFRetain(v11);
          }

LABEL_112:
          *a3 = v11;
          goto LABEL_113;
        }

        if (a2 != 1684305512 && a2 != 1685483378)
        {
          goto LABEL_119;
        }
      }

      else
      {
        if (a2 <= 1937141090)
        {
          if (a2 > 1936744802)
          {
            if (a2 == 1936744803)
            {
              if (a4 != 4)
              {
                v15 = 561211770;
                if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_151;
                }

                *buf = 136315906;
                *&buf[4] = "vpProperties.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 418;
                *&buf[18] = 2080;
                *&buf[20] = "inDataSize == sizeof(UInt32)";
                v40 = 2080;
                v41 = "BadPropertySize";
                v16 = MEMORY[0x277D86220];
                goto LABEL_51;
              }

              v10 = *(this + 2261);
              goto LABEL_147;
            }

            if (a2 != 1936746595)
            {
              if (a2 == 1936747876)
              {
                *buf = &v35;
                *&buf[8] = &v34;
                *&buf[16] = &v36;
                v38[0] = caulk::function_ref<void ()(unsigned char const*,unsigned long)>::functor_invoker<VoiceProcessorV2::GetPropertyInternal(unsigned int,void *,unsigned int,unsigned int *)::$_0>;
                v38[1] = buf;
                v37 = v38;
                caulk::concurrent::lf_read_synchronized_write<std::optional<std::vector<unsigned char>>>::access<vp::utility::Lock_Free_SRSW_Storage<unsigned char>::load(caulk::function_ref<void ()(unsigned char const*,unsigned long)>)::{lambda(std::optional<std::vector<unsigned char>> const&)#1}>((this + 16296), &v37);
LABEL_150:
                v15 = v34;
                goto LABEL_151;
              }

              goto LABEL_119;
            }

            if (a4 <= 7)
            {
              v15 = 561211770;
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_151;
              }

              *buf = 136315906;
              *&buf[4] = "vpProperties.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 646;
              *&buf[18] = 2080;
              *&buf[20] = "inDataSize >= sizeof(SpatialHeadTrackingConfiguration)";
              v40 = 2080;
              v41 = "BadPropertySize";
              v16 = MEMORY[0x277D86220];
              goto LABEL_51;
            }

            *a3 = *(this + 2048);
            goto LABEL_113;
          }

          if (a2 == 1868653667)
          {
            if (!_os_feature_enabled_impl())
            {
              goto LABEL_119;
            }

            if (a4 != 8)
            {
              v15 = 561211770;
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315906;
                *&buf[4] = "vpProperties.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 670;
                *&buf[18] = 2080;
                *&buf[20] = "inDataSize == sizeof(AUVoiceIOOtherAudioDuckingConfiguration)";
                v40 = 2080;
                v41 = "BadPropertySize";
                v16 = MEMORY[0x277D86220];
                goto LABEL_51;
              }

              goto LABEL_151;
            }

            v29 = *(v9 + 45);
            *a3 = v9[177];
            a3[1] = v29;
            goto LABEL_113;
          }

          if (a2 != 1885957987)
          {
            goto LABEL_119;
          }

          if (a4 <= 3)
          {
            v15 = 561211770;
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_151;
            }

            *buf = 136315906;
            *&buf[4] = "vpProperties.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 686;
            *&buf[18] = 2080;
            *&buf[20] = "inDataSize >= sizeof(Float32)";
            v40 = 2080;
            v41 = "BadPropertySize";
            v16 = MEMORY[0x277D86220];
            goto LABEL_51;
          }

          v14 = *(this + 292);
LABEL_66:
          *a3 = v14;
          goto LABEL_148;
        }

        if (a2 <= 1969844081)
        {
          if (a2 == 1937141091)
          {
            if (a4 != 4)
            {
              v15 = 561211770;
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_151;
              }

              *buf = 136315906;
              *&buf[4] = "vpProperties.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 435;
              *&buf[18] = 2080;
              *&buf[20] = "inDataSize == sizeof(Float32)";
              v40 = 2080;
              v41 = "BadPropertySize";
              v16 = MEMORY[0x277D86220];
              goto LABEL_51;
            }

            v30 = atomic_load(this + 567);
            *v36 = v30;
            goto LABEL_148;
          }

          if (a2 != 1953915762)
          {
            if (a2 == 1953915764)
            {
              if (a4 <= 3)
              {
                v15 = 561211770;
                if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_151;
                }

                *buf = 136315906;
                *&buf[4] = "vpProperties.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 496;
                *&buf[18] = 2080;
                *&buf[20] = "inDataSize >= sizeof(UInt32)";
                v40 = 2080;
                v41 = "BadPropertySize";
                v16 = MEMORY[0x277D86220];
                goto LABEL_51;
              }

              v10 = *(this + 553);
              goto LABEL_147;
            }

LABEL_119:
            v17 = 2003332927;
            goto LABEL_141;
          }

          if (a4 <= 7)
          {
            v15 = 561211770;
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_151;
            }

            *buf = 136315906;
            *&buf[4] = "vpProperties.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 502;
            *&buf[18] = 2080;
            *&buf[20] = "inDataSize >= sizeof(Float64)";
            v40 = 2080;
            v41 = "BadPropertySize";
            v16 = MEMORY[0x277D86220];
            goto LABEL_51;
          }

          *a3 = *(this + 554);
LABEL_113:
          v27 = 8;
          goto LABEL_149;
        }

        if (a2 != 1969844082)
        {
          if (a2 != 1986097261)
          {
            if (a2 != 1987208053)
            {
              goto LABEL_119;
            }

            if (a4 <= 3)
            {
              v15 = 561211770;
              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_151;
              }

              *buf = 136315906;
              *&buf[4] = "vpProperties.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 681;
              *&buf[18] = 2080;
              *&buf[20] = "inDataSize >= sizeof(Float32)";
              v40 = 2080;
              v41 = "BadPropertySize";
              v16 = MEMORY[0x277D86220];
              goto LABEL_51;
            }

            v14 = *(this + 291);
            goto LABEL_66;
          }

          if (a4 > 3)
          {
            v10 = *(this + 4143);
            goto LABEL_147;
          }

LABEL_140:
          v17 = 561211770;
          goto LABEL_141;
        }
      }

LABEL_54:
      v17 = -10879;
LABEL_141:
      v34 = v17;
      goto LABEL_150;
    }

    if (a2 <= 1634300530)
    {
      switch(a2)
      {
        case 32768:
          if (a4 > 3)
          {
            v10 = *(this + 480);
            goto LABEL_147;
          }

          v15 = 561211770;
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_151;
          }

          *buf = 136315906;
          *&buf[4] = "vpProperties.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 379;
          *&buf[18] = 2080;
          *&buf[20] = "inDataSize >= sizeof(UInt32)";
          v40 = 2080;
          v41 = "BadPropertySize";
          v16 = MEMORY[0x277D86220];
          goto LABEL_51;
        case 32769:
          if (a4 > 3)
          {
            *a5 = 4;
            v24 = (*(this + 4696) & 2) != 0 && *(this + 414) != 0;
            goto LABEL_143;
          }

          v15 = 561211770;
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_151;
          }

          *buf = 136315906;
          *&buf[4] = "vpProperties.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 397;
          *&buf[18] = 2080;
          *&buf[20] = "inDataSize >= sizeof(UInt32)";
          v40 = 2080;
          v41 = "BadPropertySize";
          v16 = MEMORY[0x277D86220];
          goto LABEL_51;
        case 32772:
          if (a4 > 3)
          {
            v10 = *(this + 2088);
            goto LABEL_147;
          }

          v15 = 561211770;
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_151;
          }

          *buf = 136315906;
          *&buf[4] = "vpProperties.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 385;
          *&buf[18] = 2080;
          *&buf[20] = "inDataSize >= sizeof(UInt32)";
          v40 = 2080;
          v41 = "BadPropertySize";
          v16 = MEMORY[0x277D86220];
          goto LABEL_51;
        case 32773:
          if (a4 == 4)
          {
            v10 = *(this + 2091);
            goto LABEL_147;
          }

          v15 = 561211770;
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_151;
          }

          *buf = 136315906;
          *&buf[4] = "vpProperties.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 441;
          *&buf[18] = 2080;
          *&buf[20] = "inDataSize == sizeof(UInt32)";
          v40 = 2080;
          v41 = "BadPropertySize";
          v16 = MEMORY[0x277D86220];
          goto LABEL_51;
        case 32780:
          v25 = *(this + 263);
          v26 = *(this + 264) - v25;
          if (v26 <= a4)
          {
            memcpy(a3, v25, v26);
            v22 = *(this + 528);
            v23 = *(this + 526);
            goto LABEL_79;
          }

          v15 = 561211770;
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_151;
          }

          *buf = 136315906;
          *&buf[4] = "vpProperties.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 453;
          *&buf[18] = 2080;
          *&buf[20] = "inDataSize >= (mMicTrimGainsDB.size() * sizeof(Float32))";
          v40 = 2080;
          v41 = "BadPropertySize";
          v16 = MEMORY[0x277D86220];
          goto LABEL_51;
        case 32781:
          v20 = *(this + 267);
          v21 = *(this + 268) - v20;
          if (v21 <= a4)
          {
            memcpy(a3, v20, v21);
            v22 = *(this + 536);
            v23 = *(this + 534);
LABEL_79:
            v27 = (v22 - v23) & 0xFFFFFFFC;
            goto LABEL_149;
          }

          v15 = 561211770;
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_151;
          }

          *buf = 136315906;
          *&buf[4] = "vpProperties.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 468;
          *&buf[18] = 2080;
          *&buf[20] = "inDataSize >= (mRefTrimGainsDB.size() * sizeof(Float32))";
          v40 = 2080;
          v41 = "BadPropertySize";
          v16 = MEMORY[0x277D86220];
          goto LABEL_51;
        case 32783:
          if (a4 == 8)
          {
            v19 = *(this + 278);
            if (v19)
            {
              goto LABEL_86;
            }

            v15 = 561406316;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315906;
              *&buf[4] = "vpProperties.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 510;
              *&buf[18] = 2080;
              *&buf[20] = "mTelephonyMicDSPSettingsDict != nullptr";
              v40 = 2080;
              v41 = "InvalidPropertyValue";
              v16 = MEMORY[0x277D86220];
              goto LABEL_51;
            }

            goto LABEL_151;
          }

          v15 = 561211770;
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_151;
          }

          *buf = 136315906;
          *&buf[4] = "vpProperties.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 509;
          *&buf[18] = 2080;
          *&buf[20] = "inDataSize == sizeof(CFDictionaryRef)";
          v40 = 2080;
          v41 = "BadPropertySize";
          v16 = MEMORY[0x277D86220];
          goto LABEL_51;
        case 32784:
          if (a4 != 8)
          {
            v15 = 561211770;
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_151;
            }

            *buf = 136315906;
            *&buf[4] = "vpProperties.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 517;
            *&buf[18] = 2080;
            *&buf[20] = "inDataSize == sizeof(CFDictionaryRef)";
            v40 = 2080;
            v41 = "BadPropertySize";
            v16 = MEMORY[0x277D86220];
            goto LABEL_51;
          }

          v19 = *(this + 279);
          if (v19)
          {
            goto LABEL_86;
          }

          v15 = 561406316;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            *&buf[4] = "vpProperties.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 518;
            *&buf[18] = 2080;
            *&buf[20] = "mTelephonyRefDSPSettingsDict != nullptr";
            v40 = 2080;
            v41 = "InvalidPropertyValue";
            v16 = MEMORY[0x277D86220];
            goto LABEL_51;
          }

          goto LABEL_151;
        case 32786:
          if (a4 > 3)
          {
            *a5 = 4;
            v24 = *(this + 688);
LABEL_143:
            *a3 = v24;
            goto LABEL_150;
          }

          v15 = 561211770;
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_151;
          }

          *buf = 136315906;
          *&buf[4] = "vpProperties.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 539;
          *&buf[18] = 2080;
          *&buf[20] = "inDataSize >= sizeof(UInt32)";
          v40 = 2080;
          v41 = "BadPropertySize";
          v16 = MEMORY[0x277D86220];
          goto LABEL_51;
        case 32787:
          if (a4 > 3)
          {
            v10 = *(this + 20);
            goto LABEL_147;
          }

          v15 = 561211770;
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_151;
          }

          *buf = 136315906;
          *&buf[4] = "vpProperties.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 545;
          *&buf[18] = 2080;
          *&buf[20] = "inDataSize >= sizeof(UInt32)";
          v40 = 2080;
          v41 = "BadPropertySize";
          v16 = MEMORY[0x277D86220];
          goto LABEL_51;
        case 32788:
          if (a4 > 3)
          {
            v10 = *(this + 2093);
            goto LABEL_147;
          }

          v15 = 561211770;
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_151;
          }

          *buf = 136315906;
          *&buf[4] = "vpProperties.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 447;
          *&buf[18] = 2080;
          *&buf[20] = "inDataSize >= sizeof(UInt32)";
          v40 = 2080;
          v41 = "BadPropertySize";
          v16 = MEMORY[0x277D86220];
          goto LABEL_51;
        case 32792:
          if (a4 > 3)
          {
            v10 = *(this + 288);
            goto LABEL_147;
          }

          v15 = 561211770;
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_151;
          }

          *buf = 136315906;
          *&buf[4] = "vpProperties.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 583;
          *&buf[18] = 2080;
          *&buf[20] = "inDataSize >= sizeof(UInt32)";
          v40 = 2080;
          v41 = "BadPropertySize";
          v16 = MEMORY[0x277D86220];
          goto LABEL_51;
        case 32794:
          if (a4 > 3)
          {
            v10 = *(this + 2090);
            goto LABEL_147;
          }

          v15 = 561211770;
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_151;
          }

          *buf = 136315906;
          *&buf[4] = "vpProperties.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 391;
          *&buf[18] = 2080;
          *&buf[20] = "inDataSize >= sizeof(UInt32)";
          v40 = 2080;
          v41 = "BadPropertySize";
          v16 = MEMORY[0x277D86220];
          goto LABEL_51;
        case 32796:
          v28 = 4 * *(this + 552);
          if (v28 <= a4)
          {
            memcpy(a3, *(this + 275), v28);
            v27 = 4 * *(this + 552);
            goto LABEL_149;
          }

          v15 = 561211770;
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_151;
          }

          *buf = 136315906;
          *&buf[4] = "vpProperties.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 551;
          *&buf[18] = 2080;
          *&buf[20] = "inDataSize >= (mNumSpeakerInputDataSource * sizeof(UInt32))";
          v40 = 2080;
          v41 = "BadPropertySize";
          v16 = MEMORY[0x277D86220];
          goto LABEL_51;
        case 32798:
          if (a4 <= 7)
          {
            v15 = 561211770;
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_151;
            }

            *buf = 136315906;
            *&buf[4] = "vpProperties.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 524;
            *&buf[18] = 2080;
            *&buf[20] = "inDataSize >= sizeof(CFDictionaryRef)";
            v40 = 2080;
            v41 = "BadPropertySize";
            v16 = MEMORY[0x277D86220];
          }

          else
          {
            v19 = *(this + 280);
            if (v19)
            {
LABEL_86:
              Copy = CFDictionaryCreateCopy(*MEMORY[0x277CBECE8], v19);
              goto LABEL_87;
            }

            v15 = 561406316;
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_151;
            }

            *buf = 136315906;
            *&buf[4] = "vpProperties.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 525;
            *&buf[18] = 2080;
            *&buf[20] = "mPowerBudget != nullptr";
            v40 = 2080;
            v41 = "InvalidPropertyValue";
            v16 = MEMORY[0x277D86220];
          }

          goto LABEL_51;
        case 32799:
          if (a4 == 8)
          {
            v11 = *(this + 262);
            if (!v11)
            {
              goto LABEL_112;
            }

            goto LABEL_111;
          }

          v15 = 561211770;
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_151;
          }

          *buf = 136315906;
          *&buf[4] = "vpProperties.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 458;
          *&buf[18] = 2080;
          *&buf[20] = "inDataSize == sizeof(CFArrayRef)";
          v40 = 2080;
          v41 = "BadPropertySize";
          v16 = MEMORY[0x277D86220];
          goto LABEL_51;
        case 32800:
          if (a4 == 8)
          {
            v11 = *(this + 266);
            if (!v11)
            {
              goto LABEL_112;
            }

            goto LABEL_111;
          }

          v15 = 561211770;
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_151;
          }

          *buf = 136315906;
          *&buf[4] = "vpProperties.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 473;
          *&buf[18] = 2080;
          *&buf[20] = "inDataSize == sizeof(CFArrayRef)";
          v40 = 2080;
          v41 = "BadPropertySize";
          v16 = MEMORY[0x277D86220];
          goto LABEL_51;
        case 32801:
          if (a4 == 8)
          {
            v11 = *(this + 270);
            if (!v11)
            {
              goto LABEL_112;
            }

            goto LABEL_111;
          }

          v15 = 561211770;
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_151;
          }

          *buf = 136315906;
          *&buf[4] = "vpProperties.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 483;
          *&buf[18] = 2080;
          *&buf[20] = "inDataSize == sizeof(CFDictionaryRef)";
          v40 = 2080;
          v41 = "BadPropertySize";
          v16 = MEMORY[0x277D86220];
          break;
        default:
          goto LABEL_119;
      }

      goto LABEL_51;
    }

    if (a2 > 1634758501)
    {
      break;
    }

    if (a2 == 1634300531)
    {
      v31 = 8 * *(this + 544);
      if (v31 <= a4)
      {
        memcpy(a3, *(this + 271), v31);
        v27 = 8 * *(this + 544);
        goto LABEL_149;
      }

      v15 = 561211770;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_151;
      }

      *buf = 136315906;
      *&buf[4] = "vpProperties.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 490;
      *&buf[18] = 2080;
      *&buf[20] = "inDataSize >= (mNumMetricsReporterIDs * sizeof(CAReporterID))";
      v40 = 2080;
      v41 = "BadPropertySize";
      v16 = MEMORY[0x277D86220];
LABEL_51:
      _os_log_impl(&dword_2724B4000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d  ca_require: %s %s", buf, 0x26u);
      goto LABEL_151;
    }

    if (a2 != 1634758259)
    {
      goto LABEL_119;
    }

    v13 = *MEMORY[0x277D85DE8];
    a2 = 1634758502;
  }

  if (a2 == 1634758502)
  {
    if (a4 <= 3)
    {
      goto LABEL_140;
    }

    v10 = *(this + 4152);
    goto LABEL_147;
  }

  if (a2 != 1635085677)
  {
    goto LABEL_119;
  }

  if (a4 == 4)
  {
    *a3 = *(this + 2288);
    *a5 = 4;
    goto LABEL_49;
  }

  v15 = 561211770;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    *&buf[4] = "vpProperties.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 730;
    *&buf[18] = 2080;
    *&buf[20] = "inDataSize == sizeof(UInt32)";
    v40 = 2080;
    v41 = "BadPropertySize";
    v16 = MEMORY[0x277D86220];
    goto LABEL_51;
  }

LABEL_151:
  v32 = *MEMORY[0x277D85DE8];
  return v15;
}

void sub_27257F488(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

unsigned int ***caulk::function_ref<void ()(unsigned char const*,unsigned long)>::functor_invoker<VoiceProcessorV2::GetPropertyInternal(unsigned int,void *,unsigned int,unsigned int *)::$_0>(unsigned int ***result, const void *a2, size_t a3)
{
  v3 = *result;
  if (***result >= a3)
  {
    return memcpy(**(v3 + 16), a2, a3);
  }

  **(v3 + 8) = 561211770;
  return result;
}

uint64_t VoiceProcessorV2::SetProperty(VoiceProcessorV2 *this, int a2, float *theDict, void *a4)
{
  v586 = *MEMORY[0x277D85DE8];
  v5 = 1651532146;
  if (!theDict)
  {
    goto LABEL_442;
  }

  v6 = a4;
  if (!a4)
  {
    goto LABEL_442;
  }

  v7 = theDict;
  v10 = this + 15881;
  v574 = this + 15881;
  if (a2 != 1937141091)
  {
    if (a2 != 1936747876)
    {
      if (a2 == 32798)
      {
        v5 = 0;
        v11 = *(this + 19);
        if (v11 <= 0x30 && ((0x1FFFE67E7FFDEuLL >> v11) & 1) != 0)
        {
          if (a4 > 7)
          {
            v12 = (this + 2240);
            v13 = *(this + 280);
            if (v13)
            {
              CFRelease(v13);
              *v12 = 0;
            }

            Copy = CFDictionaryCreateCopy(*MEMORY[0x277CBECE8], v7);
            *v12 = Copy;
            if (Copy)
            {
              v573 = this + 11000;
              v15 = this;
              v16 = this + 3512;
              v17 = &dword_27275A050;
              v18 = 36;
              while (1)
              {
                v20 = *(v17 - 2);
                v19 = *(v17 - 1);
                v21 = *v17;
                AUPropAndParamHelper::AddItemToAUPropsList(&v573[24 * v20], v19, *v17, 0, 8uLL, v12, 1);
                if (v20 >= 0x40)
                {
                  std::__throw_out_of_range[abi:ne200100]("bitset test argument out of range");
                }

                v22 = 1 << v20;
                v23 = 0x5FFFFFFFC7FFFFFFuLL >> v20;
                if ((*(v15 + 1108) & (1 << v20)) != 0 && (v23 & 1) != 0 && *&v16[8 * v20])
                {
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  v24 = VPLogScope(void)::scope;
                  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
                  {
                    v25 = (*v24 ? *v24 : MEMORY[0x277D86220]);
                    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
                    {
                      Count = CFDictionaryGetCount(*v12);
                      *buf = 136315906;
                      *&buf[4] = "vpProperties.cpp";
                      *&buf[12] = 1024;
                      *&buf[14] = 786;
                      *&buf[18] = 1024;
                      *&buf[20] = v20;
                      *&buf[24] = 1024;
                      *&buf[26] = Count;
                      _os_log_impl(&dword_2724B4000, v25, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> setproperty: thermal budget on AU (%d); count = %u", buf, 0x1Eu);
                    }
                  }

                  v27 = *(v15 + 1588);
                  if (v27 && ((*v574 & 1) != 0 || v574[1] == 1))
                  {
                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    v28 = VPLogScope(void)::scope;
                    v29 = CFDictionaryGetCount(*v12);
                    CALegacyLog::log(v27, 3, v28, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 786, "SetProperty", "setproperty: thermal budget on AU (%d); count = %u", v20, v29);
                  }

                  AudioUnitSetProperty(*&v16[8 * v20], v19, v21, 0, v12, 8u);
                }

                else
                {
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  v30 = v574;
                  v31 = VPLogScope(void)::scope;
                  if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(4, VPLogScope(void)::scope, 0))
                  {
                    v32 = (*v31 ? *v31 : MEMORY[0x277D86220]);
                    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
                    {
                      v33 = v23 & 1;
                      v34 = *&v16[8 * v20];
                      if ((*(v15 + 1108) & v22) == 0)
                      {
                        v33 = 0;
                      }

                      *buf = 136316162;
                      *&buf[4] = "vpProperties.cpp";
                      *&buf[12] = 1024;
                      *&buf[14] = 793;
                      *&buf[18] = 1024;
                      *&buf[20] = v20;
                      *&buf[24] = 1024;
                      *&buf[26] = v33;
                      *&buf[30] = 1024;
                      *&buf[32] = v34 != 0;
                      _os_log_impl(&dword_2724B4000, v32, OS_LOG_TYPE_INFO, "%25s:%-5d  <vp> setproperty: AU (%d) enabled = %d, null = %d", buf, 0x24u);
                    }
                  }

                  v35 = *(v15 + 1588);
                  if (!v35 || (*v574 & 1) == 0 && v574[1] != 1)
                  {
                    goto LABEL_54;
                  }

                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  if ((*(v15 + 1108) & v22) != 0)
                  {
                    v36 = v23 & 1;
                  }

                  else
                  {
                    v36 = 0;
                  }

                  CALegacyLog::log(v35, 4, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 793, "SetProperty", "setproperty: AU (%d) enabled = %d, null = %d", v20, v36, *&v16[8 * v20] != 0);
                }

                v30 = v574;
LABEL_54:
                v17 += 3;
                v18 -= 12;
                if (!v18)
                {
                  if (*v30)
                  {
                    VoiceProcessorV2::PListWriteSetPropertyParameters(v15, 32798);
                  }

                  goto LABEL_441;
                }
              }
            }

            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            v86 = VPLogScope(void)::scope;
            if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(4, VPLogScope(void)::scope, 0))
            {
              v87 = (*v86 ? *v86 : MEMORY[0x277D86220]);
              if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
              {
                *buf = 136315394;
                *&buf[4] = "vpProperties.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 798;
                _os_log_impl(&dword_2724B4000, v87, OS_LOG_TYPE_INFO, "%25s:%-5d  <vp> setproperty: thermal budget dict is empty", buf, 0x12u);
              }
            }

            v88 = *(this + 1588);
            if (v88 && ((*v574 & 1) != 0 || v574[1] == 1))
            {
              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              CALegacyLog::log(v88, 4, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 798, "SetProperty", "setproperty: thermal budget dict is empty");
            }

            goto LABEL_441;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            *&buf[4] = "vpProperties.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 763;
            *&buf[18] = 2080;
            *&buf[20] = "inDataSize >= sizeof(CFDictionaryRef)";
            *&buf[28] = 2080;
            *&buf[30] = "BadPropertySize";
            v546 = MEMORY[0x277D86220];
            goto LABEL_1584;
          }

          goto LABEL_1638;
        }

        goto LABEL_442;
      }

      v580 = this + 2408;
      v47 = (*(*(this + 301) + 16))();
      v581 = v47;
      atomic_fetch_add(this + 624, 1u);
      while (*(this + 625))
      {
        v47 = usleep(0x1F4u);
      }

      v49 = 0;
      v5 = 4294956417;
      if (a2 <= 1701868401)
      {
        if (a2 <= 1634300530)
        {
          v50 = (this + 2104);
          switch(a2)
          {
            case 32768:
              v5 = 561211770;
              if (v6 < 4 || *v7 > 1u)
              {
                goto LABEL_1253;
              }

              *(this + 480) = *v7;
              v51 = VPLogScope(void)::once;
              if (*(v574 + 655))
              {
                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                v52 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                if (v52)
                {
                  v53 = v52;
                  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315394;
                    *&buf[4] = "vpProperties.cpp";
                    *&buf[12] = 1024;
                    *&buf[14] = 846;
                    _os_log_impl(&dword_2724B4000, v53, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> Forcing bypass to false due to chat flavor", buf, 0x12u);
                  }
                }

                v54 = *(this + 1588);
                if (v54 && ((*v574 & 1) != 0 || v574[1] == 1))
                {
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  CALegacyLog::log(v54, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 846, "SetProperty", "Forcing bypass to false due to chat flavor");
                }

                *(this + 480) = 0;
                v51 = VPLogScope(void)::once;
              }

              if (v51 != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              v55 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
              if (v55)
              {
                v57 = v55;
                if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
                {
                  v58 = *(this + 480);
                  *buf = 136315650;
                  *&buf[4] = "vpProperties.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 849;
                  *&buf[18] = 1024;
                  *&buf[20] = v58;
                  _os_log_impl(&dword_2724B4000, v57, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> setproperty: bypass =%d", buf, 0x18u);
                }
              }

              v59 = *(this + 1588);
              if (v59 && ((*v574 & 1) != 0 || v574[1] == 1))
              {
                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                CALegacyLog::log(v59, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 849, "SetProperty", "setproperty: bypass =%d", *(this + 480));
              }

              VoiceProcessorV2::ReadAndApplyDefaultsOverride(this, @"vp_bypass", 0, this + 120, v56);
              v60 = *(this + 1573);
              if (*(this + 480) == 1)
              {
                if (!v60)
                {
                  goto LABEL_1367;
                }

                v60(*(this + 1572), 0, 0, 0, 0, *(this + 1139));
                v61 = 4556;
              }

              else
              {
                if (!v60)
                {
                  goto LABEL_1367;
                }

                v60(*(this + 1572), 0, 0, 0, 0, *(this + 1137));
                v61 = 4552;
              }

              (*(this + 1573))(*(this + 1572), 8, 0, 0, 0, *(this + v61));
LABEL_1367:
              if (VoiceProcessorV2::ShouldInteractWithControlCenter(this))
              {
                (*(*this + 600))(this, 1);
              }

              VoiceProcessorV2::ReportMetrics(this);
              goto LABEL_1630;
            case 32769:
              v5 = 561211770;
              if (v6 < 4)
              {
                goto LABEL_1253;
              }

              v207 = *v7;
              if (*v7 > 1u)
              {
                goto LABEL_1253;
              }

              v585[0] = v207 == 1;
              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              v208 = CALog::LogObjIfEnabled(5, VPLogScope(void)::scope);
              if (v208)
              {
                v210 = v208;
                if (os_log_type_enabled(v208, OS_LOG_TYPE_DEBUG))
                {
                  v211 = *(this + 1174);
                  v212 = *(this + 576);
                  v213 = *(this + 414);
                  *buf = 136316418;
                  *&buf[4] = "vpProperties.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 928;
                  *&buf[18] = 1024;
                  *&buf[20] = v207 == 1;
                  *&buf[24] = 1024;
                  *&buf[26] = (v211 >> 1) & 1;
                  *&buf[30] = 1024;
                  *&buf[32] = v212;
                  *&buf[36] = 2048;
                  *&buf[38] = v213;
                  _os_log_impl(&dword_2724B4000, v210, OS_LOG_TYPE_DEBUG, "%25s:%-5d  <vp> setproperty: enableagc=%d (currently: enableagcdefault=%d, clientsetenableagc=%d, agc=%p).", buf, 0x2Eu);
                }
              }

              v214 = *(this + 1588);
              if (v214 && ((*v574 & 1) != 0 || v574[1] == 1))
              {
                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                CALegacyLog::log(v214, 5, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 928, "SetProperty", "setproperty: enableagc=%d (currently: enableagcdefault=%d, clientsetenableagc=%d, agc=%p).", v207 == 1, (*(this + 1174) >> 1) & 1, *(this + 576), *(this + 414));
              }

              *(this + 576) = *v7;
              VoiceProcessorV2::ReadAndApplyDefaultsOverride(this, @"vp_enable_agc", 0, v585, v209);
              if (*v574 == 1)
              {
                VoiceProcessorV2::PListWriteSetPropertyParameters(this, 32769);
              }

              v215 = *(this + 587);
              if (v585[0] == 1)
              {
                *(this + 587) = v215 | 2;
                VoiceProcessorV2::InstantiateAndConfigureEffectAU(this, 0x41u, 1);
              }

              else
              {
                *(this + 587) = v215 & 0xFFFFFFFFFFFFFFFDLL;
                VoiceProcessorV2::DisposeAU(this, 1635083896, 1634165554, this + 414, 1);
              }

              goto LABEL_1630;
            case 32772:
              v5 = 561211770;
              if (v6 < 4 || *v7 > 1u)
              {
                goto LABEL_1253;
              }

              *(this + 2088) = *v7;
              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              v216 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
              if (v216)
              {
                v218 = v216;
                if (os_log_type_enabled(v216, OS_LOG_TYPE_DEFAULT))
                {
                  v219 = *(this + 2088);
                  *buf = 136315650;
                  *&buf[4] = "vpProperties.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 888;
                  *&buf[18] = 1024;
                  *&buf[20] = v219;
                  _os_log_impl(&dword_2724B4000, v218, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> setproperty: mute uplink output =%d", buf, 0x18u);
                }
              }

              v220 = *(this + 1588);
              if (v220 && ((*v574 & 1) != 0 || v574[1] == 1))
              {
                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                CALegacyLog::log(v220, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 888, "SetProperty", "setproperty: mute uplink output =%d", *(this + 2088));
              }

              VoiceProcessorV2::ReadAndApplyDefaultsOverride(this, @"vp_mute_output", 0, this + 522, v217);
              if (*v574 == 1)
              {
                VoiceProcessorV2::PListWriteSetPropertyParameters(this, 32772);
              }

              AudioIssueDetectorClientSetUplinkMute(*(this + 2088));
              if (*(this + 2053))
              {
                applesauce::CF::TypeRef::TypeRef(v585, "Muted");
                if (*(this + 2088))
                {
                  v221 = MEMORY[0x277CBED28];
                }

                else
                {
                  v221 = MEMORY[0x277CBED10];
                }

                *&v585[8] = *v221;
                *buf = v585;
                *&buf[8] = 1;
                __p[0] = applesauce::CF::details::make_CFDictionaryRef(buf);
                applesauce::CF::TypeRefPair::~TypeRefPair(v585);
                PLLogRegisteredEvent();
                applesauce::CF::DictionaryRef::~DictionaryRef(__p);
              }

              goto LABEL_1630;
            case 32773:
              if (v6 != 4)
              {
                if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_1706;
                }

                *buf = 136315906;
                *&buf[4] = "vpProperties.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 1143;
                *&buf[18] = 2080;
                *&buf[20] = "inDataSize == sizeof(UInt32)";
                *&buf[28] = 2080;
                *&buf[30] = "BadPropertySize";
                v563 = MEMORY[0x277D86220];
                goto LABEL_1705;
              }

              v261 = *v7;
              if (*v7 < 2u)
              {
                if (v261 != *(this + 2091))
                {
                  *(this + 2091) = v261;
                  VoiceProcessorV2::ReadAndApplyDefaultsOverride(this, @"vp_disable_vp", 0, (this + 2091), v48);
                  if ((v574[280] & 1) == 0)
                  {
                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    v262 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                    if (v262)
                    {
                      v263 = v262;
                      if (os_log_type_enabled(v262, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 136315394;
                        *&buf[4] = "vpProperties.cpp";
                        *&buf[12] = 1024;
                        *&buf[14] = 1151;
                        _os_log_impl(&dword_2724B4000, v263, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> Begin self-reinit (kVPProperty_DisableVP)", buf, 0x12u);
                      }
                    }

                    v264 = *(this + 1588);
                    if (v264 && ((*v574 & 1) != 0 || v574[1] == 1))
                    {
                      if (VPLogScope(void)::once != -1)
                      {
                        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                      }

                      CALegacyLog::log(v264, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1151, "SetProperty", "Begin self-reinit (kVPProperty_DisableVP)");
                    }

                    if (*(this + 485) == 1)
                    {
                      VoiceProcessorV2::InitializeDLP(this);
                    }

                    if (*(this + 484) == 1)
                    {
                      (*(*this + 240))(this);
                    }

                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    v265 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                    if (v265)
                    {
                      v266 = v265;
                      if (os_log_type_enabled(v265, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 136315394;
                        *&buf[4] = "vpProperties.cpp";
                        *&buf[12] = 1024;
                        *&buf[14] = 1156;
                        _os_log_impl(&dword_2724B4000, v266, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> End self-reinit (kVPProperty_DisableVP)", buf, 0x12u);
                      }
                    }

                    v267 = *(this + 1588);
                    if (v267 && ((*v574 & 1) != 0 || v574[1] == 1))
                    {
                      if (VPLogScope(void)::once != -1)
                      {
                        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                      }

                      CALegacyLog::log(v267, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1156, "SetProperty", "End self-reinit (kVPProperty_DisableVP)");
                    }
                  }

                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  v268 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                  if (v268)
                  {
                    v269 = v268;
                    if (os_log_type_enabled(v268, OS_LOG_TYPE_DEFAULT))
                    {
                      v270 = "FALSE";
                      v271 = *(this + 2091);
                      *&buf[4] = "vpProperties.cpp";
                      *buf = 136315650;
                      if (v271)
                      {
                        v270 = "TRUE";
                      }

                      *&buf[12] = 1024;
                      *&buf[14] = 1159;
                      *&buf[18] = 2080;
                      *&buf[20] = v270;
                      _os_log_impl(&dword_2724B4000, v269, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> setproperty: disable vp = %s.  ", buf, 0x1Cu);
                    }
                  }

                  v272 = *(this + 1588);
                  if (v272 && ((*v574 & 1) != 0 || v574[1] == 1))
                  {
                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    if (*(this + 2091))
                    {
                      v273 = "TRUE";
                    }

                    else
                    {
                      v273 = "FALSE";
                    }

                    CALegacyLog::log(v272, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1159, "SetProperty", "setproperty: disable vp = %s.  ", v273);
                  }
                }

                if (*v574 == 1)
                {
                  VoiceProcessorV2::PListWriteSetPropertyParameters(this, 32773);
                }

                goto LABEL_1630;
              }

              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_1568;
              }

              *buf = 136315906;
              *&buf[4] = "vpProperties.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1145;
              *&buf[18] = 2080;
              *&buf[20] = "disableVP <= 1";
              *&buf[28] = 2080;
              *&buf[30] = "InvalidPropertyValue";
              v547 = MEMORY[0x277D86220];
              goto LABEL_1567;
            case 32780:
              if ((v6 & 3) == 0)
              {
                memset(buf, 0, 24);
                std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(buf, v7, v7 + v6, v6 >> 2);
                v295 = *v50;
                if (*v50)
                {
                  *(this + 264) = v295;
                  operator delete(v295);
                  *v50 = 0;
                  *(this + 264) = 0;
                  *(this + 265) = 0;
                }

                *v50 = *buf;
                *(this + 265) = *&buf[16];
                if (*v574 == 1)
                {
                  VoiceProcessorV2::PListWriteMicTrimGainParameters(this, this + 263);
                }

                goto LABEL_1630;
              }

              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_1706;
              }

              *buf = 136315906;
              *&buf[4] = "vpProperties.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1190;
              *&buf[18] = 2080;
              *&buf[20] = "(inDataSize % sizeof(Float32)) == 0";
              *&buf[28] = 2080;
              *&buf[30] = "BadPropertySize";
              v563 = MEMORY[0x277D86220];
              goto LABEL_1705;
            case 32781:
              if ((v6 & 3) == 0)
              {
                memset(buf, 0, 24);
                std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(buf, v7, v7 + v6, v6 >> 2);
                v197 = (this + 2136);
                v196 = *(this + 267);
                if (v196)
                {
                  *(this + 268) = v196;
                  operator delete(v196);
                  *v197 = 0;
                  *(this + 268) = 0;
                  *(this + 269) = 0;
                }

                v198 = *buf;
                *v197 = *buf;
                *(this + 269) = *&buf[16];
                if (*(this + 485) == 1 && (*(this + 8866) & 0x20) != 0)
                {
                  v199 = v198;
                  if (v198 != *(&v198 + 1))
                  {
                    v200 = (v198 + 4);
                    if (v198 + 4 != *(&v198 + 1))
                    {
                      v201 = *v198;
                      v202 = v199 + 1;
                      do
                      {
                        v203 = *v202++;
                        v204 = v203;
                        if (v203 < v201)
                        {
                          v201 = v204;
                          v199 = v200;
                        }

                        v200 = v202;
                      }

                      while (v202 != *(&v198 + 1));
                    }
                  }

                  v205 = fmaxf(*v199, 0.0);
                  AUPropAndParamHelper::AddItemToAUParamList(this + 1173, 1, v205);
                  v206 = *(this + 460);
                  if (v206)
                  {
                    AudioUnitSetParameter(v206, 1u, 0, 0, v205, 0);
                  }
                }

                if (*v574 == 1)
                {
                  VoiceProcessorV2::PListWriteRefTrimGainParameters(this, this + 267);
                }

                goto LABEL_1630;
              }

              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_1706;
              }

              *buf = 136315906;
              *&buf[4] = "vpProperties.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1223;
              *&buf[18] = 2080;
              *&buf[20] = "(inDataSize % sizeof(Float32)) == 0";
              *&buf[28] = 2080;
              *&buf[30] = "BadPropertySize";
              v563 = MEMORY[0x277D86220];
              goto LABEL_1705;
            case 32783:
              if (v6 == 8)
              {
                v222 = *(this + 278);
                if (v222)
                {
                  CFRelease(v222);
                  *(this + 278) = 0;
                }

                if (*v7)
                {
                  *(this + 278) = CFDictionaryCreateCopy(*MEMORY[0x277CBECE8], *v7);
                  if (*(this + 484) == 1 && (v574[280] & 1) == 0)
                  {
                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    v223 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                    if (v223)
                    {
                      v224 = v223;
                      if (os_log_type_enabled(v223, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 136315394;
                        *&buf[4] = "vpProperties.cpp";
                        *&buf[12] = 1024;
                        *&buf[14] = 1441;
                        _os_log_impl(&dword_2724B4000, v224, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> Begin self-reinit (kVPProperty_TelephonyMicDSPSettings)", buf, 0x12u);
                      }
                    }

                    v225 = *(this + 1588);
                    if (v225 && ((*v574 & 1) != 0 || v574[1] == 1))
                    {
                      if (VPLogScope(void)::once != -1)
                      {
                        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                      }

                      CALegacyLog::log(v225, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1441, "SetProperty", "Begin self-reinit (kVPProperty_TelephonyMicDSPSettings)");
                    }

                    (*(*this + 240))(this);
                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    v226 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                    if (v226)
                    {
                      v227 = v226;
                      if (os_log_type_enabled(v226, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 136315394;
                        *&buf[4] = "vpProperties.cpp";
                        *&buf[12] = 1024;
                        *&buf[14] = 1444;
                        _os_log_impl(&dword_2724B4000, v227, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> End self-reinit (kVPProperty_TelephonyMicDSPSettings)", buf, 0x12u);
                      }
                    }

                    v228 = *(this + 1588);
                    if (v228 && ((*v574 & 1) != 0 || v574[1] == 1))
                    {
                      if (VPLogScope(void)::once != -1)
                      {
                        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                      }

                      CALegacyLog::log(v228, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1444, "SetProperty", "End self-reinit (kVPProperty_TelephonyMicDSPSettings)");
                    }
                  }

                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  v229 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                  if (v229)
                  {
                    v230 = v229;
                    if (os_log_type_enabled(v229, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136315394;
                      *&buf[4] = "vpProperties.cpp";
                      *&buf[12] = 1024;
                      *&buf[14] = 1452;
                      _os_log_impl(&dword_2724B4000, v230, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> setproperty: mic custom dsp settings", buf, 0x12u);
                    }
                  }

                  v231 = *(this + 1588);
                  if (v231 && ((*v574 & 1) != 0 || v574[1] == 1))
                  {
                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    CALegacyLog::log(v231, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1452, "SetProperty", "setproperty: mic custom dsp settings");
                  }

                  if (*v574 == 1)
                  {
                    VoiceProcessorV2::PListWriteSetPropertyParameters(this, 32783);
                  }
                }

                goto LABEL_1630;
              }

              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_1706;
              }

              *buf = 136315906;
              *&buf[4] = "vpProperties.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1428;
              *&buf[18] = 2080;
              *&buf[20] = "inDataSize == sizeof(CFDictionaryRef)";
              *&buf[28] = 2080;
              *&buf[30] = "BadPropertySize";
              v563 = MEMORY[0x277D86220];
              goto LABEL_1705;
            case 32784:
              if (v6 == 8)
              {
                v285 = *(this + 279);
                if (v285)
                {
                  CFRelease(v285);
                  *(this + 279) = 0;
                }

                if (*v7)
                {
                  *(this + 279) = CFDictionaryCreateCopy(*MEMORY[0x277CBECE8], *v7);
                  if (*(this + 485) == 1 && (v574[280] & 1) == 0)
                  {
                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    v286 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                    if (v286)
                    {
                      v287 = v286;
                      if (os_log_type_enabled(v286, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 136315394;
                        *&buf[4] = "vpProperties.cpp";
                        *&buf[12] = 1024;
                        *&buf[14] = 1471;
                        _os_log_impl(&dword_2724B4000, v287, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> Begin self-reinit (kVPProperty_TelephonyRefDSPSettings)", buf, 0x12u);
                      }
                    }

                    v288 = *(this + 1588);
                    if (v288 && ((*v574 & 1) != 0 || v574[1] == 1))
                    {
                      if (VPLogScope(void)::once != -1)
                      {
                        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                      }

                      CALegacyLog::log(v288, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1471, "SetProperty", "Begin self-reinit (kVPProperty_TelephonyRefDSPSettings)");
                    }

                    VoiceProcessorV2::InitializeDLP(this);
                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    v289 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                    if (v289)
                    {
                      v290 = v289;
                      if (os_log_type_enabled(v289, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 136315394;
                        *&buf[4] = "vpProperties.cpp";
                        *&buf[12] = 1024;
                        *&buf[14] = 1474;
                        _os_log_impl(&dword_2724B4000, v290, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> End self-reinit (kVPProperty_TelephonyRefDSPSettings)", buf, 0x12u);
                      }
                    }

                    v291 = *(this + 1588);
                    if (v291 && ((*v574 & 1) != 0 || v574[1] == 1))
                    {
                      if (VPLogScope(void)::once != -1)
                      {
                        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                      }

                      CALegacyLog::log(v291, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1474, "SetProperty", "End self-reinit (kVPProperty_TelephonyRefDSPSettings)");
                    }
                  }

                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  v292 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                  if (v292)
                  {
                    v293 = v292;
                    if (os_log_type_enabled(v292, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136315394;
                      *&buf[4] = "vpProperties.cpp";
                      *&buf[12] = 1024;
                      *&buf[14] = 1482;
                      _os_log_impl(&dword_2724B4000, v293, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> setproperty: ref custom dsp settings", buf, 0x12u);
                    }
                  }

                  v294 = *(this + 1588);
                  if (v294 && ((*v574 & 1) != 0 || v574[1] == 1))
                  {
                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    CALegacyLog::log(v294, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1482, "SetProperty", "setproperty: ref custom dsp settings");
                  }

                  if (*v574 == 1)
                  {
                    VoiceProcessorV2::PListWriteSetPropertyParameters(this, 32784);
                  }
                }

                goto LABEL_1630;
              }

              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_1706;
              }

              *buf = 136315906;
              *&buf[4] = "vpProperties.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1458;
              *&buf[18] = 2080;
              *&buf[20] = "inDataSize == sizeof(CFDictionaryRef)";
              *&buf[28] = 2080;
              *&buf[30] = "BadPropertySize";
              v563 = MEMORY[0x277D86220];
              goto LABEL_1705;
            case 32786:
              if (v6 <= 3)
              {
                if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_1706;
                }

                *buf = 136315906;
                *&buf[4] = "vpProperties.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 1499;
                *&buf[18] = 2080;
                *&buf[20] = "inDataSize >= sizeof(UInt32)";
                *&buf[28] = 2080;
                *&buf[30] = "BadPropertySize";
                v563 = MEMORY[0x277D86220];
                goto LABEL_1705;
              }

              v274 = *v7;
              if (*v7 < 2u)
              {
                v275 = (this + 2752);
                *(this + 688) = v274;
                VoiceProcessorV2::ReadAndApplyDefaultsOverride(this, @"vp_beam_direction", 1, this + 688, v48);
                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                v276 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                if (v276)
                {
                  v277 = v276;
                  if (os_log_type_enabled(v276, OS_LOG_TYPE_DEFAULT))
                  {
                    v278 = "top back mic";
                    v279 = *v275;
                    *&buf[4] = "vpProperties.cpp";
                    *buf = 136315650;
                    if (!v279)
                    {
                      v278 = "top front mic";
                    }

                    *&buf[12] = 1024;
                    *&buf[14] = 1509;
                    *&buf[18] = 2080;
                    *&buf[20] = v278;
                    _os_log_impl(&dword_2724B4000, v277, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> setproperty: beam former direction = %s", buf, 0x1Cu);
                  }
                }

                v280 = *(this + 1588);
                if (v280 && ((*v574 & 1) != 0 || v574[1] == 1))
                {
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  if (*v275)
                  {
                    v281 = "top back mic";
                  }

                  else
                  {
                    v281 = "top front mic";
                  }

                  CALegacyLog::log(v280, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1509, "SetProperty", "setproperty: beam former direction = %s", v281);
                }

                v5 = VoiceProcessorV2::ApplyBeamDirection(this);
                if (v5)
                {
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  v282 = CALog::LogObjIfEnabled(1, VPLogScope(void)::scope);
                  if (v282)
                  {
                    v283 = v282;
                    if (os_log_type_enabled(v282, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136315650;
                      *&buf[4] = "vpProperties.cpp";
                      *&buf[12] = 1024;
                      *&buf[14] = 1513;
                      *&buf[18] = 1024;
                      *&buf[20] = v5;
                      _os_log_impl(&dword_2724B4000, v283, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> Error %d from applying beam direction", buf, 0x18u);
                    }
                  }

                  v284 = *(this + 1588);
                  if (v284 && ((*v574 & 1) != 0 || v574[1] == 1))
                  {
                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    CALegacyLog::log(v284, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1513, "SetProperty", "Error %d from applying beam direction", v5);
                  }
                }

                goto LABEL_1253;
              }

              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_1568;
              }

              *buf = 136315906;
              *&buf[4] = "vpProperties.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1503;
              *&buf[18] = 2080;
              *&buf[20] = "(beamDirection == kAUBeam2BeamIndex_Front) || (beamDirection == kAUBeam2BeamIndex_Back)";
              *&buf[28] = 2080;
              *&buf[30] = "InvalidPropertyValue";
              v547 = MEMORY[0x277D86220];
              goto LABEL_1567;
            case 32787:
              if (v6 > 3)
              {
                v5 = (*(*this + 96))(this, *v7);
                goto LABEL_1253;
              }

              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_1706;
              }

              *buf = 136315906;
              *&buf[4] = "vpProperties.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1518;
              *&buf[18] = 2080;
              *&buf[20] = "inDataSize >= sizeof(UInt32)";
              *&buf[28] = 2080;
              *&buf[30] = "BadPropertySize";
              v563 = MEMORY[0x277D86220];
              goto LABEL_1705;
            case 32788:
              if (v6 < 4 || (v301 = *v7, *v7 >= 2u))
              {
                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                v302 = CALog::LogObjIfEnabled(2, VPLogScope(void)::scope);
                if (v302)
                {
                  v303 = v302;
                  if (os_log_type_enabled(v302, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315394;
                    *&buf[4] = "vpProperties.cpp";
                    *&buf[12] = 1024;
                    *&buf[14] = 1166;
                    _os_log_impl(&dword_2724B4000, v303, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  >vp> setproperty: HwHasVP got invalid data", buf, 0x12u);
                  }
                }

                v5 = 561211770;
                v304 = *(this + 1588);
                if (v304 && ((*v574 & 1) != 0 || v574[1] == 1))
                {
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  CALegacyLog::log(v304, 2, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1166, "SetProperty", "setproperty: HwHasVP got invalid data");
                }

                goto LABEL_1253;
              }

              if (v301 != *(this + 2093))
              {
                *(this + 2093) = v301 == 1;
                VoiceProcessorV2::ReadAndApplyDefaultsOverride(this, @"vp_hw_has_vp", 0, (this + 2093), v48);
                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                v462 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                if (v462)
                {
                  v463 = v462;
                  if (os_log_type_enabled(v462, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315394;
                    *&buf[4] = "vpProperties.cpp";
                    *&buf[12] = 1024;
                    *&buf[14] = 1175;
                    _os_log_impl(&dword_2724B4000, v463, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> Begin self-reinit (kVPProperty_HwHasVP)", buf, 0x12u);
                  }
                }

                v464 = *(this + 1588);
                if (v464 && ((*v574 & 1) != 0 || v574[1] == 1))
                {
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  CALegacyLog::log(v464, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1175, "SetProperty", "Begin self-reinit (kVPProperty_HwHasVP)");
                }

                if (*(this + 485) == 1)
                {
                  VoiceProcessorV2::InitializeDLP(this);
                }

                if (*(this + 484) == 1)
                {
                  (*(*this + 240))(this);
                }

                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                v465 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                if (v465)
                {
                  v466 = v465;
                  if (os_log_type_enabled(v465, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315394;
                    *&buf[4] = "vpProperties.cpp";
                    *&buf[12] = 1024;
                    *&buf[14] = 1180;
                    _os_log_impl(&dword_2724B4000, v466, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> End self-reinit (kVPProperty_HwHasVP)", buf, 0x12u);
                  }
                }

                v467 = *(this + 1588);
                if (v467 && ((*v574 & 1) != 0 || v574[1] == 1))
                {
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  CALegacyLog::log(v467, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1180, "SetProperty", "End self-reinit (kVPProperty_HwHasVP)");
                }

                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                v468 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                if (v468)
                {
                  v469 = v468;
                  if (os_log_type_enabled(v468, OS_LOG_TYPE_DEFAULT))
                  {
                    v470 = "FALSE";
                    v471 = *(this + 2093);
                    *&buf[4] = "vpProperties.cpp";
                    *buf = 136315650;
                    if (v471)
                    {
                      v470 = "TRUE";
                    }

                    *&buf[12] = 1024;
                    *&buf[14] = 1183;
                    *&buf[18] = 2080;
                    *&buf[20] = v470;
                    _os_log_impl(&dword_2724B4000, v469, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> setproperty: hw has vp = %s.  ", buf, 0x1Cu);
                  }
                }

                v472 = *(this + 1588);
                if (v472 && ((*v574 & 1) != 0 || v574[1] == 1))
                {
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  if (*(this + 2093))
                  {
                    v473 = "TRUE";
                  }

                  else
                  {
                    v473 = "FALSE";
                  }

                  CALegacyLog::log(v472, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1183, "SetProperty", "setproperty: hw has vp = %s.  ", v473);
                }
              }

              if (*v574 == 1)
              {
                VoiceProcessorV2::PListWriteSetPropertyParameters(this, 32788);
              }

              goto LABEL_1630;
            case 32792:
              if (v6 < 4)
              {
                goto LABEL_1168;
              }

              v296 = *v7 != 0;
              if (*(this + 288) != v296)
              {
                *(this + 288) = v296;
                if (*v574 == 1)
                {
                  VoiceProcessorV2::PListWriteSetPropertyParameters(this, 32792);
                }

                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                v297 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                if (v297)
                {
                  v298 = v297;
                  if (os_log_type_enabled(v297, OS_LOG_TYPE_DEFAULT))
                  {
                    v299 = *(this + 288);
                    *buf = 136315650;
                    *&buf[4] = "vpProperties.cpp";
                    *&buf[12] = 1024;
                    *&buf[14] = 1662;
                    *&buf[18] = 1024;
                    *&buf[20] = v299;
                    _os_log_impl(&dword_2724B4000, v298, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> setproperty: is tap stream enabled  = %d", buf, 0x18u);
                  }
                }

                v300 = *(this + 1588);
                if (v300 && ((*v574 & 1) != 0 || v574[1] == 1))
                {
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  CALegacyLog::log(v300, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1662, "SetProperty", "setproperty: is tap stream enabled  = %d", *(this + 288));
                }
              }

              goto LABEL_1630;
            case 32794:
              v5 = 561211770;
              if (v6 < 4 || *v7 > 1u)
              {
                goto LABEL_1253;
              }

              *(this + 2090) = *v7;
              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              v181 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
              if (v181)
              {
                v183 = v181;
                if (os_log_type_enabled(v181, OS_LOG_TYPE_DEFAULT))
                {
                  v184 = *(this + 2090);
                  *buf = 136315650;
                  *&buf[4] = "vpProperties.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 913;
                  *&buf[18] = 1024;
                  *&buf[20] = v184;
                  _os_log_impl(&dword_2724B4000, v183, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> setproperty: mute downlink voice =%d", buf, 0x18u);
                }
              }

              v185 = *(this + 1588);
              if (v185 && ((*v574 & 1) != 0 || v574[1] == 1))
              {
                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                CALegacyLog::log(v185, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 913, "SetProperty", "setproperty: mute downlink voice =%d", *(this + 2090));
              }

              VoiceProcessorV2::ReadAndApplyDefaultsOverride(this, @"vp_mute_downlink_voice", 0, (this + 2090), v182);
              if (*v574 == 1)
              {
                VoiceProcessorV2::PListWriteSetPropertyParameters(this, 32794);
              }

              goto LABEL_1630;
            case 32796:
              CADeprecated::CAAutoFree<long long>::allocBytes(this + 275, v6);
              v195 = *(this + 275);
              if (v195)
              {
                memcpy(v195, v7, v6);
                *(this + 552) = v6 >> 2;
                if (*v574 == 1)
                {
                  VoiceProcessorV2::PListWriteSpkInputDataSrcParameters(this, *(this + 275), v6 >> 2);
                }
              }

              goto LABEL_1630;
            case 32797:
              if (v6 <= 3)
              {
                if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_1706;
                }

                *buf = 136315906;
                *&buf[4] = "vpProperties.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 1584;
                *&buf[18] = 2080;
                *&buf[20] = "inDataSize >= sizeof(Float32)";
                *&buf[28] = 2080;
                *&buf[30] = "BadPropertySize";
                v563 = MEMORY[0x277D86220];
                goto LABEL_1705;
              }

              v232 = *v7;
              v233 = this;
              *(this + 564) = *v7;
              v234 = v574;
              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              v6 = &unk_28133C000;
              v235 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
              if (v235)
              {
                v236 = v235;
                if (os_log_type_enabled(v235, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315650;
                  *&buf[4] = "vpProperties.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 1587;
                  *&buf[18] = 2048;
                  *&buf[20] = v232;
                  _os_log_impl(&dword_2724B4000, v236, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> setproperty: hardware volume =%f dB", buf, 0x1Cu);
                }
              }

              v237 = *(this + 1588);
              if (v237 && ((*v574 & 1) != 0 || v574[1] == 1))
              {
                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                CALegacyLog::log(v237, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1587, "SetProperty", "setproperty: hardware volume =%f dB", v232);
              }

              if (*v574 == 1)
              {
                VoiceProcessorV2::PListWriteSetPropertyParameters(this, 32797);
              }

              v238 = *(this + 1108);
              if ((v238 & 0x200000000000) != 0 && *(this + 484))
              {
                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                v239 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                if (v239)
                {
                  v240 = v239;
                  if (os_log_type_enabled(v239, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315650;
                    *&buf[4] = "vpProperties.cpp";
                    *&buf[12] = 1024;
                    *&buf[14] = 1591;
                    *&buf[18] = 2048;
                    *&buf[20] = v232;
                    _os_log_impl(&dword_2724B4000, v240, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> AU HLC exists in the VP chain applying HW vol =>%f", buf, 0x1Cu);
                  }
                }

                v241 = *(this + 1588);
                if (v241 && ((*v574 & 1) != 0 || v574[1] == 1))
                {
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  CALegacyLog::log(v241, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1591, "SetProperty", "AU HLC exists in the VP chain applying HW vol =>%f", v232);
                }

                AudioUnitSetParameter(*(this + 484), 0x19u, 0, 0, v232, 0);
                v238 = *(this + 1108);
              }

              if ((v238 & 0x4000000000000) == 0 || !*(this + 489))
              {
                goto LABEL_1630;
              }

              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              v242 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
              if (v242)
              {
                v243 = v242;
                if (os_log_type_enabled(v242, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315650;
                  *&buf[4] = "vpProperties.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 1598;
                  *&buf[18] = 2048;
                  *&buf[20] = v232;
                  _os_log_impl(&dword_2724B4000, v243, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> [VolumeLimit] AUSPLMeter exists in the VP chain; applying HW vol =>%f", buf, 0x1Cu);
                }
              }

              v244 = *(this + 1588);
              if (v244 && ((*v574 & 1) != 0 || v574[1] == 1))
              {
                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                CALegacyLog::log(v244, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1598, "SetProperty", "[VolumeLimit] AUSPLMeter exists in the VP chain; applying HW vol =>%f", v232);
              }

              AudioUnitSetParameter(*(this + 489), 0, 0, 0, v232, 0);
              if ((*(this + 8869) & 0x40) == 0 || !*(this + 485))
              {
                goto LABEL_1630;
              }

              *v585 = 0;
              if (*(this + 586) <= 0.0)
              {
                v245 = 100.0;
              }

              else
              {
                v245 = *(this + 586);
              }

              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              v246 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
              if (v246)
              {
                v247 = v246;
                if (os_log_type_enabled(v246, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315650;
                  *&buf[4] = "vpProperties.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 1607;
                  *&buf[18] = 2048;
                  *&buf[20] = v245;
                  _os_log_impl(&dword_2724B4000, v247, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> [VolumeLimit] SPLTarget update %f", buf, 0x1Cu);
                }
              }

              v248 = *(this + 1588);
              if (v248 && ((*v574 & 1) != 0 || v574[1] == 1))
              {
                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                v233 = this;
                CALegacyLog::log(v248, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1607, "SetProperty", "[VolumeLimit] SPLTarget update %f", v245);
                v234 = v574;
              }

              Parameter = AudioUnitGetParameter(*(v233 + 489), 0xBu, 0, 0, v585);
              if (Parameter)
              {
                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                v250 = CALog::LogObjIfEnabled(1, VPLogScope(void)::scope);
                if (v250)
                {
                  v251 = v250;
                  if (os_log_type_enabled(v250, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136315650;
                    *&buf[4] = "vpProperties.cpp";
                    *&buf[12] = 1024;
                    *&buf[14] = 1621;
                    *&buf[18] = 1024;
                    *&buf[20] = Parameter;
                    _os_log_impl(&dword_2724B4000, v251, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> [VolumeLimit] Failed to et LKFS from AUSPLMeter. Error = %d", buf, 0x18u);
                  }
                }

                v252 = *(v233 + 1588);
                if (v252 && ((*v234 & 1) != 0 || v234[1] == 1))
                {
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  CALegacyLog::log(v252, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1621, "SetProperty", "[VolumeLimit] Failed to et LKFS from AUSPLMeter. Error = %d", Parameter);
                }

                goto LABEL_1630;
              }

              v516 = v245 - *v585;
              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              v4 = v516 + -2.5;
              v517 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
              if (v517)
              {
                v518 = v517;
                if (os_log_type_enabled(v517, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315650;
                  *&buf[4] = "vpProperties.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 1615;
                  *&buf[18] = 2048;
                  *&buf[20] = v4;
                  _os_log_impl(&dword_2724B4000, v518, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> [VolumeLimit] Setting target LKFS on LDNM to %f", buf, 0x1Cu);
                }
              }

              v519 = this;
              v7 = *(this + 1588);
              if (v7 && ((*v574 & 1) != 0 || v574[1] == 1))
              {
                if (VPLogScope(void)::once != -1)
                {
                  goto LABEL_1718;
                }

                goto LABEL_1474;
              }

              goto LABEL_1475;
            case 32799:
              if (v6 == 8)
              {
                applesauce::CF::ArrayRef::from_get_noexcept(&theArray, *v7);
                if (theArray)
                {
                  v172 = this;
                  v173 = applesauce::CF::ArrayRef::operator->(&theArray);
                  if (applesauce::CF::ArrayRef_proxy::get_size(*v173))
                  {
                    memset(v585, 0, 24);
                    applesauce::CF::ArrayRef_iterator<applesauce::CF::DictionaryRef>::ArrayRef_iterator(__p, theArray);
                    applesauce::CF::ArrayRef_iterator<applesauce::CF::DictionaryRef>::ArrayRef_iterator(&cf, theArray);
                    v174 = v578;
                    v577 = v578;
                    v175 = __p[1];
                    while (1)
                    {
                      if (__p[0])
                      {
                        v176 = v175 == v583;
                      }

                      else
                      {
                        v176 = 1;
                      }

                      if (v176 && (cf ? (v177 = v174 == v578) : (v177 = 1), v177) || (__p[0] == cf ? (v178 = v175 == v174) : (v178 = 0), v178))
                      {
                        applesauce::CF::ArrayRef::operator=(v172 + 262, theArray);
                        v419 = *(v172 + 263);
                        if (v419)
                        {
                          *(v172 + 264) = v419;
                          operator delete(v419);
                          *v50 = 0;
                          *(this + 264) = 0;
                          *(this + 265) = 0;
                        }

                        *v50 = *v585;
                        *(v172 + 265) = *&v585[16];
                        if (*v574)
                        {
                          VoiceProcessorV2::PListWriteMicTrimGainParameters(v172, this + 263);
                        }

                        goto LABEL_1207;
                      }

                      applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(&v575, __p[0], v175);
                      if (!v575)
                      {
                        exception = __cxa_allocate_exception(0x10uLL);
                        std::runtime_error::runtime_error(exception, "Could not construct");
                      }

                      if (!applesauce::CF::details::has_key<char const(&)[25]>(v575))
                      {
                        break;
                      }

                      if (!v575)
                      {
                        v568 = __cxa_allocate_exception(0x10uLL);
                        std::runtime_error::runtime_error(v568, "Could not construct");
                      }

                      if (!applesauce::CF::details::has_key<char const(&)[13]>(v575))
                      {
                        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                        {
                          *buf = 136315906;
                          *&buf[4] = "vpProperties.cpp";
                          *&buf[12] = 1024;
                          *&buf[14] = 1210;
                          *&buf[18] = 2080;
                          *&buf[20] = "value->has_key(kVirtualAudioPortPropertyTrimGainsCFGainDBKey)";
                          *&buf[28] = 2080;
                          *&buf[30] = "InvalidPropertyValue";
                          v180 = MEMORY[0x277D86220];
LABEL_474:
                          _os_log_impl(&dword_2724B4000, v180, OS_LOG_TYPE_ERROR, "%25s:%-5d  ca_require: %s %s", buf, 0x26u);
                        }

                        goto LABEL_475;
                      }

                      if (!v575)
                      {
                        v569 = __cxa_allocate_exception(0x10uLL);
                        std::runtime_error::runtime_error(v569, "Could not construct");
                      }

                      *buf = applesauce::CF::details::find_at_key<float,char const(&)[13]>(v575);
                      std::vector<float>::push_back[abi:ne200100](v585, buf);
                      v49 = 0;
                      v179 = 1;
LABEL_466:
                      if (v575)
                      {
                        CFRelease(v575);
                      }

                      if (!v179)
                      {
                        goto LABEL_1183;
                      }

                      v175 = ++__p[1];
                      v174 = v577;
                      v172 = this;
                    }

                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136315906;
                      *&buf[4] = "vpProperties.cpp";
                      *&buf[12] = 1024;
                      *&buf[14] = 1209;
                      *&buf[18] = 2080;
                      *&buf[20] = "value->has_key(kVirtualAudioPortPropertyTrimGainsCFDataSourceIDKey)";
                      *&buf[28] = 2080;
                      *&buf[30] = "InvalidPropertyValue";
                      v180 = MEMORY[0x277D86220];
                      goto LABEL_474;
                    }

LABEL_475:
                    v179 = 0;
                    v49 = 164;
                    goto LABEL_466;
                  }

                  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_1675;
                  }

                  *buf = 136315906;
                  *&buf[4] = "vpProperties.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 1204;
                  *&buf[18] = 2080;
                  *&buf[20] = "micTrimGainsCF->get_size() != 0";
                  *&buf[28] = 2080;
                  *&buf[30] = "InvalidPropertyValue";
                  v564 = MEMORY[0x277D86220];
                }

                else
                {
                  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_1675;
                  }

                  *buf = 136315906;
                  *&buf[4] = "vpProperties.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 1203;
                  *&buf[18] = 2080;
                  *&buf[20] = "micTrimGainsCF.is_valid()";
                  *&buf[28] = 2080;
                  *&buf[30] = "InvalidPropertyValue";
                  v564 = MEMORY[0x277D86220];
                }

                goto LABEL_1674;
              }

              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_1706;
              }

              *buf = 136315906;
              *&buf[4] = "vpProperties.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1199;
              *&buf[18] = 2080;
              *&buf[20] = "inDataSize == sizeof(CFArrayRef)";
              *&buf[28] = 2080;
              *&buf[30] = "BadPropertySize";
              v563 = MEMORY[0x277D86220];
              goto LABEL_1705;
            case 32800:
              if (v6 == 8)
              {
                applesauce::CF::ArrayRef::from_get_noexcept(&theArray, *v7);
                if (theArray)
                {
                  v186 = this;
                  v187 = applesauce::CF::ArrayRef::operator->(&theArray);
                  if (applesauce::CF::ArrayRef_proxy::get_size(*v187))
                  {
                    memset(v585, 0, 24);
                    applesauce::CF::ArrayRef_iterator<applesauce::CF::DictionaryRef>::ArrayRef_iterator(__p, theArray);
                    applesauce::CF::ArrayRef_iterator<applesauce::CF::DictionaryRef>::ArrayRef_iterator(&cf, theArray);
                    v188 = v578;
                    v577 = v578;
                    v189 = __p[1];
                    while (1)
                    {
                      if (__p[0])
                      {
                        v190 = v189 == v583;
                      }

                      else
                      {
                        v190 = 1;
                      }

                      if (v190 && (cf ? (v191 = v188 == v578) : (v191 = 1), v191) || (__p[0] == cf ? (v192 = v189 == v188) : (v192 = 0), v192))
                      {
                        applesauce::CF::ArrayRef::operator=(v186 + 266, theArray);
                        v420 = *(v186 + 267);
                        if (v420)
                        {
                          *(v186 + 268) = v420;
                          operator delete(v420);
                          *(this + 267) = 0;
                          *(this + 268) = 0;
                          *(this + 269) = 0;
                        }

                        v421 = *v585;
                        *(this + 2136) = *v585;
                        *(v186 + 269) = *&v585[16];
                        if (*(v186 + 485) == 1 && (*(v186 + 8866) & 0x20) != 0)
                        {
                          v422 = v421;
                          v423 = (v421 + 4);
                          if (v421 != *(&v421 + 1) && v423 != *(&v421 + 1))
                          {
                            v425 = *v421;
                            v426 = v423;
                            do
                            {
                              v427 = *v426++;
                              v428 = v427;
                              if (v427 < v425)
                              {
                                v425 = v428;
                                v422 = v423;
                              }

                              v423 = v426;
                            }

                            while (v426 != *(&v421 + 1));
                          }

                          v429 = fmaxf(*v422, 0.0);
                          AUPropAndParamHelper::AddItemToAUParamList(v186 + 1173, 1, v429);
                          v430 = *(v186 + 460);
                          if (v430)
                          {
                            AudioUnitSetParameter(v430, 1u, 0, 0, v429, 0);
                          }
                        }

                        if (*v574 == 1)
                        {
                          VoiceProcessorV2::PListWriteRefTrimGainParameters(v186, this + 267);
                        }

                        goto LABEL_1207;
                      }

                      applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(&v575, __p[0], v189);
                      if (!v575)
                      {
                        v566 = __cxa_allocate_exception(0x10uLL);
                        std::runtime_error::runtime_error(v566, "Could not construct");
                      }

                      if (!applesauce::CF::details::has_key<char const(&)[25]>(v575))
                      {
                        break;
                      }

                      if (!v575)
                      {
                        v567 = __cxa_allocate_exception(0x10uLL);
                        std::runtime_error::runtime_error(v567, "Could not construct");
                      }

                      if (!applesauce::CF::details::has_key<char const(&)[13]>(v575))
                      {
                        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                        {
                          *buf = 136315906;
                          *&buf[4] = "vpProperties.cpp";
                          *&buf[12] = 1024;
                          *&buf[14] = 1258;
                          *&buf[18] = 2080;
                          *&buf[20] = "value->has_key(kVirtualAudioPortPropertyTrimGainsCFGainDBKey)";
                          *&buf[28] = 2080;
                          *&buf[30] = "InvalidPropertyValue";
                          v194 = MEMORY[0x277D86220];
LABEL_524:
                          _os_log_impl(&dword_2724B4000, v194, OS_LOG_TYPE_ERROR, "%25s:%-5d  ca_require: %s %s", buf, 0x26u);
                        }

                        goto LABEL_525;
                      }

                      if (!v575)
                      {
                        v570 = __cxa_allocate_exception(0x10uLL);
                        std::runtime_error::runtime_error(v570, "Could not construct");
                      }

                      *buf = applesauce::CF::details::find_at_key<float,char const(&)[13]>(v575);
                      std::vector<float>::push_back[abi:ne200100](v585, buf);
                      v49 = 0;
                      v193 = 1;
LABEL_516:
                      if (v575)
                      {
                        CFRelease(v575);
                      }

                      if (!v193)
                      {
LABEL_1183:
                        if (*v585)
                        {
                          operator delete(*v585);
                        }

                        if (v49)
                        {
LABEL_1186:
                          applesauce::CF::ArrayRef::~ArrayRef(&theArray);
                          goto LABEL_1631;
                        }

LABEL_1207:
                        applesauce::CF::ArrayRef::~ArrayRef(&theArray);
                        goto LABEL_1630;
                      }

                      v189 = ++__p[1];
                      v188 = v577;
                      v186 = this;
                    }

                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136315906;
                      *&buf[4] = "vpProperties.cpp";
                      *&buf[12] = 1024;
                      *&buf[14] = 1257;
                      *&buf[18] = 2080;
                      *&buf[20] = "value->has_key(kVirtualAudioPortPropertyTrimGainsCFDataSourceIDKey)";
                      *&buf[28] = 2080;
                      *&buf[30] = "InvalidPropertyValue";
                      v194 = MEMORY[0x277D86220];
                      goto LABEL_524;
                    }

LABEL_525:
                    v193 = 0;
                    v49 = 164;
                    goto LABEL_516;
                  }

                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136315906;
                    *&buf[4] = "vpProperties.cpp";
                    *&buf[12] = 1024;
                    *&buf[14] = 1252;
                    *&buf[18] = 2080;
                    *&buf[20] = "refTrimGainsCF->get_size() != 0";
                    *&buf[28] = 2080;
                    *&buf[30] = "InvalidPropertyValue";
                    v564 = MEMORY[0x277D86220];
                    goto LABEL_1674;
                  }
                }

                else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315906;
                  *&buf[4] = "vpProperties.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 1251;
                  *&buf[18] = 2080;
                  *&buf[20] = "refTrimGainsCF.is_valid()";
                  *&buf[28] = 2080;
                  *&buf[30] = "InvalidPropertyValue";
                  v564 = MEMORY[0x277D86220];
LABEL_1674:
                  _os_log_impl(&dword_2724B4000, v564, OS_LOG_TYPE_ERROR, "%25s:%-5d  ca_require: %s %s", buf, 0x26u);
                }

LABEL_1675:
                v49 = 164;
                goto LABEL_1186;
              }

              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_1706;
              }

              *buf = 136315906;
              *&buf[4] = "vpProperties.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1247;
              *&buf[18] = 2080;
              *&buf[20] = "inDataSize == sizeof(CFArrayRef)";
              *&buf[28] = 2080;
              *&buf[30] = "BadPropertySize";
              v563 = MEMORY[0x277D86220];
              break;
            case 32801:
              if (v6 == 8)
              {
                v253 = *v7;
                applesauce::CF::details::Retain<__CFArray const*>(v253);
                applesauce::CF::ArrayRef::ArrayRef(buf, v253);
                v254 = *(this + 270);
                *(this + 270) = *buf;
                *buf = v254;
                applesauce::CF::ArrayRef::~ArrayRef(buf);
                if ((v574[280] & 1) == 0 && *(this + 485) == 1)
                {
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  v255 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                  if (v255)
                  {
                    v256 = v255;
                    if (os_log_type_enabled(v255, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136315394;
                      *&buf[4] = "vpProperties.cpp";
                      *&buf[12] = 1024;
                      *&buf[14] = 1291;
                      _os_log_impl(&dword_2724B4000, v256, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> Begin self-reinit (kVPProperty_SpeakerCalibrationDataCF)", buf, 0x12u);
                    }
                  }

                  v257 = *(this + 1588);
                  if (v257 && ((*v574 & 1) != 0 || v574[1] == 1))
                  {
                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    CALegacyLog::log(v257, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1291, "SetProperty", "Begin self-reinit (kVPProperty_SpeakerCalibrationDataCF)");
                  }

                  VoiceProcessorV2::InitializeDLP(this);
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  v258 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                  if (v258)
                  {
                    v259 = v258;
                    if (os_log_type_enabled(v258, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136315394;
                      *&buf[4] = "vpProperties.cpp";
                      *&buf[12] = 1024;
                      *&buf[14] = 1294;
                      _os_log_impl(&dword_2724B4000, v259, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> End self-reinit (kVPProperty_SpeakerCalibrationDataCF)", buf, 0x12u);
                    }
                  }

                  v260 = *(this + 1588);
                  if (v260 && ((*v574 & 1) != 0 || v574[1] == 1))
                  {
                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    CALegacyLog::log(v260, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1294, "SetProperty", "End self-reinit (kVPProperty_SpeakerCalibrationDataCF)");
                  }
                }

                if (*v574 == 1)
                {
                  VoiceProcessorV2::PListWriteSpeakerCalibrationParameters(this, *(this + 270));
                }

                goto LABEL_1630;
              }

              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_1706;
              }

              *buf = 136315906;
              *&buf[4] = "vpProperties.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1286;
              *&buf[18] = 2080;
              *&buf[20] = "inDataSize == sizeof(CFArrayRef)";
              *&buf[28] = 2080;
              *&buf[30] = "BadPropertySize";
              v563 = MEMORY[0x277D86220];
              goto LABEL_1705;
            default:
              goto LABEL_1182;
          }

          goto LABEL_1705;
        }

        if (a2 > 1635085676)
        {
          if (a2 <= 1685483377)
          {
            if (a2 != 1635085677)
            {
              if (a2 == 1684305512)
              {
                goto LABEL_1632;
              }

              goto LABEL_1182;
            }

            if (!VoiceProcessorV2::IsDeviceSupportingAdvancedChatFlavors(v47))
            {
              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              v431 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
              if (v431)
              {
                v432 = v431;
                if (os_log_type_enabled(v431, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315394;
                  *&buf[4] = "vpProperties.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 2021;
                  _os_log_impl(&dword_2724B4000, v432, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> Advance chat flavors are not supported, ignoring incoming property", buf, 0x12u);
                }
              }

              v433 = *(this + 1588);
              if (v433 && ((*v574 & 1) != 0 || v574[1] == 1))
              {
                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                CALegacyLog::log(v433, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 2021, "SetProperty", "Advance chat flavors are not supported, ignoring incoming property");
              }

              goto LABEL_1630;
            }

            if (v6 == 4)
            {
              v305 = *v7;
              v306 = *v7 != 0;
              if (*(this + 2288) == v306)
              {
                goto LABEL_1630;
              }

              if (v574[687])
              {
                AutomaticChatFlavor = 0;
              }

              else if (*(this + 2262))
              {
                AutomaticChatFlavor = 2;
              }

              else if (*(this + 2288))
              {
                AutomaticChatFlavor = VoiceProcessorV2::GetAutomaticChatFlavor(this);
              }

              else
              {
                AutomaticChatFlavor = *(v574 + 655);
              }

              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              v520 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
              if (v520)
              {
                v521 = v520;
                if (os_log_type_enabled(v520, OS_LOG_TYPE_DEFAULT))
                {
                  v522 = "false";
                  v523 = *(this + 2288);
                  *&buf[4] = "vpProperties.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 1996;
                  if (v523)
                  {
                    v524 = "true";
                  }

                  else
                  {
                    v524 = "false";
                  }

                  *buf = 136315906;
                  if (v305)
                  {
                    v522 = "true";
                  }

                  *&buf[18] = 2080;
                  *&buf[20] = v524;
                  *&buf[28] = 2080;
                  *&buf[30] = v522;
                  _os_log_impl(&dword_2724B4000, v521, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> setproperty: current state of enable automatic chat flavor = [%s], new state of enable automatic chat flavor = [%s]", buf, 0x26u);
                }
              }

              v525 = *(this + 1588);
              if (v525 && ((*v574 & 1) != 0 || v574[1] == 1))
              {
                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                v526 = "false";
                if (*(this + 2288))
                {
                  v527 = "true";
                }

                else
                {
                  v527 = "false";
                }

                if (v305)
                {
                  v526 = "true";
                }

                CALegacyLog::log(v525, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1996, "SetProperty", "setproperty: current state of enable automatic chat flavor = [%s], new state of enable automatic chat flavor = [%s]", v527, v526);
              }

              *(this + 2288) = v306;
              if (*v574 == 1)
              {
                VoiceProcessorV2::PListWriteSetPropertyParameters(this, 1635085677);
              }

              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              v528 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
              if (v528)
              {
                v529 = v528;
                if (os_log_type_enabled(v528, OS_LOG_TYPE_DEFAULT))
                {
                  v530 = *(this + 2288);
                  *buf = 136315650;
                  *&buf[4] = "vpProperties.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 2001;
                  *&buf[18] = 1024;
                  *&buf[20] = v530;
                  _os_log_impl(&dword_2724B4000, v529, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> setproperty: enable automatic chat flavor value changed to = [%d]", buf, 0x18u);
                }
              }

              v531 = *(this + 1588);
              if (v531 && ((*v574 & 1) != 0 || v574[1] == 1))
              {
                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                CALegacyLog::log(v531, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 2001, "SetProperty", "setproperty: enable automatic chat flavor value changed to = [%d]", *(this + 2288));
              }

              if (v574[687])
              {
                v532 = 0;
              }

              else if (*(this + 2262))
              {
                v532 = 2;
              }

              else if (*(this + 2288) == 1)
              {
                v532 = VoiceProcessorV2::GetAutomaticChatFlavor(this);
              }

              else
              {
                v532 = *(v574 + 655);
              }

              if (v532 != AutomaticChatFlavor)
              {
                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                v535 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                if (v535)
                {
                  v536 = v535;
                  if (os_log_type_enabled(v535, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315394;
                    *&buf[4] = "vpProperties.cpp";
                    *&buf[12] = 1024;
                    *&buf[14] = 2007;
                    _os_log_impl(&dword_2724B4000, v536, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> Begin self-reinit (kVPProperty_EnableAutomaticMicMode)", buf, 0x12u);
                  }
                }

                v537 = *(this + 1588);
                if (v537 && ((*v574 & 1) != 0 || v574[1] == 1))
                {
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  CALegacyLog::log(v537, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 2007, "SetProperty", "Begin self-reinit (kVPProperty_EnableAutomaticMicMode)");
                }

                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                v538 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                if (v538)
                {
                  v541 = v538;
                  if (os_log_type_enabled(v538, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315906;
                    *&buf[4] = "vpProperties.cpp";
                    *&buf[12] = 1024;
                    *&buf[14] = 2010;
                    *&buf[18] = 1024;
                    *&buf[20] = AutomaticChatFlavor;
                    *&buf[24] = 1024;
                    *&buf[26] = v532;
                    _os_log_impl(&dword_2724B4000, v541, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> current chat flavor = [%d], new chat flavor = [%d]", buf, 0x1Eu);
                  }
                }

                v542 = *(this + 1588);
                if (v542 && ((*v574 & 1) != 0 || v574[1] == 1))
                {
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  CALegacyLog::log(v542, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 2010, "SetProperty", "current chat flavor = [%d], new chat flavor = [%d]", AutomaticChatFlavor, v532);
                }

                VoiceProcessorV2::ResetTimestampsAndInitializeVP(this, 1, v539, v540);
                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                v543 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                if (v543)
                {
                  v544 = v543;
                  if (os_log_type_enabled(v543, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315394;
                    *&buf[4] = "vpProperties.cpp";
                    *&buf[12] = 1024;
                    *&buf[14] = 2013;
                    _os_log_impl(&dword_2724B4000, v544, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> End self-reinit (kVPProperty_EnableAutomaticMicMode)", buf, 0x12u);
                  }
                }

                v545 = *(this + 1588);
                if (v545 && ((*v574 & 1) != 0 || v574[1] == 1))
                {
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  CALegacyLog::log(v545, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 2013, "SetProperty", "End self-reinit (kVPProperty_EnableAutomaticMicMode)");
                }

                goto LABEL_1630;
              }

              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              v533 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
              if (v533)
              {
                v534 = v533;
                if (os_log_type_enabled(v533, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315650;
                  *&buf[4] = "vpProperties.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 2016;
                  *&buf[18] = 1024;
                  *&buf[20] = AutomaticChatFlavor;
                  _os_log_impl(&dword_2724B4000, v534, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> No self-reinit required, chat flavor remains %d", buf, 0x18u);
                }
              }

              v5 = *(this + 1588);
              if (v5)
              {
                if ((*v574 & 1) != 0 || v574[1] == 1)
                {
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  CALegacyLog::log(v5, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 2016, "SetProperty", "No self-reinit required, chat flavor remains %d", AutomaticChatFlavor);
                }

                goto LABEL_1630;
              }

              goto LABEL_1253;
            }

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315906;
              *&buf[4] = "vpProperties.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1987;
              *&buf[18] = 2080;
              *&buf[20] = "inDataSize == sizeof(UInt32)";
              *&buf[28] = 2080;
              *&buf[30] = "BadPropertySize";
              v563 = MEMORY[0x277D86220];
              goto LABEL_1705;
            }

LABEL_1706:
            v5 = 0;
            v49 = 4;
            goto LABEL_1632;
          }

          if (a2 == 1685483378)
          {
            goto LABEL_1632;
          }

          if (a2 != 1701864051)
          {
            goto LABEL_1182;
          }

          if (v6 >= 4)
          {
            v49 = 0;
            v5 = 0;
            *(this + 4048) = *v7;
            goto LABEL_1632;
          }

LABEL_1168:
          v49 = 0;
          v5 = 561211770;
          goto LABEL_1632;
        }

        switch(a2)
        {
          case 1634300531:
            CADeprecated::CAAutoFree<long long>::allocBytes(this + 271, v6);
            v412 = *(this + 271);
            if (!v412)
            {
              goto LABEL_1630;
            }

            memcpy(v412, v7, v6);
            v413 = v6 >> 3;
            *(this + 544) = v413;
            *buf = 0;
            std::vector<long long>::vector[abi:ne200100](v585, v413);
            memcpy(*v585, v7, v6);
            AudioIssueDetectorClientUpdateReportingSessions(*(this + 1992), v585);
            AudioIssueDetectorClientUpdateReportingSessions(*(this + 1993), v585);
            v414 = *v585;
            v415 = *&v585[8];
            if (*v585 == *&v585[8])
            {
              goto LABEL_1397;
            }

            while (1)
            {
              v416 = *v414;
              if (AudioStatisticsLibraryLoader(void)::once != -1)
              {
                dispatch_once(&AudioStatisticsLibraryLoader(void)::once, &__block_literal_global_209);
              }

              if (AudioStatisticsLibraryLoader(void)::libSym && (AudioStatisticsLibraryLoader(void)::libSym(v416) & 0xFFFFFFFD) == 0)
              {
                v417 = AudioStatisticsCopyConfiguration(v416);
                applesauce::CF::DictionaryRef::from_create(&cf, v417);
                if (cf)
                {
                  applesauce::CF::DictionaryRef_proxy::DictionaryRef_proxy(buf, &cf);
                  v418 = *buf;
                  *buf = 0;
                  applesauce::CF::at_or<applesauce::CF::StringRef,__CFString const*>(&theArray, *v418, @"HostApplicationDisplayID", buf);
                  applesauce::CF::StringRef::~StringRef(buf);
                  if (theArray)
                  {
                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    v478 = this;
                    v479 = v574;
                    v480 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                    if (v480)
                    {
                      v481 = v480;
                      if (os_log_type_enabled(v480, OS_LOG_TYPE_DEFAULT))
                      {
                        v482 = applesauce::CF::StringRef::operator->(&theArray);
                        applesauce::CF::convert_to<std::string,0>(__p, *v482);
                        if (SHIBYTE(v583) >= 0)
                        {
                          v483 = __p;
                        }

                        else
                        {
                          v483 = __p[0];
                        }

                        *buf = 136315650;
                        *&buf[4] = "vpProperties.cpp";
                        *&buf[12] = 1024;
                        *&buf[14] = 1322;
                        *&buf[18] = 2080;
                        *&buf[20] = v483;
                        _os_log_impl(&dword_2724B4000, v481, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> HostApplicationDisplayID = %s", buf, 0x1Cu);
                        if (SHIBYTE(v583) < 0)
                        {
                          operator delete(__p[0]);
                        }

                        v478 = this;
                        v479 = v574;
                      }
                    }

                    v484 = *(v478 + 1588);
                    if (v484 && ((*v479 & 1) != 0 || v479[1] == 1))
                    {
                      if (VPLogScope(void)::once != -1)
                      {
                        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                      }

                      v485 = VPLogScope(void)::scope;
                      v486 = applesauce::CF::StringRef::operator->(&theArray);
                      applesauce::CF::convert_to<std::string,0>(buf, *v486);
                      if (buf[23] >= 0)
                      {
                        v487 = buf;
                      }

                      else
                      {
                        v487 = *buf;
                      }

                      CALegacyLog::log(v484, 3, v485, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1322, "SetProperty", "HostApplicationDisplayID = %s", v487);
                      if ((buf[23] & 0x80000000) != 0)
                      {
                        operator delete(*buf);
                      }

                      v478 = this;
                    }

                    applesauce::CF::StringRef::operator=(v478 + 273, theArray);
                    applesauce::CF::StringRef::operator=(v478 + 274, theArray);
                    applesauce::CF::StringRef::~StringRef(&theArray);
                    applesauce::CF::DictionaryRef::~DictionaryRef(&cf);
LABEL_1397:
                    if (*v585)
                    {
                      *&v585[8] = *v585;
                      operator delete(*v585);
                    }

                    goto LABEL_1630;
                  }

                  applesauce::CF::StringRef::~StringRef(&theArray);
                }

                applesauce::CF::DictionaryRef::~DictionaryRef(&cf);
              }

              if (++v414 == v415)
              {
                goto LABEL_1397;
              }
            }

          case 1634758259:
            (*(*this + 56))(this, 1634758502, v7, v6);
            goto LABEL_1630;
          case 1634758502:
            if (v6 == 4)
            {
              v107 = v574 + 727;
              if (*v7 != *(v574 + 727))
              {
                *v107 = *v7;
                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                v108 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                if (v108)
                {
                  v109 = v108;
                  if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
                  {
                    v110 = *v107;
                    *buf = 136315650;
                    *&buf[4] = "vpProperties.cpp";
                    *&buf[12] = 1024;
                    *&buf[14] = 1565;
                    *&buf[18] = 1024;
                    *&buf[20] = v110;
                    _os_log_impl(&dword_2724B4000, v109, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> setproperty: AirPods offload = %u", buf, 0x18u);
                  }
                }

                v111 = *(this + 1588);
                if (v111 && ((*v574 & 1) != 0 || v574[1] == 1))
                {
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  CALegacyLog::log(v111, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1565, "SetProperty", "setproperty: AirPods offload = %u", *v107);
                }

                if (*v574 == 1)
                {
                  VoiceProcessorV2::PListWriteSetPropertyParameters(this, 1634758502);
                }
              }

              goto LABEL_1630;
            }

            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_1706;
            }

            *buf = 136315906;
            *&buf[4] = "vpProperties.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1560;
            *&buf[18] = 2080;
            *&buf[20] = "inDataSize == sizeof(UInt32)";
            *&buf[28] = 2080;
            *&buf[30] = "BadPropertySize";
            v563 = MEMORY[0x277D86220];
            goto LABEL_1705;
        }

        goto LABEL_1182;
      }

      if (a2 > 1953915763)
      {
        if (a2 > 1987209579)
        {
          if (a2 > 1987211118)
          {
            switch(a2)
            {
              case 1987211119:
                if (v6 >= 4)
                {
                  v49 = 0;
                  v5 = 0;
                  *(this + 296) = *v7;
                  goto LABEL_1632;
                }

                goto LABEL_1168;
              case 1987211365:
                if (v6 >= 4)
                {
                  v49 = 0;
                  v5 = 0;
                  *(this + 601) = *v7;
                  goto LABEL_1632;
                }

                goto LABEL_1168;
              case 1987211379:
                if (v6 >= 4)
                {
                  v49 = 0;
                  v5 = 0;
                  *(this + 600) = *v7;
                  goto LABEL_1632;
                }

                goto LABEL_1168;
            }
          }

          else
          {
            switch(a2)
            {
              case 1987209580:
                if (v6 >= 4)
                {
                  v49 = 0;
                  v5 = 0;
                  *(this + 289) = *v7;
                  goto LABEL_1632;
                }

                goto LABEL_1168;
              case 1987209583:
                if (v6 >= 4)
                {
                  v49 = 0;
                  v5 = 0;
                  *(this + 290) = *v7;
                  goto LABEL_1632;
                }

                goto LABEL_1168;
              case 1987211116:
                if (v6 >= 4)
                {
                  v49 = 0;
                  v5 = 0;
                  *(this + 294) = *v7;
                  goto LABEL_1632;
                }

                goto LABEL_1168;
            }
          }
        }

        else if (a2 > 1986881899)
        {
          switch(a2)
          {
            case 1986881900:
              if (v6 >= 4)
              {
                v49 = 0;
                v5 = 0;
                *(this + 293) = *v7;
                goto LABEL_1632;
              }

              goto LABEL_1168;
            case 1986881903:
              if (v6 >= 4)
              {
                v49 = 0;
                v5 = 0;
                *(this + 295) = *v7;
                goto LABEL_1632;
              }

              goto LABEL_1168;
            case 1987208053:
              if (v6 >= 4)
              {
                v49 = 0;
                v5 = 0;
                *(this + 291) = *v7;
                goto LABEL_1632;
              }

              goto LABEL_1168;
          }
        }

        else
        {
          switch(a2)
          {
            case 1953915764:
              if (v6 == 4)
              {
                v361 = *v7;
                if (*v7 != *(this + 553))
                {
                  v362 = (this + 2212);
                  *(this + 553) = v361;
                  VoiceProcessorV2::ReadAndApplyDefaultsOverride(this, @"vp_vocoder_type_int", 1, this + 553, v48);
                  if ((v574[280] & 1) == 0 && (*(*this + 112))(this) <= 5)
                  {
                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    v363 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                    if (v363)
                    {
                      v364 = v363;
                      if (os_log_type_enabled(v363, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 136315394;
                        *&buf[4] = "vpProperties.cpp";
                        *&buf[12] = 1024;
                        *&buf[14] = 1351;
                        _os_log_impl(&dword_2724B4000, v364, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> Begin self-reinit (kVPProperty_PrimaryCodecType)", buf, 0x12u);
                      }
                    }

                    v365 = *(this + 1588);
                    if (v365 && ((*v574 & 1) != 0 || v574[1] == 1))
                    {
                      if (VPLogScope(void)::once != -1)
                      {
                        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                      }

                      CALegacyLog::log(v365, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1351, "SetProperty", "Begin self-reinit (kVPProperty_PrimaryCodecType)");
                    }

                    if (*(this + 485) == 1)
                    {
                      VoiceProcessorV2::InitializeDLP(this);
                    }

                    if (*(this + 484) == 1)
                    {
                      (*(*this + 240))(this);
                    }

                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    v366 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                    if (v366)
                    {
                      v367 = v366;
                      if (os_log_type_enabled(v366, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 136315394;
                        *&buf[4] = "vpProperties.cpp";
                        *&buf[12] = 1024;
                        *&buf[14] = 1356;
                        _os_log_impl(&dword_2724B4000, v367, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> End self-reinit (kVPProperty_PrimaryCodecType)", buf, 0x12u);
                      }
                    }

                    v368 = *(this + 1588);
                    if (v368 && ((*v574 & 1) != 0 || v574[1] == 1))
                    {
                      if (VPLogScope(void)::once != -1)
                      {
                        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                      }

                      CALegacyLog::log(v368, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1356, "SetProperty", "End self-reinit (kVPProperty_PrimaryCodecType)");
                    }
                  }

                  VoiceProcessorV2::ReportMetrics(this);
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  v369 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                  if (v369)
                  {
                    v370 = v369;
                    if (os_log_type_enabled(v369, OS_LOG_TYPE_DEFAULT))
                    {
                      CAX4CCString::CAX4CCString(v585, *v362);
                      v371 = *v362;
                      *buf = 136315906;
                      *&buf[4] = "vpProperties.cpp";
                      *&buf[12] = 1024;
                      *&buf[14] = 1368;
                      *&buf[18] = 2080;
                      *&buf[20] = v585;
                      *&buf[28] = 1024;
                      *&buf[30] = v371;
                      _os_log_impl(&dword_2724B4000, v370, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> setproperty: primary audio vocoder type = %s(%d) ", buf, 0x22u);
                    }
                  }

                  v372 = *(this + 1588);
                  if (v372 && ((*v574 & 1) != 0 || v574[1] == 1))
                  {
                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    v373 = VPLogScope(void)::scope;
                    CAX4CCString::CAX4CCString(buf, *v362);
                    CALegacyLog::log(v372, 3, v373, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1368, "SetProperty", "setproperty: primary audio vocoder type = %s(%d) ", buf, *v362);
                  }

                  if (*v574 == 1)
                  {
                    VoiceProcessorV2::PListWriteSetPropertyParameters(this, 1953915764);
                  }
                }

                goto LABEL_1630;
              }

              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_1706;
              }

              *buf = 136315906;
              *&buf[4] = "vpProperties.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1336;
              *&buf[18] = 2080;
              *&buf[20] = "inDataSize == sizeof(UInt32)";
              *&buf[28] = 2080;
              *&buf[30] = "BadPropertySize";
              v563 = MEMORY[0x277D86220];
              goto LABEL_1705;
            case 1969844082:
              goto LABEL_1632;
            case 1986097261:
              if (v6 > 3)
              {
                v82 = *v7;
                *(v574 + 691) = *v7;
                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                v83 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                if (v83)
                {
                  v84 = v83;
                  if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315650;
                    *&buf[4] = "vpProperties.cpp";
                    *&buf[12] = 1024;
                    *&buf[14] = 1548;
                    *&buf[18] = 1024;
                    *&buf[20] = v82;
                    _os_log_impl(&dword_2724B4000, v84, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> setproperty: VirtualAudio plug-in mode = %u", buf, 0x18u);
                  }
                }

                v85 = *(this + 1588);
                if (v85 && ((*v574 & 1) != 0 || v574[1] == 1))
                {
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  CALegacyLog::log(v85, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1548, "SetProperty", "setproperty: VirtualAudio plug-in mode = %u", v82);
                }

                goto LABEL_1630;
              }

              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_1706;
              }

              *buf = 136315906;
              *&buf[4] = "vpProperties.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1545;
              *&buf[18] = 2080;
              *&buf[20] = "inDataSize >= sizeof(UInt32)";
              *&buf[28] = 2080;
              *&buf[30] = "BadPropertySize";
              v563 = MEMORY[0x277D86220];
              goto LABEL_1705;
          }
        }

LABEL_1182:
        v49 = 0;
        v5 = 2003332927;
        goto LABEL_1632;
      }

      if (a2 > 1836266092)
      {
        if (a2 <= 1936744802)
        {
          switch(a2)
          {
            case 1836266093:
              if (v6 == 4)
              {
                v374 = *v7 == 1;
                if (v574[407] != v374)
                {
                  v574[407] = v374;
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  v375 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                  if (v375)
                  {
                    v378 = v375;
                    if (os_log_type_enabled(v375, OS_LOG_TYPE_DEFAULT))
                    {
                      v379 = "False";
                      v380 = v574[407];
                      *&buf[4] = "vpProperties.cpp";
                      *buf = 136315650;
                      if (v380)
                      {
                        v379 = "True";
                      }

                      *&buf[12] = 1024;
                      *&buf[14] = 1963;
                      *&buf[18] = 2080;
                      *&buf[20] = v379;
                      _os_log_impl(&dword_2724B4000, v378, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> Begin self-reinit (kVPProperty_MixStereoToMono [%s])", buf, 0x1Cu);
                    }
                  }

                  v381 = *(this + 1588);
                  if (v381 && ((*v574 & 1) != 0 || v574[1] == 1))
                  {
                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    if (v574[407])
                    {
                      v382 = "True";
                    }

                    else
                    {
                      v382 = "False";
                    }

                    CALegacyLog::log(v381, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1963, "SetProperty", "Begin self-reinit (kVPProperty_MixStereoToMono [%s])", v382);
                  }

                  VoiceProcessorV2::ResetTimestampsAndInitializeVP(this, 0, v376, v377);
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  v383 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                  if (v383)
                  {
                    v384 = v383;
                    if (os_log_type_enabled(v383, OS_LOG_TYPE_DEFAULT))
                    {
                      v385 = "False";
                      v386 = v574[407];
                      *&buf[4] = "vpProperties.cpp";
                      *buf = 136315650;
                      if (v386)
                      {
                        v385 = "True";
                      }

                      *&buf[12] = 1024;
                      *&buf[14] = 1966;
                      *&buf[18] = 2080;
                      *&buf[20] = v385;
                      _os_log_impl(&dword_2724B4000, v384, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> End self-reinit (kVPProperty_MixStereoToMono [%s]", buf, 0x1Cu);
                    }
                  }

                  v387 = *(this + 1588);
                  if (v387 && ((*v574 & 1) != 0 || v574[1] == 1))
                  {
                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    if (v574[407])
                    {
                      v388 = "True";
                    }

                    else
                    {
                      v388 = "False";
                    }

                    CALegacyLog::log(v387, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1966, "SetProperty", "End self-reinit (kVPProperty_MixStereoToMono [%s]", v388);
                  }
                }

                goto LABEL_1630;
              }

              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_1706;
              }

              *buf = 136315906;
              *&buf[4] = "vpProperties.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1958;
              *&buf[18] = 2080;
              *&buf[20] = "inDataSize == sizeof(UInt32)";
              *&buf[28] = 2080;
              *&buf[30] = "BadPropertySize";
              v563 = MEMORY[0x277D86220];
              goto LABEL_1705;
            case 1836278117:
              if (_os_feature_enabled_impl())
              {
                if (v6 == 8)
                {
                  VoiceProcessorV2::CreateMessenger(this);
                  v312 = *(this + 2025);
                  if (v312)
                  {
                    caulk::concurrent::messenger::drain(v312);
                  }

                  vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)>::Block<void({block_pointer} const&)(AUVoiceIOSpeechActivityEvent)>(buf, *v7);
                  std::__destroy_at[abi:ne200100]<vp::Block<void ()(AUVoiceIOSpeechActivityEvent)>,0>(this + 2053);
                  v313 = *buf;
                  *buf = 0;
                  *(this + 2053) = v313;
                  vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)>::~Block(buf);
                  if (*(this + 2053))
                  {
                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    v314 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                    if (v314)
                    {
                      v315 = v314;
                      if (os_log_type_enabled(v314, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 136315394;
                        *&buf[4] = "vpProperties.cpp";
                        *&buf[12] = 1024;
                        *&buf[14] = 1882;
                        _os_log_impl(&dword_2724B4000, v315, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> registered muted speech activity event listener", buf, 0x12u);
                      }
                    }

                    v316 = *(this + 1588);
                    if (v316 && ((*v574 & 1) != 0 || v574[1] == 1))
                    {
                      if (VPLogScope(void)::once != -1)
                      {
                        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                      }

                      CALegacyLog::log(v316, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1882, "SetProperty", "registered muted speech activity event listener");
                    }
                  }

                  goto LABEL_1630;
                }

                if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_1706;
                }

                *buf = 136315906;
                *&buf[4] = "vpProperties.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 1877;
                *&buf[18] = 2080;
                *&buf[20] = "inDataSize == sizeof(AUVoiceIOMutedSpeechActivityEventListener *)";
                *&buf[28] = 2080;
                *&buf[30] = "BadPropertySize";
                v563 = MEMORY[0x277D86220];
                goto LABEL_1705;
              }

              break;
            case 1868653667:
              v89 = this;
              v90 = v574;
              if (_os_feature_enabled_impl() && (*(this + 2260) & 1) == 0 && (*(this + 2264) & 1) == 0)
              {
                if (v6 == 8)
                {
                  v91 = *(v7 + 1);
                  if (v91 <= 0x1E && ((1 << v91) & 0x40100401) != 0)
                  {
                    v92 = *v7;
                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    v93 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                    if (v93)
                    {
                      v94 = v93;
                      if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
                      {
                        v95 = *(v574 + 683);
                        v96 = v574[680];
                        *buf = 136316418;
                        *&buf[4] = "vpProperties.cpp";
                        *&buf[12] = 1024;
                        *&buf[14] = 1907;
                        *&buf[18] = 1024;
                        *&buf[20] = v95;
                        *&buf[24] = 1024;
                        *&buf[26] = v91;
                        *&buf[30] = 1024;
                        *&buf[32] = v96;
                        *&buf[36] = 1024;
                        *&buf[38] = v92;
                        _os_log_impl(&dword_2724B4000, v94, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> setproperty: current mClientSetDuckingLevel = %u, new value = %u,  current mClientSetEnableDynamicDucking = %d, new value = %d", buf, 0x2Au);
                      }
                    }

                    v97 = *(this + 1588);
                    if (v97 && ((*v574 & 1) != 0 || v574[1] == 1))
                    {
                      if (VPLogScope(void)::once != -1)
                      {
                        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                      }

                      v90 = v574;
                      v89 = this;
                      CALegacyLog::log(v97, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1907, "SetProperty", "setproperty: current mClientSetDuckingLevel = %u, new value = %u,  current mClientSetEnableDynamicDucking = %d, new value = %d", *(v574 + 683), v91, v574[680], v92);
                    }

                    if (*(v90 + 683) != v91)
                    {
                      *(v90 + 683) = v91;
                      if ((*(v89 + 8865) & 0x80) != 0)
                      {
                        *buf = v91;
                        AUPropAndParamHelper::AddItemToAUPropsList(v89 + 1420, 0x6E65706Cu, 0, 0, 4uLL, buf, 1);
                        v98 = *(v89 + 454);
                        if (v98)
                        {
                          AudioUnitSetProperty(v98, 0x6E65706Cu, 0, 0, buf, 4u);
                        }
                      }
                    }

                    if (v90[680] != v92)
                    {
                      v90[680] = v92 != 0;
                      if (VPLogScope(void)::once != -1)
                      {
                        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                      }

                      v99 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                      if (v99)
                      {
                        v102 = v99;
                        if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 136315394;
                          *&buf[4] = "vpProperties.cpp";
                          *&buf[12] = 1024;
                          *&buf[14] = 1933;
                          _os_log_impl(&dword_2724B4000, v102, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> Begin self-reinit (kVPProperty_OtherAudioDuckingConfiguration)", buf, 0x12u);
                        }
                      }

                      v103 = *(v89 + 1588);
                      if (v103 && ((*v90 & 1) != 0 || v90[1] == 1))
                      {
                        if (VPLogScope(void)::once != -1)
                        {
                          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                        }

                        v89 = this;
                        CALegacyLog::log(v103, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1933, "SetProperty", "Begin self-reinit (kVPProperty_OtherAudioDuckingConfiguration)");
                        v90 = v574;
                      }

                      VoiceProcessorV2::ResetTimestampsAndInitializeVP(v89, 0, v100, v101);
                      if (VPLogScope(void)::once != -1)
                      {
                        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                      }

                      v104 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                      if (v104)
                      {
                        v105 = v104;
                        if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 136315394;
                          *&buf[4] = "vpProperties.cpp";
                          *&buf[12] = 1024;
                          *&buf[14] = 1936;
                          _os_log_impl(&dword_2724B4000, v105, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> End self-reinit (kVPProperty_OtherAudioDuckingConfiguration)", buf, 0x12u);
                        }
                      }

                      v106 = *(v89 + 1588);
                      if (v106 && ((*v90 & 1) != 0 || v90[1] == 1))
                      {
                        if (VPLogScope(void)::once != -1)
                        {
                          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                        }

                        v89 = this;
                        CALegacyLog::log(v106, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1936, "SetProperty", "End self-reinit (kVPProperty_OtherAudioDuckingConfiguration)");
                        v90 = v574;
                      }
                    }

                    if (*v90 == 1)
                    {
                      VoiceProcessorV2::PListWriteSetPropertyParameters(v89, 1868653667);
                    }

                    goto LABEL_1630;
                  }

                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136315906;
                    *&buf[4] = "vpProperties.cpp";
                    *&buf[12] = 1024;
                    *&buf[14] = 1899;
                    *&buf[18] = 2080;
                    *&buf[20] = "requestedDuckingConfig.mDuckingLevel == kAUVoiceIOOtherAudioDuckingLevelDefault || requestedDuckingConfig.mDuckingLevel == kAUVoiceIOOtherAudioDuckingLevelMin || requestedDuckingConfig.mDuckingLevel == kAUVoiceIOOtherAudioDuckingLevelMid || requestedDuckingConfig.mDuckingLevel == kAUVoiceIOOtherAudioDuckingLevelMax";
                    *&buf[28] = 2080;
                    *&buf[30] = "InvalidPropertyValue";
                    v547 = MEMORY[0x277D86220];
LABEL_1567:
                    _os_log_impl(&dword_2724B4000, v547, OS_LOG_TYPE_ERROR, "%25s:%-5d  ca_require: %s %s", buf, 0x26u);
                  }

LABEL_1568:
                  v5 = 0;
                  v49 = 164;
LABEL_1632:
                  atomic_fetch_add(this + 624, 0xFFFFFFFF);
                  if (v581 == 1)
                  {
                    (*(*v580 + 24))(v580);
                  }

                  if (v49)
                  {
                    if (v49 == 4)
                    {
                      goto LABEL_1638;
                    }

                    if (v49 == 164)
                    {
                      v5 = 561406316;
                    }

                    else
                    {
                      v5 = 4294956417;
                    }
                  }

                  goto LABEL_442;
                }

                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315906;
                  *&buf[4] = "vpProperties.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 1891;
                  *&buf[18] = 2080;
                  *&buf[20] = "inDataSize == sizeof(AUVoiceIOOtherAudioDuckingConfiguration)";
                  *&buf[28] = 2080;
                  *&buf[30] = "BadPropertySize";
                  v563 = MEMORY[0x277D86220];
                  goto LABEL_1705;
                }

                goto LABEL_1706;
              }

              break;
            default:
              goto LABEL_1182;
          }

          v49 = 0;
          v5 = 4294956417;
          goto LABEL_1632;
        }

        if (a2 != 1936744803)
        {
          if (a2 == 1936746595)
          {
            if (v6 == 8)
            {
              v337 = *(v574 + 503);
              v338 = v574[507];
              if (*v7 != v337 || *(v7 + 4) != (v338 & 1))
              {
                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                v339 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                if (v339)
                {
                  v340 = v339;
                  if (os_log_type_enabled(v339, OS_LOG_TYPE_DEFAULT))
                  {
                    v341 = *v7;
                    if (*(v7 + 4))
                    {
                      v342 = "on";
                    }

                    else
                    {
                      v342 = "off";
                    }

                    *buf = 136315906;
                    *&buf[4] = "vpProperties.cpp";
                    *&buf[12] = 1024;
                    *&buf[14] = 1082;
                    *&buf[18] = 1024;
                    *&buf[20] = v341;
                    *&buf[24] = 2080;
                    *&buf[26] = v342;
                    _os_log_impl(&dword_2724B4000, v340, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> setproperty: spatial head tracking configuration with mode %u and head tracking %s", buf, 0x22u);
                  }
                }

                v343 = *(this + 1588);
                if (v343 && ((*v574 & 1) != 0 || v574[1] == 1))
                {
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  v344 = "off";
                  if (*(v7 + 4))
                  {
                    v344 = "on";
                  }

                  CALegacyLog::log(v343, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1082, "SetProperty", "setproperty: spatial head tracking configuration with mode %u and head tracking %s", *v7, v344);
                }

                *(this + 2048) = *v7;
                if (*v574 == 1)
                {
                  VoiceProcessorV2::PListWriteSetPropertyParameters(this, 1936746595);
                }

                v345 = *v7;
                if ((v337 == 0) == (*v7 == 0))
                {
                  v446 = *(v7 + 4);
                  if (v446 != (v338 & 1))
                  {
                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    v447 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                    if (v447)
                    {
                      v450 = v447;
                      if (os_log_type_enabled(v447, OS_LOG_TYPE_DEFAULT))
                      {
                        v451 = "Off";
                        *&buf[4] = "vpProperties.cpp";
                        *&buf[12] = 1024;
                        *&buf[14] = 1105;
                        if (v338)
                        {
                          v452 = "On";
                        }

                        else
                        {
                          v452 = "Off";
                        }

                        *buf = 136315906;
                        *&buf[20] = v452;
                        *&buf[18] = 2080;
                        if (v446)
                        {
                          v451 = "On";
                        }

                        *&buf[28] = 2080;
                        *&buf[30] = v451;
                        _os_log_impl(&dword_2724B4000, v450, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> Begin self-reinit (kVPProperty_SpatialHeadTrackingConfiguration [Headtracking %s => %s])", buf, 0x26u);
                      }
                    }

                    v453 = *(this + 1588);
                    if (v453 && ((*v574 & 1) != 0 || v574[1] == 1))
                    {
                      if (VPLogScope(void)::once != -1)
                      {
                        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                      }

                      v454 = "Off";
                      if (v338)
                      {
                        v455 = "On";
                      }

                      else
                      {
                        v455 = "Off";
                      }

                      if (v446)
                      {
                        v454 = "On";
                      }

                      CALegacyLog::log(v453, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1105, "SetProperty", "Begin self-reinit (kVPProperty_SpatialHeadTrackingConfiguration [Headtracking %s => %s])", v455, v454);
                    }

                    VoiceProcessorV2::ResetTimestampsAndInitializeVP(this, 0, v448, v449);
                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    v456 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                    if (v456)
                    {
                      v457 = v456;
                      if (os_log_type_enabled(v456, OS_LOG_TYPE_DEFAULT))
                      {
                        v458 = "Off";
                        *&buf[4] = "vpProperties.cpp";
                        *&buf[12] = 1024;
                        *&buf[14] = 1109;
                        if (v338)
                        {
                          v459 = "On";
                        }

                        else
                        {
                          v459 = "Off";
                        }

                        *buf = 136315906;
                        *&buf[20] = v459;
                        *&buf[18] = 2080;
                        if (v446)
                        {
                          v458 = "On";
                        }

                        *&buf[28] = 2080;
                        *&buf[30] = v458;
                        _os_log_impl(&dword_2724B4000, v457, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> End self-reinit (kVPProperty_SpatialHeadTrackingConfiguration [Headtracking %s => %s ]", buf, 0x26u);
                      }
                    }

                    v460 = *(this + 1588);
                    if (v460 && ((*v574 & 1) != 0 || v574[1] == 1))
                    {
                      if (VPLogScope(void)::once != -1)
                      {
                        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                      }

                      if (v338)
                      {
                        v461 = "On";
                      }

                      else
                      {
                        v461 = "Off";
                      }

                      CALegacyLog::log(v460, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1109, "SetProperty", "End self-reinit (kVPProperty_SpatialHeadTrackingConfiguration [Headtracking %s => %s ]", v461);
                    }
                  }
                }

                else
                {
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  v346 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                  if (v346)
                  {
                    v349 = v346;
                    if (os_log_type_enabled(v346, OS_LOG_TYPE_DEFAULT))
                    {
                      v350 = "On";
                      *&buf[4] = "vpProperties.cpp";
                      *&buf[12] = 1024;
                      *&buf[14] = 1097;
                      if (v337)
                      {
                        v351 = "On";
                      }

                      else
                      {
                        v351 = "Off";
                      }

                      *buf = 136315906;
                      *&buf[20] = v351;
                      *&buf[18] = 2080;
                      if (!v345)
                      {
                        v350 = "Off";
                      }

                      *&buf[28] = 2080;
                      *&buf[30] = v350;
                      _os_log_impl(&dword_2724B4000, v349, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> Begin self-reinit (kVPProperty_SpatialHeadTrackingConfiguration [SpatialMode %s => %s])", buf, 0x26u);
                    }
                  }

                  v352 = *(this + 1588);
                  if (v352 && ((*v574 & 1) != 0 || v574[1] == 1))
                  {
                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    v353 = "On";
                    if (v337)
                    {
                      v354 = "On";
                    }

                    else
                    {
                      v354 = "Off";
                    }

                    if (!v345)
                    {
                      v353 = "Off";
                    }

                    CALegacyLog::log(v352, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1097, "SetProperty", "Begin self-reinit (kVPProperty_SpatialHeadTrackingConfiguration [SpatialMode %s => %s])", v354, v353);
                  }

                  VoiceProcessorV2::ResetTimestampsAndInitializeVP(this, 0, v347, v348);
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  v355 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                  if (v355)
                  {
                    v356 = v355;
                    if (os_log_type_enabled(v355, OS_LOG_TYPE_DEFAULT))
                    {
                      v357 = "On";
                      *&buf[4] = "vpProperties.cpp";
                      *&buf[12] = 1024;
                      *&buf[14] = 1101;
                      if (v337)
                      {
                        v358 = "On";
                      }

                      else
                      {
                        v358 = "Off";
                      }

                      *buf = 136315906;
                      *&buf[20] = v358;
                      *&buf[18] = 2080;
                      if (!v345)
                      {
                        v357 = "Off";
                      }

                      *&buf[28] = 2080;
                      *&buf[30] = v357;
                      _os_log_impl(&dword_2724B4000, v356, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> End self-reinit (kVPProperty_SpatialHeadTrackingConfiguration [SpatialMode %s => %s ]", buf, 0x26u);
                    }
                  }

                  v359 = *(this + 1588);
                  if (v359 && ((*v574 & 1) != 0 || v574[1] == 1))
                  {
                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    if (v337)
                    {
                      v360 = "On";
                    }

                    else
                    {
                      v360 = "Off";
                    }

                    CALegacyLog::log(v359, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1101, "SetProperty", "End self-reinit (kVPProperty_SpatialHeadTrackingConfiguration [SpatialMode %s => %s ]", v360);
                  }
                }
              }

              goto LABEL_1630;
            }

            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_1706;
            }

            *buf = 136315906;
            *&buf[4] = "vpProperties.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1074;
            *&buf[18] = 2080;
            *&buf[20] = "inDataSize == sizeof(SpatialHeadTrackingConfiguration)";
            *&buf[28] = 2080;
            *&buf[30] = "BadPropertySize";
            v563 = MEMORY[0x277D86220];
            goto LABEL_1705;
          }

          if (a2 == 1953915762)
          {
            if (v6 == 8)
            {
              v128 = *v7;
              if (vabdd_f64(*v7, *(this + 554)) > 0.000000001)
              {
                v129 = (this + 2216);
                v130 = v128;
                *(this + 554) = v130;
                VoiceProcessorV2::ReadAndApplyDefaultsOverride(this, @"vp_vocoder_sample_rate", 2, this + 554, v48);
                v131 = VPLogScope(void)::once;
                if ((v574[280] & 1) == 0)
                {
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  v132 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                  if (v132)
                  {
                    v133 = v132;
                    if (os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136315394;
                      *&buf[4] = "vpProperties.cpp";
                      *&buf[12] = 1024;
                      *&buf[14] = 1384;
                      _os_log_impl(&dword_2724B4000, v133, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> Begin self-reinit (kVPProperty_PrimaryCodecSampleRate)", buf, 0x12u);
                    }
                  }

                  v134 = *(this + 1588);
                  if (v134 && ((*v574 & 1) != 0 || v574[1] == 1))
                  {
                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    CALegacyLog::log(v134, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1384, "SetProperty", "Begin self-reinit (kVPProperty_PrimaryCodecSampleRate)");
                  }

                  if (*(this + 485) == 1)
                  {
                    VoiceProcessorV2::InitializeDLP(this);
                  }

                  v135 = *(this + 129);
                  v136 = *(this + 114);
                  if (*(this + 484) == 1)
                  {
                    (*(*this + 240))(this);
                  }

                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  v137 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                  if (v137)
                  {
                    v138 = v137;
                    if (os_log_type_enabled(v137, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136315394;
                      *&buf[4] = "vpProperties.cpp";
                      *&buf[12] = 1024;
                      *&buf[14] = 1392;
                      _os_log_impl(&dword_2724B4000, v138, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> End self-reinit (kVPProperty_PrimaryCodecSampleRate)", buf, 0x12u);
                    }
                  }

                  v139 = *(this + 1588);
                  if (v139 && ((*v574 & 1) != 0 || v574[1] == 1))
                  {
                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    CALegacyLog::log(v139, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1392, "SetProperty", "End self-reinit (kVPProperty_PrimaryCodecSampleRate)");
                  }

                  LODWORD(__p[0]) = *(this + 129);
                  v140 = *(this + 114);
                  *v585 = v140;
                  if (v135 != LODWORD(__p[0]) || v136 != v140)
                  {
                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    v141 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                    if (v141)
                    {
                      v142 = v141;
                      if (os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 136316418;
                        *&buf[4] = "vpProperties.cpp";
                        *&buf[12] = 1024;
                        *&buf[14] = 1400;
                        *&buf[18] = 1024;
                        *&buf[20] = v135;
                        *&buf[24] = 1024;
                        *&buf[26] = __p[0];
                        *&buf[30] = 2048;
                        *&buf[32] = v136;
                        *&buf[40] = 2048;
                        *&buf[42] = v140;
                        _os_log_impl(&dword_2724B4000, v142, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> setproperty: re-initializing speech enhancer; old ul blk sz = %u; new ul blk size = %u; old ul sr = %lf; new ul sr = %lf", buf, 0x32u);
                      }
                    }

                    v143 = *(this + 1588);
                    if (v143 && ((*v574 & 1) != 0 || v574[1] == 1))
                    {
                      if (VPLogScope(void)::once != -1)
                      {
                        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                      }

                      CALegacyLog::log(v143, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1400, "SetProperty", "setproperty: re-initializing speech enhancer; old ul blk sz = %u; new ul blk size = %u; old ul sr = %lf; new ul sr = %lf", v135, LODWORD(__p[0]), v136, v140);
                    }

                    if ((*(this + 8864) & 0x80) != 0)
                    {
                      AUPropAndParamHelper::AddItemToAUPropsList(this + 1396, 0x3EBu, 0, 0, 8uLL, v585, 1);
                      AUPropAndParamHelper::AddItemToAUPropsList(this + 1396, 0x3ECu, 0, 0, 4uLL, __p, 1);
                      VoiceProcessorV2::InstantiateAndConfigureEffectAU(this, 7u, 0);
                    }
                  }

                  v131 = VPLogScope(void)::once;
                }

                if (v131 != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                v144 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                if (v144)
                {
                  v145 = v144;
                  if (os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
                  {
                    v146 = *v129;
                    *buf = 136315650;
                    *&buf[4] = "vpProperties.cpp";
                    *&buf[12] = 1024;
                    *&buf[14] = 1422;
                    *&buf[18] = 2048;
                    *&buf[20] = v146;
                    _os_log_impl(&dword_2724B4000, v145, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> setproperty: primary vocoder sample rate = %f ", buf, 0x1Cu);
                  }
                }

                v147 = *(this + 1588);
                if (v147 && ((*v574 & 1) != 0 || v574[1] == 1))
                {
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  CALegacyLog::log(v147, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1422, "SetProperty", "setproperty: primary vocoder sample rate = %f ", *v129);
                }

                if (*v574 == 1)
                {
                  VoiceProcessorV2::PListWriteSetPropertyParameters(this, 1953915762);
                }
              }

              goto LABEL_1630;
            }

            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_1706;
            }

            *buf = 136315906;
            *&buf[4] = "vpProperties.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1374;
            *&buf[18] = 2080;
            *&buf[20] = "inDataSize == sizeof(Float64)";
            *&buf[28] = 2080;
            *&buf[30] = "BadPropertySize";
            v563 = MEMORY[0x277D86220];
            goto LABEL_1705;
          }

          goto LABEL_1182;
        }

        if (v6 == 4)
        {
          v393 = (*(*this + 112))(this);
          if (v393 >= 6)
          {
            v394 = *v7;
            v395 = *v7 != 0;
            if (*(this + 2261) != v395)
            {
              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              v396 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
              if (v396)
              {
                v397 = v396;
                if (os_log_type_enabled(v396, OS_LOG_TYPE_DEFAULT))
                {
                  v398 = "false";
                  v399 = *(this + 2261);
                  *&buf[4] = "vpProperties.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 1057;
                  if (v399)
                  {
                    v400 = "true";
                  }

                  else
                  {
                    v400 = "false";
                  }

                  *buf = 136315906;
                  if (v394)
                  {
                    v398 = "true";
                  }

                  *&buf[18] = 2080;
                  *&buf[20] = v400;
                  *&buf[28] = 2080;
                  *&buf[30] = v398;
                  _os_log_impl(&dword_2724B4000, v397, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> setproperty: current state of spatial chat = [%s], new state of spatial chat = [%s]", buf, 0x26u);
                }
              }

              v401 = *(this + 1588);
              if (v401 && ((*v574 & 1) != 0 || v574[1] == 1))
              {
                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                v402 = "false";
                if (*(this + 2261))
                {
                  v403 = "true";
                }

                else
                {
                  v403 = "false";
                }

                if (v394)
                {
                  v402 = "true";
                }

                CALegacyLog::log(v401, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1057, "SetProperty", "setproperty: current state of spatial chat = [%s], new state of spatial chat = [%s]", v403, v402);
              }

              *(this + 2261) = v395;
              if (*v574 == 1)
              {
                VoiceProcessorV2::PListWriteSetPropertyParameters(this, 1936744803);
              }

              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              v404 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
              if (v404)
              {
                v407 = v404;
                if (os_log_type_enabled(v404, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315394;
                  *&buf[4] = "vpProperties.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 1060;
                  _os_log_impl(&dword_2724B4000, v407, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> Begin self-reinit (kVPProperty_EnableSpatialChat)", buf, 0x12u);
                }
              }

              v408 = *(this + 1588);
              if (v408 && ((*v574 & 1) != 0 || v574[1] == 1))
              {
                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                CALegacyLog::log(v408, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1060, "SetProperty", "Begin self-reinit (kVPProperty_EnableSpatialChat)");
              }

              VoiceProcessorV2::ResetTimestampsAndInitializeVP(this, 0, v405, v406);
              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              v409 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
              if (v409)
              {
                v410 = v409;
                if (os_log_type_enabled(v409, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315394;
                  *&buf[4] = "vpProperties.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 1062;
                  _os_log_impl(&dword_2724B4000, v410, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> End self-reinit (kVPProperty_EnableSpatialChat)", buf, 0x12u);
                }
              }

              v411 = *(this + 1588);
              if (v411 && ((*v574 & 1) != 0 || v574[1] == 1))
              {
                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                CALegacyLog::log(v411, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1062, "SetProperty", "End self-reinit (kVPProperty_EnableSpatialChat)");
              }
            }

            goto LABEL_1630;
          }

          if (VPLogScope(void)::once != -1)
          {
            dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
          }

          v440 = CALog::LogObjIfEnabled(1, VPLogScope(void)::scope);
          if (v440)
          {
            v441 = v440;
            if (os_log_type_enabled(v440, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              *&buf[4] = "vpProperties.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1067;
              *&buf[18] = 1024;
              *&buf[20] = v393;
              _os_log_impl(&dword_2724B4000, v441, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> setproperty: spatial chat for vp version = %u is not supported", buf, 0x18u);
            }
          }

          v5 = 561406316;
          v442 = *(this + 1588);
          if (v442 && ((*v574 & 1) != 0 || v574[1] == 1))
          {
            if (VPLogScope(void)::once != -1)
            {
              dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
            }

            CALegacyLog::log(v442, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1067, "SetProperty", "setproperty: spatial chat for vp version = %u is not supported", v393);
          }

          goto LABEL_1253;
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_1706;
        }

        *buf = 136315906;
        *&buf[4] = "vpProperties.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1048;
        *&buf[18] = 2080;
        *&buf[20] = "inDataSize == sizeof(UInt32)";
        *&buf[28] = 2080;
        *&buf[30] = "BadPropertySize";
        v563 = MEMORY[0x277D86220];
      }

      else
      {
        v70 = this;
        if (a2 > 1768514914)
        {
          v112 = v574;
          if (a2 == 1768514915)
          {
            if (v6 > 3)
            {
              v389 = *v7;
              VoiceProcessorV2::SetEmergencyCallStatus(this, *v7 != 0);
              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              v390 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
              if (v390)
              {
                v391 = v390;
                if (os_log_type_enabled(v390, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315650;
                  *&buf[4] = "vpProperties.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 1538;
                  *&buf[18] = 1024;
                  *&buf[20] = v389 != 0;
                  _os_log_impl(&dword_2724B4000, v391, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> setproperty: is in emergency call = %u", buf, 0x18u);
                }
              }

              v392 = *(this + 1588);
              if (v392 && ((*v574 & 1) != 0 || v574[1] == 1))
              {
                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                CALegacyLog::log(v392, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1538, "SetProperty", "setproperty: is in emergency call = %u", v389 != 0);
              }

              goto LABEL_1630;
            }

            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_1706;
            }

            *buf = 136315906;
            *&buf[4] = "vpProperties.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1533;
            *&buf[18] = 2080;
            *&buf[20] = "inDataSize >= sizeof(UInt32)";
            *&buf[28] = 2080;
            *&buf[30] = "BadPropertySize";
            v563 = MEMORY[0x277D86220];
            goto LABEL_1705;
          }

          if (a2 != 1835361379)
          {
            if (a2 == 1836082532)
            {
              if (!VoiceProcessorV2::IsDeviceSupportingAdvancedChatFlavors(v47))
              {
                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                v434 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                if (v434)
                {
                  v435 = v434;
                  if (os_log_type_enabled(v434, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315394;
                    *&buf[4] = "vpProperties.cpp";
                    *&buf[12] = 1024;
                    *&buf[14] = 1138;
                    _os_log_impl(&dword_2724B4000, v435, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> Voice isolation not supported, ignoring incoming property", buf, 0x12u);
                  }
                }

                v436 = *(this + 1588);
                if (v436 && ((*v574 & 1) != 0 || v574[1] == 1))
                {
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  CALegacyLog::log(v436, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1138, "SetProperty", "Voice isolation not supported, ignoring incoming property");
                }

                goto LABEL_1630;
              }

              if (v6 == 4)
              {
                v113 = *v7;
                v114 = *v7 != 0;
                v115 = v574;
                if (*(this + 2262) != v114)
                {
                  v116 = this;
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  v117 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                  if (v117)
                  {
                    v118 = v117;
                    if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
                    {
                      v119 = "false";
                      v120 = *(this + 2262);
                      *&buf[4] = "vpProperties.cpp";
                      *&buf[12] = 1024;
                      *&buf[14] = 1124;
                      if (v120)
                      {
                        v121 = "true";
                      }

                      else
                      {
                        v121 = "false";
                      }

                      *buf = 136315906;
                      if (v113)
                      {
                        v119 = "true";
                      }

                      *&buf[18] = 2080;
                      *&buf[20] = v121;
                      *&buf[28] = 2080;
                      *&buf[30] = v119;
                      _os_log_impl(&dword_2724B4000, v118, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> setproperty: current state of media playback on external device = [%s], new state of media playback on external device = [%s]", buf, 0x26u);
                    }
                  }

                  v122 = *(this + 1588);
                  if (v122 && ((*v574 & 1) != 0 || v574[1] == 1))
                  {
                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    v123 = "false";
                    if (*(this + 2262))
                    {
                      v124 = "true";
                    }

                    else
                    {
                      v124 = "false";
                    }

                    if (v113)
                    {
                      v123 = "true";
                    }

                    CALegacyLog::log(v122, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1124, "SetProperty", "setproperty: current state of media playback on external device = [%s], new state of media playback on external device = [%s]", v124, v123);
                  }

                  *(this + 2262) = v114;
                  if (*v574 == 1)
                  {
                    VoiceProcessorV2::PListWriteSetPropertyParameters(this, 1836082532);
                  }

                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  v125 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                  if (v125)
                  {
                    v126 = v125;
                    if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
                    {
                      if (v574[687])
                      {
                        v127 = 0;
                      }

                      else if (*(this + 2262))
                      {
                        v127 = 2;
                      }

                      else if (*(this + 2288) == 1)
                      {
                        v116 = this;
                        v127 = VoiceProcessorV2::GetAutomaticChatFlavor(this);
                        v115 = v574;
                      }

                      else
                      {
                        v115 = v574;
                        v127 = *(v574 + 655);
                        v116 = this;
                      }

                      std::to_string(v585, v127);
                      v550 = v585[23] >= 0 ? v585 : *v585;
                      *buf = 136315650;
                      *&buf[4] = "vpProperties.cpp";
                      *&buf[12] = 1024;
                      *&buf[14] = 1129;
                      *&buf[18] = 2080;
                      *&buf[20] = v550;
                      _os_log_impl(&dword_2724B4000, v126, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> setproperty: chat flavor value changed to = [%s]", buf, 0x1Cu);
                      if ((v585[23] & 0x80000000) != 0)
                      {
                        operator delete(*v585);
                      }
                    }
                  }

                  v551 = *(v116 + 1588);
                  if (v551 && ((*v115 & 1) != 0 || v115[1] == 1))
                  {
                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    v552 = VPLogScope(void)::scope;
                    if (v115[687])
                    {
                      v553 = 0;
                    }

                    else if (*(v116 + 2262))
                    {
                      v553 = 2;
                    }

                    else if (*(v116 + 2288) == 1)
                    {
                      v553 = VoiceProcessorV2::GetAutomaticChatFlavor(v116);
                    }

                    else
                    {
                      v553 = *(v115 + 655);
                    }

                    std::to_string(buf, v553);
                    if (buf[23] >= 0)
                    {
                      v554 = buf;
                    }

                    else
                    {
                      v554 = *buf;
                    }

                    CALegacyLog::log(v551, 3, v552, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1129, "SetProperty", "setproperty: chat flavor value changed to = [%s]", v554);
                    if ((buf[23] & 0x80000000) != 0)
                    {
                      operator delete(*buf);
                    }
                  }

                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  v555 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                  if (v555)
                  {
                    v558 = v555;
                    if (os_log_type_enabled(v555, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136315394;
                      *&buf[4] = "vpProperties.cpp";
                      *&buf[12] = 1024;
                      *&buf[14] = 1131;
                      _os_log_impl(&dword_2724B4000, v558, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> Begin self-reinit (kVPProperty_MediaPlaybackOnExternalDevice)", buf, 0x12u);
                    }
                  }

                  v559 = *(v116 + 1588);
                  if (v559 && ((*v115 & 1) != 0 || v115[1] == 1))
                  {
                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    CALegacyLog::log(v559, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1131, "SetProperty", "Begin self-reinit (kVPProperty_MediaPlaybackOnExternalDevice)");
                  }

                  VoiceProcessorV2::ResetTimestampsAndInitializeVP(v116, 0, v556, v557);
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  v560 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                  if (v560)
                  {
                    v561 = v560;
                    if (os_log_type_enabled(v560, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136315394;
                      *&buf[4] = "vpProperties.cpp";
                      *&buf[12] = 1024;
                      *&buf[14] = 1134;
                      _os_log_impl(&dword_2724B4000, v561, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> End self-reinit (kVPProperty_MediaPlaybackOnExternalDevice)", buf, 0x12u);
                    }
                  }

                  v562 = *(v116 + 1588);
                  if (v562 && ((*v115 & 1) != 0 || v115[1] == 1))
                  {
                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    CALegacyLog::log(v562, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1134, "SetProperty", "End self-reinit (kVPProperty_MediaPlaybackOnExternalDevice)");
                  }
                }

                goto LABEL_1630;
              }

              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_1706;
              }

              *buf = 136315906;
              *&buf[4] = "vpProperties.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1116;
              *&buf[18] = 2080;
              *&buf[20] = "inDataSize == sizeof(UInt32)";
              *&buf[28] = 2080;
              *&buf[30] = "BadPropertySize";
              v563 = MEMORY[0x277D86220];
              goto LABEL_1705;
            }

            goto LABEL_1182;
          }

          if (v6 == 4)
          {
            v317 = (*(*this + 112))(this);
            if (v317 < 3)
            {
              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              v437 = CALog::LogObjIfEnabled(1, VPLogScope(void)::scope);
              if (v437)
              {
                v438 = v437;
                if (os_log_type_enabled(v437, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315650;
                  *&buf[4] = "vpProperties.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 1043;
                  *&buf[18] = 1024;
                  *&buf[20] = v317;
                  _os_log_impl(&dword_2724B4000, v438, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> setproperty: media chat for vp version = %u is not supported", buf, 0x18u);
                }
              }

              v439 = *(this + 1588);
              if (v439 && ((*v574 & 1) != 0 || v574[1] == 1))
              {
                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                CALegacyLog::log(v439, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1043, "SetProperty", "setproperty: media chat for vp version = %u is not supported", v317);
              }

              goto LABEL_1630;
            }

            if (_os_feature_enabled_impl())
            {
              if ((*(*this + 112))(this) > 9 || (v318 = *(this + 20), v318 == 2) || v318 == 4)
              {
                v319 = *v7;
                v320 = *v7 != 0;
                if (*(this + 2260) != v320)
                {
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  v321 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                  if (v321)
                  {
                    v322 = v321;
                    if (os_log_type_enabled(v321, OS_LOG_TYPE_DEFAULT))
                    {
                      v323 = "false";
                      v324 = *(this + 2260);
                      *&buf[4] = "vpProperties.cpp";
                      *&buf[12] = 1024;
                      *&buf[14] = 1027;
                      if (v324)
                      {
                        v325 = "true";
                      }

                      else
                      {
                        v325 = "false";
                      }

                      *buf = 136315906;
                      if (v319)
                      {
                        v323 = "true";
                      }

                      *&buf[18] = 2080;
                      *&buf[20] = v325;
                      *&buf[28] = 2080;
                      *&buf[30] = v323;
                      _os_log_impl(&dword_2724B4000, v322, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> setproperty: current state of media chat = [%s], new state of media chat = [%s]", buf, 0x26u);
                    }
                  }

                  v326 = *(this + 1588);
                  if (v326 && ((*v574 & 1) != 0 || v574[1] == 1))
                  {
                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    v70 = this;
                    v327 = "false";
                    if (*(this + 2260))
                    {
                      v328 = "true";
                    }

                    else
                    {
                      v328 = "false";
                    }

                    if (v319)
                    {
                      v327 = "true";
                    }

                    CALegacyLog::log(v326, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1027, "SetProperty", "setproperty: current state of media chat = [%s], new state of media chat = [%s]", v328, v327);
                    v112 = v574;
                  }

                  *(v70 + 2260) = v320;
                  if (*v112 == 1)
                  {
                    VoiceProcessorV2::PListWriteSetPropertyParameters(v70, 1835361379);
                  }

                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  v329 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                  if (v329)
                  {
                    v332 = v329;
                    if (os_log_type_enabled(v329, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136315394;
                      *&buf[4] = "vpProperties.cpp";
                      *&buf[12] = 1024;
                      *&buf[14] = 1031;
                      _os_log_impl(&dword_2724B4000, v332, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> Begin self-reinit (kVPProperty_EnableMediaChat)", buf, 0x12u);
                    }
                  }

                  v333 = *(v70 + 1588);
                  if (v333 && ((*v112 & 1) != 0 || v112[1] == 1))
                  {
                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    v70 = this;
                    CALegacyLog::log(v333, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1031, "SetProperty", "Begin self-reinit (kVPProperty_EnableMediaChat)");
                    v112 = v574;
                  }

                  VoiceProcessorV2::ResetTimestampsAndInitializeVP(v70, 0, v330, v331);
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  v334 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                  if (v334)
                  {
                    v335 = v334;
                    if (os_log_type_enabled(v334, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136315394;
                      *&buf[4] = "vpProperties.cpp";
                      *&buf[12] = 1024;
                      *&buf[14] = 1033;
                      _os_log_impl(&dword_2724B4000, v335, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> End self-reinit (kVPProperty_EnableMediaChat)", buf, 0x12u);
                    }
                  }

                  v336 = *(v70 + 1588);
                  if (v336 && ((*v112 & 1) != 0 || v112[1] == 1))
                  {
                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    CALegacyLog::log(v336, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1033, "SetProperty", "End self-reinit (kVPProperty_EnableMediaChat)");
                  }
                }

                goto LABEL_1630;
              }

              if (_os_feature_enabled_impl())
              {
                v488 = *v7;
                v489 = *v7 != 0;
                if (*(this + 2264) != v489)
                {
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  v490 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                  if (v490)
                  {
                    v491 = v490;
                    if (os_log_type_enabled(v490, OS_LOG_TYPE_DEFAULT))
                    {
                      v492 = "false";
                      v493 = *(this + 2264);
                      *&buf[4] = "vpProperties.cpp";
                      *&buf[12] = 1024;
                      *&buf[14] = 970;
                      if (v493)
                      {
                        v494 = "true";
                      }

                      else
                      {
                        v494 = "false";
                      }

                      *buf = 136315906;
                      if (v488)
                      {
                        v492 = "true";
                      }

                      *&buf[18] = 2080;
                      *&buf[20] = v494;
                      *&buf[28] = 2080;
                      *&buf[30] = v492;
                      _os_log_impl(&dword_2724B4000, v491, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> setproperty: current state of media chat = [%s], new state of media chat = [%s]", buf, 0x26u);
                    }
                  }

                  v495 = *(this + 1588);
                  if (v495 && ((*v574 & 1) != 0 || v574[1] == 1))
                  {
                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    v496 = "false";
                    if (*(this + 2264))
                    {
                      v497 = "true";
                    }

                    else
                    {
                      v497 = "false";
                    }

                    if (v488)
                    {
                      v496 = "true";
                    }

                    CALegacyLog::log(v495, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 970, "SetProperty", "setproperty: current state of media chat = [%s], new state of media chat = [%s]", v497, v496);
                  }

                  *(this + 2264) = v489;
                  v498 = (v574 + 683);
                  v499 = *(v574 + 683);
                  v500 = v574[680];
                  if (v488)
                  {
                    v501 = 10;
                  }

                  else
                  {
                    v501 = 0;
                  }

                  *v498 = v501;
                  v574[680] = v489;
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  v502 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                  if (v502)
                  {
                    v503 = v502;
                    if (os_log_type_enabled(v502, OS_LOG_TYPE_DEFAULT))
                    {
                      v504 = *v498;
                      v505 = v574[680];
                      *buf = 136316418;
                      *&buf[4] = "vpProperties.cpp";
                      *&buf[12] = 1024;
                      *&buf[14] = 988;
                      *&buf[18] = 1024;
                      *&buf[20] = v499;
                      *&buf[24] = 1024;
                      *&buf[26] = v504;
                      *&buf[30] = 1024;
                      *&buf[32] = v500;
                      *&buf[36] = 1024;
                      *&buf[38] = v505;
                      _os_log_impl(&dword_2724B4000, v503, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> setproperty: current mClientSetDuckingLevel = %u, new value = %u,  current mClientSetEnableDynamicDucking = %d, new value = %d", buf, 0x2Au);
                    }
                  }

                  v506 = *(this + 1588);
                  if (v506 && ((*v574 & 1) != 0 || v574[1] == 1))
                  {
                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    CALegacyLog::log(v506, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 988, "SetProperty", "setproperty: current mClientSetDuckingLevel = %u, new value = %u,  current mClientSetEnableDynamicDucking = %d, new value = %d", v499, *v498, v500, v574[680]);
                  }

                  if ((*(this + 8865) & 0x80) != 0)
                  {
                    *buf = *v498;
                    AUPropAndParamHelper::AddItemToAUPropsList(this + 1420, 0x6E65706Cu, 0, 0, 4uLL, buf, 1);
                    v507 = *(this + 454);
                    if (v507)
                    {
                      AudioUnitSetProperty(v507, 0x6E65706Cu, 0, 0, buf, 4u);
                    }
                  }

                  if (*v574 == 1)
                  {
                    VoiceProcessorV2::PListWriteSetPropertyParameters(this, 1835361379);
                  }

                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  v508 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                  if (v508)
                  {
                    v511 = v508;
                    if (os_log_type_enabled(v508, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136315394;
                      *&buf[4] = "vpProperties.cpp";
                      *&buf[12] = 1024;
                      *&buf[14] = 1007;
                      _os_log_impl(&dword_2724B4000, v511, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> Begin self-reinit (kVPProperty_EnableMediaChat)", buf, 0x12u);
                    }
                  }

                  v512 = *(this + 1588);
                  if (v512 && ((*v574 & 1) != 0 || v574[1] == 1))
                  {
                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    CALegacyLog::log(v512, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1007, "SetProperty", "Begin self-reinit (kVPProperty_EnableMediaChat)");
                  }

                  VoiceProcessorV2::ResetTimestampsAndInitializeVP(this, 0, v509, v510);
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  v513 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                  if (v513)
                  {
                    v514 = v513;
                    if (os_log_type_enabled(v513, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136315394;
                      *&buf[4] = "vpProperties.cpp";
                      *&buf[12] = 1024;
                      *&buf[14] = 1010;
                      _os_log_impl(&dword_2724B4000, v514, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> End self-reinit (kVPProperty_EnableMediaChat)", buf, 0x12u);
                    }
                  }

                  v515 = *(this + 1588);
                  if (v515 && ((*v574 & 1) != 0 || v574[1] == 1))
                  {
                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    CALegacyLog::log(v515, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1010, "SetProperty", "End self-reinit (kVPProperty_EnableMediaChat)");
                  }
                }

                goto LABEL_1630;
              }

              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              v548 = CALog::LogObjIfEnabled(2, VPLogScope(void)::scope);
              if (v548)
              {
                v549 = v548;
                if (os_log_type_enabled(v548, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315394;
                  *&buf[4] = "vpProperties.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 1016;
                  _os_log_impl(&dword_2724B4000, v549, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  >vp> setproperty: feature was not enabled", buf, 0x12u);
                }
              }

              v476 = *(this + 1588);
              if (!v476 || (*v574 & 1) == 0 && v574[1] != 1)
              {
LABEL_1630:
                v49 = 0;
LABEL_1631:
                v5 = 0;
                goto LABEL_1632;
              }

              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              v477 = 1016;
            }

            else
            {
              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              v474 = CALog::LogObjIfEnabled(2, VPLogScope(void)::scope);
              if (v474)
              {
                v475 = v474;
                if (os_log_type_enabled(v474, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315394;
                  *&buf[4] = "vpProperties.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 1037;
                  _os_log_impl(&dword_2724B4000, v475, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  >vp> setproperty: feature was not enabled", buf, 0x12u);
                }
              }

              v476 = *(this + 1588);
              if (!v476 || (*v574 & 1) == 0 && v574[1] != 1)
              {
                goto LABEL_1630;
              }

              if (VPLogScope(void)::once != -1)
              {
                dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
              }

              v477 = 1037;
            }

            CALegacyLog::log(v476, 2, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", v477, "SetProperty", "setproperty: feature was not enabled");
            goto LABEL_1630;
          }

          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_1706;
          }

          *buf = 136315906;
          *&buf[4] = "vpProperties.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 946;
          *&buf[18] = 2080;
          *&buf[20] = "inDataSize == sizeof(UInt32)";
          *&buf[28] = 2080;
          *&buf[30] = "BadPropertySize";
          v563 = MEMORY[0x277D86220];
        }

        else
        {
          switch(a2)
          {
            case 1701868402:
              if (v6 >= 4)
              {
                v49 = 0;
                v5 = 0;
                *(this + 4049) = *v7;
                goto LABEL_1632;
              }

              goto LABEL_1168;
            case 1718384242:
              if (v6 > 3)
              {
                v308 = *v7;
                v5 = (*(*this + 568))(this, v308);
                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                v309 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                if (v309)
                {
                  v310 = v309;
                  if (os_log_type_enabled(v309, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315650;
                    *&buf[4] = "vpProperties.cpp";
                    *&buf[12] = 1024;
                    *&buf[14] = 1527;
                    *&buf[18] = 1024;
                    *&buf[20] = v308;
                    _os_log_impl(&dword_2724B4000, v310, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> setproperty: preferred chat flavor = %u", buf, 0x18u);
                  }
                }

                v311 = *(this + 1588);
                if (v311 && ((*v574 & 1) != 0 || v574[1] == 1))
                {
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  CALegacyLog::log(v311, 3, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1527, "SetProperty", "setproperty: preferred chat flavor = %u", v308);
                }

LABEL_1253:
                v49 = 0;
                goto LABEL_1632;
              }

              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_1706;
              }

              *buf = 136315906;
              *&buf[4] = "vpProperties.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1523;
              *&buf[18] = 2080;
              *&buf[20] = "inDataSize >= sizeof(UInt32)";
              *&buf[28] = 2080;
              *&buf[30] = "BadPropertySize";
              v563 = MEMORY[0x277D86220];
              break;
            case 1751214436:
              if (v6 == 8)
              {
                v71 = *v7;
                if (v71)
                {
                  if (VPLogScope(void)::once != -1)
                  {
                    dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                  }

                  v72 = CALog::LogObjIfEnabled(3, VPLogScope(void)::scope);
                  if (v72)
                  {
                    v73 = v72;
                    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
                    {
                      v74 = applesauce::CF::StringRef::operator->(this + 274);
                      applesauce::CF::convert_to<std::string,0>(v585, *v74);
                      v75 = v585[23] >= 0 ? v585 : *v585;
                      *buf = 136315650;
                      *&buf[4] = "vpProperties.cpp";
                      *&buf[12] = 1024;
                      *&buf[14] = 2029;
                      *&buf[18] = 2080;
                      *&buf[20] = v75;
                      _os_log_impl(&dword_2724B4000, v73, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> Setting host application display ID to %s", buf, 0x1Cu);
                      if ((v585[23] & 0x80000000) != 0)
                      {
                        operator delete(*v585);
                      }
                    }
                  }

                  v76 = *(this + 1588);
                  if (v76 && ((*v574 & 1) != 0 || v574[1] == 1))
                  {
                    if (VPLogScope(void)::once != -1)
                    {
                      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                    }

                    v77 = VPLogScope(void)::scope;
                    v78 = applesauce::CF::StringRef::operator->(this + 274);
                    applesauce::CF::convert_to<std::string,0>(buf, *v78);
                    if (buf[23] >= 0)
                    {
                      v79 = buf;
                    }

                    else
                    {
                      v79 = *buf;
                    }

                    CALegacyLog::log(v76, 3, v77, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 2029, "SetProperty", "Setting host application display ID to %s", v79);
                    if ((buf[23] & 0x80000000) != 0)
                    {
                      operator delete(*buf);
                    }
                  }

                  v80 = CFStringCreateCopy(*MEMORY[0x277CBECE8], v71);
                  applesauce::CF::StringRef::StringRef(buf, v80);
                  v81 = *(this + 274);
                  *(this + 274) = *buf;
                  *buf = v81;
                  applesauce::CF::StringRef::~StringRef(buf);
                  goto LABEL_1630;
                }

                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                v443 = CALog::LogObjIfEnabled(1, VPLogScope(void)::scope);
                if (v443)
                {
                  v444 = v443;
                  if (os_log_type_enabled(v443, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136315394;
                    *&buf[4] = "vpProperties.cpp";
                    *&buf[12] = 1024;
                    *&buf[14] = 2033;
                    _os_log_impl(&dword_2724B4000, v444, OS_LOG_TYPE_ERROR, "%25s:%-5d  >vp> Failed to set null host application display DI", buf, 0x12u);
                  }
                }

                v445 = *(this + 1588);
                if (!v445 || (*v574 & 1) == 0 && v574[1] != 1)
                {
                  v5 = 0;
                  v49 = 1;
                  goto LABEL_1632;
                }

                if (VPLogScope(void)::once != -1)
                {
                  dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
                }

                v49 = 1;
                CALegacyLog::log(v445, 1, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 2033, "SetProperty", "Failed to set null host application display DI");
                goto LABEL_1631;
              }

              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                goto LABEL_1706;
              }

              *buf = 136315906;
              *&buf[4] = "vpProperties.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 2025;
              *&buf[18] = 2080;
              *&buf[20] = "inDataSize == sizeof(CFStringRef)";
              *&buf[28] = 2080;
              *&buf[30] = "BadPropertySize";
              v563 = MEMORY[0x277D86220];
              break;
            default:
              goto LABEL_1182;
          }
        }
      }

LABEL_1705:
      _os_log_impl(&dword_2724B4000, v563, OS_LOG_TYPE_ERROR, "%25s:%-5d  ca_require: %s %s", buf, 0x26u);
      goto LABEL_1706;
    }

    if (VPLogScope(void)::once != -1)
    {
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
    }

    v37 = os_log_type_enabled(*VPLogScope(void)::scope, OS_LOG_TYPE_DEBUG);
    v38 = VPLogScope(void)::scope;
    if (v37)
    {
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(4, VPLogScope(void)::scope, 0))
      {
        v39 = (*v38 ? *v38 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
        {
          vp::utility::encode_to_base_64(buf, v7, v6);
          v40 = buf[24];
          if (buf[24] == 1)
          {
            *__p = *buf;
            v583 = *&buf[16];
            memset(buf, 0, 24);
          }

          else
          {
            std::string::basic_string[abi:ne200100]<0>(__p, "???");
          }

          v148 = __p;
          if (SHIBYTE(v583) < 0)
          {
            v148 = __p[0];
          }

          *v585 = 136315650;
          *&v585[4] = "vpProperties.cpp";
          *&v585[12] = 1024;
          *&v585[14] = 806;
          *&v585[18] = 2080;
          *&v585[20] = v148;
          _os_log_impl(&dword_2724B4000, v39, OS_LOG_TYPE_INFO, "%25s:%-5d  <vp> setproperty: spatial metadata = %s", v585, 0x1Cu);
          if (SHIBYTE(v583) < 0)
          {
            operator delete(__p[0]);
          }

          if (v40 && (buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }
        }
      }

      v149 = *(this + 1588);
      if (v149 && ((*v574 & 1) != 0 || v574[1] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v150 = VPLogScope(void)::scope;
        vp::utility::encode_to_base_64(buf, v7, v6);
        v151 = buf[24];
        if (buf[24] == 1)
        {
          *v585 = *buf;
          *&v585[16] = *&buf[16];
          memset(buf, 0, 24);
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(v585, "???");
        }

        v152 = v585;
        if (v585[23] < 0)
        {
          v152 = *v585;
        }

        CALegacyLog::log(v149, 4, v150, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 806, "SetProperty", "setproperty: spatial metadata = %s", v152);
        if ((v585[23] & 0x80000000) != 0)
        {
          operator delete(*v585);
        }

        if (v151 && (buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }
      }
    }

    else
    {
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(4, VPLogScope(void)::scope, 0))
      {
        v62 = (*v38 ? *v38 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          *&buf[4] = "vpProperties.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 808;
          _os_log_impl(&dword_2724B4000, v62, OS_LOG_TYPE_INFO, "%25s:%-5d  <vp> setproperty: spatial metadata", buf, 0x12u);
        }
      }

      v63 = *(this + 1588);
      if (v63 && ((*v574 & 1) != 0 || v574[1] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        CALegacyLog::log(v63, 4, VPLogScope(void)::scope, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 808, "SetProperty", "setproperty: spatial metadata");
      }
    }

    os_unfair_lock_lock(this + 4075);
    v153 = caulk::concurrent::details::lf_read_sync_write_impl::begin_mutate((this + 16296));
    v154 = this + 16304;
    if ((*(this + v153 + 16304) & 1) == 0)
    {
      __break(1u);
LABEL_1718:
      dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
LABEL_1474:
      v519 = this;
      CALegacyLog::log(v7, 3, v6[115], "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 1615, "SetProperty", "[VolumeLimit] Setting target LKFS on LDNM to %f", v4);
LABEL_1475:
      AudioUnitSetParameter(*(v519 + 485), 2u, 0, 0, v4, 0);
      goto LABEL_1630;
    }

    v155 = v153;
    v156 = this;
    v157 = this + 16312;
    v158 = this + 32 * v153 + 16312;
    buf[0] = 0;
    buf[24] = 0;
    v159 = v158[24];
    if (v159 == 1)
    {
      memset(buf, 0, 24);
      std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(buf, *v158, *(v158 + 1), *(v158 + 1) - *v158);
    }

    v160 = v6;
    v161 = v155 == 0;
    if (v155)
    {
      v162 = v154;
    }

    else
    {
      v162 = v154 + 1;
    }

    v163 = &v157[32 * v161];
    if (*v162 == 1)
    {
      if (v163[24] == 1)
      {
        v164 = *v163;
        if (*v163)
        {
          *(v163 + 1) = v164;
          operator delete(v164);
        }
      }
    }

    else
    {
      v154[v161] = 1;
    }

    *v163 = 0;
    v163[24] = 0;
    if (v159)
    {
      *v163 = *buf;
      *(v163 + 2) = *&buf[16];
      memset(buf, 0, 24);
    }

    else
    {
      *v163 = 0;
      *(v163 + 1) = 0;
      *(v163 + 2) = 0;
    }

    v163[24] = 1;
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(v163, v7, v7 + v160, v160);
    caulk::concurrent::details::lf_read_sync_write_impl::end_mutate((v156 + 16296));
    v154[v155] = 0;
    if (v158[24] == 1)
    {
      v165 = *v158;
      if (*v158)
      {
        *(v158 + 1) = v165;
        operator delete(v165);
      }
    }

    os_unfair_lock_unlock(v156 + 4075);
    atomic_fetch_add(v156 + 2047, 1uLL);
    if (*v574)
    {
      if (*(v156 + 1906))
      {
        *buf = 0;
        VoiceProcessorV2::PListCopyDictionaryForWrite(v156, buf);
        v166 = *buf;
        if (*buf)
        {
          v167 = CFDataCreate(0, v7, v160);
          v168 = v167;
          if (!v167)
          {
            v571 = __cxa_allocate_exception(0x10uLL);
            applesauce::CF::construct_error(v571);
          }

          *v585 = v167;
          v169 = CFGetTypeID(v167);
          if (v169 != CFDataGetTypeID())
          {
            v572 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v572, "Could not construct");
          }

          __p[0] = v168;
          VPGetPropsPListStringForKey(&cf, 70);
          WriteItemToDictionary(buf, &cf, 4, 8uLL, __p);
          if (cf)
          {
            CFRelease(cf);
          }

          CFRelease(v166);
          *buf = 0;
          if (*v585)
          {
            CFRelease(*v585);
          }
        }
      }
    }

LABEL_441:
    v5 = 0;
    goto LABEL_442;
  }

  if (a4 != 4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "vpProperties.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 817;
      *&buf[18] = 2080;
      *&buf[20] = "inDataSize == sizeof(Float32)";
      *&buf[28] = 2080;
      *&buf[30] = "BadPropertySize";
      v546 = MEMORY[0x277D86220];
LABEL_1584:
      _os_log_impl(&dword_2724B4000, v546, OS_LOG_TYPE_ERROR, "%25s:%-5d  ca_require: %s %s", buf, 0x26u);
    }

LABEL_1638:
    v5 = 561211770;
    goto LABEL_442;
  }

  v5 = 0;
  v41 = *theDict;
  v42 = COERCE_FLOAT(atomic_load(this + 567));
  if (v41 <= 1.0)
  {
    v43 = v42;
    if (v41 >= 0.0 && v41 != v42)
    {
      v45 = *theDict;
      while (1)
      {
        v46 = v43;
        atomic_compare_exchange_strong(this + 567, &v46, LODWORD(v45));
        if (LODWORD(v46) == LODWORD(v43))
        {
          break;
        }

        v43 = v46;
        sched_yield();
      }

      if (VPLogScope(void)::once != -1)
      {
        dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
      }

      v64 = VPLogScope(void)::scope;
      if (VPLogScope(void)::scope && CALegacyLog::LogEnabled(3, VPLogScope(void)::scope, 0))
      {
        v65 = (*v64 ? *v64 : MEMORY[0x277D86220]);
        if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
        {
          v66 = COERCE_FLOAT(atomic_load(this + 567));
          *buf = 136315906;
          *&buf[4] = "vpProperties.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 829;
          *&buf[18] = 2048;
          *&buf[20] = v43;
          *&buf[28] = 2048;
          *&buf[30] = v66;
          _os_log_impl(&dword_2724B4000, v65, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  <vp> setproperty: media chat old volume:[%f], new volume:[%f]", buf, 0x26u);
        }
      }

      v67 = *(this + 1588);
      if (v67 && ((*v10 & 1) != 0 || v10[1] == 1))
      {
        if (VPLogScope(void)::once != -1)
        {
          dispatch_once(&VPLogScope(void)::once, &__block_literal_global_2733);
        }

        v68 = VPLogScope(void)::scope;
        v69 = COERCE_FLOAT(atomic_load(this + 567));
        CALegacyLog::log(v67, 3, v68, "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Framework/VoiceProcessor/vpProperties.cpp", 829, "SetProperty", "setproperty: media chat old volume:[%f], new volume:[%f]", v43, v69);
        v10 = v574;
      }

      if (*v10 == 1)
      {
        VoiceProcessorV2::PListWriteSetPropertyParameters(this, 1937141091);
      }

      goto LABEL_441;
    }
  }

LABEL_442:
  v170 = *MEMORY[0x277D85DE8];
  return v5;
}
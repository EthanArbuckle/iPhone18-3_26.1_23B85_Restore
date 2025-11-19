@interface HUDUserClientMainWindow
- (HUDUserClientMainWindow)initWithFrame:(CGRect)a3;
- (void)draw:(HUDMTLLayerState *)a3 drawableState:(HUDMTLLayerDrawableState *)a4 fontSize:(int)a5 frame:(id)a6 layout:(unint64_t)a7 height:(float *)a8 qrCode:(id)a9;
@end

@implementation HUDUserClientMainWindow

- (HUDUserClientMainWindow)initWithFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = HUDUserClientMainWindow;
  return [(HUDUserClientWindow *)&v4 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
}

- (void)draw:(HUDMTLLayerState *)a3 drawableState:(HUDMTLLayerDrawableState *)a4 fontSize:(int)a5 frame:(id)a6 layout:(unint64_t)a7 height:(float *)a8 qrCode:(id)a9
{
  v670 = a9;
  v13 = HUDGetGlobalConfig();
  GlobalOverlay = HUDMTLOverlayGetGlobalOverlay();
  v15 = +[_CADeveloperHUDProperties instance];
  v712 = 0;
  HUDSystemStateGetSnapshot(&v712);
  v711 = 0;
  HUDUIFrameGetSizeInPoints(a6.var0, &v711 + 1, &v711);
  *&v16 = HIDWORD(v711);
  LODWORD(v17) = 1333788672;
  LODWORD(v18) = HUDUIRectMake(0.0, 0.0, v16, v17).n128_u32[0];
  v22 = 15.0;
  if (a7 == 16)
  {
    v22 = 5.0;
  }

  v685 = HUDUIInvalidString;
  *&v686 = qword_784F8;
  HUDUIFrameBeginWindow(a6.var0, &v685, -1291845632, 1, v18, v19, v20, v21, v22);
  if (a7)
  {
    v23 = HUDUIWindowBeginRow(a6.var0, 9999.0);
    v24 = *&v23;
    v26 = v25;
    v28 = v27;
    v29 = [v15 getMetric:@"com.apple.hud-stat.gpu-name"];
    v30 = [v29 stringValue];
    v31 = v30;
    v32 = @"Unknown";
    if (v30)
    {
      v32 = v30;
    }

    v33 = v32;

    FontHeight = HUDUIOverlayGetFontHeight(GlobalOverlay, a5);
    HUDUIAllocString([(__CFString *)v33 UTF8String], GlobalOverlay, a5, &v685);
    *&v35 = FontHeight;
    HUDUIWindowAddLabelInRect(a6.var0, &v685, -1, 0, 0, v24, v26, v28, v35);
  }

  if ((a7 & 2) != 0 && MTLHudIsProcessTranslated())
  {
    v36 = +[_CADeveloperHUDProperties instance];
    v37 = [v36 graphicsAPI];

    if (v37 > 2)
    {
      v38 = 0;
    }

    else
    {
      v38 = (&off_69290)[v37];
    }

    v39 = HUDUIWindowBeginRow(a6.var0, 9999.0);
    v40 = *&v39;
    v42 = v41;
    v44 = v43;
    v46 = v45;
    HUDUIAllocString("Rosetta x86_64", GlobalOverlay, a5, &v685);
    HUDUIAllocString(v38, GlobalOverlay, a5, &v709);
    LODWORD(v47) = v46;
    HUDUIWindowAddLabelKeyValuePair(a6.var0, &v685, -1, &v709, -1, v40, v42, v44, v47);
  }

  v676 = v13;
  if ((a7 & 4) != 0)
  {
    v48 = HUDUIWindowBeginRow(a6.var0, 9999.0);
    v49 = *&v48;
    v51 = v50;
    v53 = v52;
    v55 = v54;
    if (a3->lastDrawableDetached)
    {
      drawableHeight = a4->drawableHeight;
      HUDUITemporaryStringWithFormat(a6.var0, a5, "%dx%d ", &v685, a4->drawableWidth);
      v56 = " Direct";
      v57 = -12463527;
    }

    else
    {
      v58 = *(v13 + 33);
      v664 = a4->drawableHeight;
      HUDUITemporaryStringWithFormat(a6.var0, a5, "%dx%d ", &v685, a4->drawableWidth);
      if (v58)
      {
        v56 = " Direct";
      }

      else
      {
        v56 = " Composited";
      }

      if (v58)
      {
        v57 = -12463527;
      }

      else
      {
        v57 = -16080897;
      }
    }

    HUDUIAllocString(v56, GlobalOverlay, a5, &v709);
    LODWORD(v59) = v55;
    HUDUIWindowAddLabelKeyValuePair(a6.var0, &v685, -1, &v709, v57, v49, v51, v53, v59);
  }

  if ((a7 & 0x400000) != 0)
  {
    v60 = HUDUIWindowBeginRow(a6.var0, 9999.0);
    v61 = *&v60;
    v63 = v62;
    v65 = v64;
    v67 = v66;
    layerContentsScale = a4->layerContentsScale;
    HUDUIAllocStringWithFormat(GlobalOverlay, a5, "%2.1fx ", &v685, SLOBYTE(layerContentsScale));
    v68 = HUDMTLPixelFormatName(a3->pixelFormat);
    HUDUIAllocStringWithFormat(GlobalOverlay, a5, "%s", &v709, v68);
    LODWORD(v69) = v67;
    HUDUIWindowAddLabelKeyValuePair(a6.var0, &v685, -1, &v709, -1, v61, v63, v65, v69);
  }

  if ((a7 & 8) != 0 && v712)
  {
    v70 = HUDUIWindowBeginRow(a6.var0, 9999.0);
    v71 = *&v70;
    v73 = v72;
    v75 = v74;
    v77 = v76;
    v685 = 0uLL;
    *&v686 = 0;
    HUDUITemporaryFormattedBytes(a6.var0, a5, "Metal: ", *v712, 0, &v685);
    v710 = 0;
    v709 = 0uLL;
    HUDUITemporaryFormattedBytes(a6.var0, a5, "App: ", v712[1], 0, &v709);
    v707 = v685;
    v708 = v686;
    v705 = v709;
    v706 = v710;
    LODWORD(v78) = v77;
    HUDUIWindowAddLabelKeyValuePair(a6.var0, &v707, -1, &v705, -1, v71, v73, v75, v78);
    v79 = HUDUIWindowBeginRow(a6.var0, 9999.0);
    v80 = *&v79;
    v82 = v81;
    v84 = v83;
    v86 = v85;
    HUDUIAllocString("Available Memory", GlobalOverlay, a5, &v707);
    HUDUITemporaryFormattedBytes(a6.var0, a5, "", v712[2], 0, &v705);
    LODWORD(v87) = v86;
    HUDUIWindowAddLabelKeyValuePair(a6.var0, &v707, -1, &v705, -1, v80, v82, v84, v87);
  }

  if ((a7 & 0x800000) != 0)
  {
    v685 = HUDUIInvalidString;
    *&v686 = qword_784F8;
    if (a3->screenFPS)
    {
      HUDUIAllocStringWithFormat(GlobalOverlay, a5, "%dHz", &v709, a3->screenFPS);
      v685 = v709;
      *&v686 = v710;
    }

    else
    {
      HUDUIAllocString("--Hz", GlobalOverlay, a5, &v685);
    }

    v88 = HUDUIWindowBeginRow(a6.var0, 9999.0);
    v89 = *&v88;
    v91 = v90;
    v93 = v92;
    v95 = v94;
    HUDUIAllocString("Refresh Rate", GlobalOverlay, a5, &v709);
    v707 = v685;
    v708 = v686;
    LODWORD(v96) = v95;
    HUDUIWindowAddLabelKeyValuePair(a6.var0, &v709, -1, &v707, -1, v89, v91, v93, v96);
  }

  v97 = (&a3->presentTimeRecord.minFrame + 1);
  if ((a7 & 0x40000) != 0)
  {
    v98 = [v15 getMetric:@"com.apple.hud-stat.thermal-state"];
    if (v98)
    {
      HUDUIWindowBeginRow(a6.var0, 9999.0);
      v99 = HUDUIWindowBeginRow(a6.var0, 9999.0);
      v100 = *&v99;
      v102 = v101;
      v104 = v103;
      v106 = v105;
      v107 = [v98 stringValue];
      v108 = [v98 valueColor];
      LODWORD(v109) = v106;
      HUDUIWindowAddLabelKeyValuePair(a6.var0, &v685, -1, &v709, v108, v100, v102, v104, v109);
    }
  }

  v674 = v15;
  v675 = a7;
  if ((a7 & 0x1000000) != 0)
  {
    if ((HUDMTLOverlayIsInGPTK() & 1) == 0)
    {
      v110 = MTLHUDGameModeEnabled();
      v111 = HUDUIWindowBeginRow(a6.var0, 9999.0);
      v112 = *&v111;
      v114 = v113;
      v116 = v115;
      v118 = v117;
      HUDUIAllocString("Game Mode", GlobalOverlay, a5, &v685);
      v119 = "Off";
      if (v110)
      {
        v119 = "On";
        v120 = -12463527;
      }

      else
      {
        v120 = -16080897;
      }

      HUDUIAllocStringWithFormat(GlobalOverlay, a5, "%s", &v709, v119);
      LODWORD(v121) = v118;
      HUDUIWindowAddLabelKeyValuePair(a6.var0, &v685, -1, &v709, v120, v112, v114, v116, v121);
    }
  }

  else if (a7 == 16)
  {
    v672 = 0;
LABEL_60:
    v167 = HUDUIOverlayGetFontHeight(GlobalOverlay, 1u);
    v168 = HUDUIWindowBeginRow(a6.var0, v167);
    v169 = *&v168;
    v171 = v170;
    v173 = v172;
    v175 = v174 - (HUDUIOverlayGetFontHeight(GlobalOverlay, 1u) >> 1);
    v656 = 1000000000.0 / *(&a3->presentTimeRecord.valuesMax + 4);
    HUDUITemporaryStringWithFormat(a6.var0, 2u, "%.2f", &v685, SLOBYTE(v656));
    LODWORD(v176) = v173;
    HUDUIWindowAddLabelInRect(a6.var0, &v685, -1, 1, 1, v169, v175, v171, v176);
    goto LABEL_155;
  }

  MetalWrapperType = MTLHudGetMetalWrapperType();
  IsCaptureEnabled = MTLHudIsCaptureEnabled();
  v124 = MetalWrapperType - 1;
  if (MetalWrapperType - 1) <= 9 && ((0x21Fu >> v124))
  {
    v125 = (&off_692A8)[v124];
    v126 = HUDUIWindowBeginRow(a6.var0, 9999.0);
    v127 = *&v126;
    v129 = v128;
    v131 = v130;
    v133 = v132;
    HUDUIAllocStringWithFormat(GlobalOverlay, a5, "%s Enabled", &v685, v125);
    v709 = HUDUIInvalidString;
    v710 = qword_784F8;
    LODWORD(v134) = v133;
    HUDUIWindowAddLabelKeyValuePair(a6.var0, &v685, -16080897, &v709, -1, v127, v129, v131, v134);
  }

  if (IsCaptureEnabled)
  {
    v135 = HUDUIWindowBeginRow(a6.var0, 9999.0);
    v136 = *&v135;
    v138 = v137;
    v140 = v139;
    v142 = v141;
    HUDUIAllocStringWithFormat(GlobalOverlay, a5, "GPU Frame Capture Enabled", &v685, v654);
    v709 = HUDUIInvalidString;
    v710 = qword_784F8;
    LODWORD(v143) = v142;
    HUDUIWindowAddLabelKeyValuePair(a6.var0, &v685, -16080897, &v709, -1, v136, v138, v140, v143);
  }

  v144 = +[NSProcessInfo processInfo];
  v145 = [v144 isLowPowerModeEnabled];

  if (v145)
  {
    v146 = HUDUIWindowBeginRow(a6.var0, 9999.0);
    v147 = *&v146;
    v149 = v148;
    v151 = v150;
    v153 = v152;
    HUDUIAllocStringWithFormat(GlobalOverlay, a5, "Low Power Mode Enabled", &v685, v654);
    v709 = HUDUIInvalidString;
    v710 = qword_784F8;
    LODWORD(v154) = v153;
    HUDUIWindowAddLabelKeyValuePair(a6.var0, &v685, -16080897, &v709, -1, v147, v149, v151, v154);
  }

  if ((a7 & 0x10) != 0)
  {
    if (a7 == 16)
    {
      v672 = 1;
      goto LABEL_60;
    }

    HUDUIWindowEmptyRow(a6.var0, 6.0);
    if ((a7 & 0x1000) != 0)
    {
      v177 = HUDUIWindowBeginRow(a6.var0, 9999.0);
      v178 = *&v177;
      v180 = v179;
      v182 = v181;
      v184 = v183;
      v185 = +[_CADeveloperHUDProperties instance];
      v186 = [v185 frameMarker];

      if ([v186 length])
      {
        HUDUIAllocString("Frame", GlobalOverlay, a5, &v685);
        frameNumber = a3->frameNumber;
        [v186 UTF8String];
        HUDUITemporaryStringWithFormat(a6.var0, a5, "%d | %s", &v709, frameNumber);
      }

      else
      {
        HUDUIAllocString("Frame", GlobalOverlay, a5, &v685);
        HUDUITemporaryStringWithFormat(a6.var0, a5, "%d", &v709, a3->frameNumber);
      }

      LODWORD(v188) = v184;
      HUDUIWindowAddLabelKeyValuePair(a6.var0, &v685, -1, &v709, -1, v178, v180, v182, v188);
    }

    v633 = *(v13 + 30);
    v634 = HUDUIWindowBeginRow(a6.var0, 9999.0);
    v635 = *&v634;
    v637 = v636;
    v639 = v638;
    v641 = v640;
    HUDUIAllocString("FPS", GlobalOverlay, a5, &v685);
    if (v633 == 1)
    {
      v642 = 1000000000.0 / *(&a3->presentTimeRecord.valuesMax + 4);
      v643 = 1000000000.0 / *(&a3->presentTimeRecord.valuesMin + 4);
      *&v643 = v643;
      v644 = 1000000000.0 / *v97;
      *&v644 = v644;
      HUDUIWindowAddStats(a6.var0, a5, &v685, v642, v643, v644, v635, v637, v639, v641, "", -1);
    }

    else
    {
      v662 = 1000000000.0 / *(&a3->presentTimeRecord.valuesMax + 4);
      HUDUITemporaryStringWithFormat(a6.var0, a5, "%.2f", &v709, SLOBYTE(v662));
      *&v645 = v641;
      HUDUIWindowAddLabelKeyValuePair(a6.var0, &v685, -1, &v709, -1, v635, v637, v639, v645);
    }
  }

  if ((a7 & 0x80000) != 0)
  {
    v155 = HUDUIWindowBeginRow(a6.var0, 50.0);
    v156 = *&v155;
    v158 = v157;
    v160 = v159;
    v162 = v161;
    v703 = 0u;
    v704 = 0u;
    v701 = 0u;
    v702 = 0u;
    v699 = 0u;
    v700 = 0u;
    v697 = 0u;
    v698 = 0u;
    v695 = 0u;
    v696 = 0u;
    v693 = 0u;
    v694 = 0u;
    v691 = 0u;
    v692 = 0u;
    v689 = 0u;
    v690 = 0u;
    v687 = 0u;
    v688 = 0u;
    v685 = 0u;
    v686 = 0u;
    HUDUILineChartInit(&v685);
    minValueAllowed_high = HIDWORD(a3->fpsRecord.minValueAllowed);
    if (!minValueAllowed_high || (v164 = __CFADD__(minValueAllowed_high, 1), v165 = (minValueAllowed_high + 1), v164))
    {
      v166 = -2147483650.0;
    }

    else
    {
      v189 = 0;
      lastValue_low = LODWORD(a3->fpsRecord.lastValue);
      v191 = 0x7FFFFFFF;
      do
      {
        if (*(&a3->fpsRecord.lastValue + v189) > lastValue_low || v191 == 0x7FFFFFFF)
        {
          lastValue_low = *(&a3->fpsRecord.lastValue + v189);
          v191 = v189;
        }

        ++v189;
      }

      while (v165 != v189);
      v166 = (v191 + 1);
    }

    v193 = v166 * *(&a3->fpsRecord.maxValueAllowed + 4);
    HUDUILineChartSet(&v685, 0, &a3->presentToOnGlassRecord.valuesMinSinceBeginning, -354547, 1, 0, 3.0, v193, 0.05);
    v194 = fmax(round(*(&a3->fpsRecord.minFrame + 1) / 30.0) * 30.0, 60.0) + 30.0;
    v709 = HUDUIInvalidString;
    v710 = qword_784F8;
    LODWORD(v195) = v162;
    HUDUIWindowAddLineChart(a6.var0, &v709, &v685, 0.0, v194, v156, v158, v160, v195, v196, v197, "fps", 0);
  }

  if ((a7 & 0x20000) != 0)
  {
    GlobalInstance = HUDGPUTimeTrackerGetGlobalInstance();
    ValueRecord = HUDGPUTimeTrackerGetValueRecord(GlobalInstance, 4u);
    if (ValueRecord)
    {
      v200 = (ValueRecord + 972);
      v201 = HUDUIWindowBeginRow(a6.var0, 9999.0);
      v202 = *&v201;
      v204 = v203;
      v206 = v205;
      v208 = v207;
      if (*(v13 + 30) == 1)
      {
        HUDUIAllocString("GPU", GlobalOverlay, a5, &v685);
        v209 = v200[2] * 0.000001;
        v210 = *v200 * 0.000001;
        *&v210 = v210;
        v211 = v200[1] * 0.000001;
        *&v211 = v211;
        HUDUIWindowAddStats(a6.var0, a5, &v685, v209, v210, v211, v202, v204, v206, v208, "ms", -1);
      }

      else
      {
        HUDUIAllocString("GPU", GlobalOverlay, a5, &v685);
        v657 = v200[2] * 0.000001;
        HUDUITemporaryStringWithFormat(a6.var0, a5, "%.2fms", &v709, SLOBYTE(v657));
        *&v212 = v208;
        HUDUIWindowAddLabelKeyValuePair(a6.var0, &v685, -1, &v709, -1, v202, v204, v206, v212);
      }
    }
  }

  if ((a7 & 0x10000) == 0)
  {
LABEL_80:
    if ((a7 & 0x20) != 0)
    {
      goto LABEL_81;
    }

    goto LABEL_86;
  }

  v213 = HUDUIWindowBeginRow(a6.var0, 9999.0);
  v214 = *&v213;
  v216 = v215;
  v218 = v217;
  v220 = v219;
  if (*(v13 + 30) == 1)
  {
    HUDUIAllocString("Present Delay", GlobalOverlay, a5, &v685);
    v221 = *(&a3->presentToOnGlassRecord.valuesMin + 4) * 0.000001;
    v222 = *&a3->presentToOnGlassRecord.maxFrame * 0.000001;
    *&v222 = v222;
    v223 = *(&a3->presentToOnGlassRecord.minFrame + 1) * 0.000001;
    *&v223 = v223;
    HUDUIWindowAddStats(a6.var0, a5, &v685, v221, v222, v223, v214, v216, v218, v220, "ms", -1);
    goto LABEL_80;
  }

  HUDUIAllocString("Present Delay", GlobalOverlay, a5, &v685);
  v658 = *(&a3->presentToOnGlassRecord.valuesMin + 4) * 0.000001;
  HUDUITemporaryStringWithFormat(a6.var0, a5, "%.2fms", &v709, SLOBYTE(v658));
  *&v235 = v220;
  HUDUIWindowAddLabelKeyValuePair(a6.var0, &v685, -1, &v709, -1, v214, v216, v218, v235);
  if ((a7 & 0x20) != 0)
  {
LABEL_81:
    v224 = HUDUIWindowBeginRow(a6.var0, 9999.0);
    v225 = *&v224;
    v227 = v226;
    v229 = v228;
    v231 = v230;
    if (*(v13 + 30) == 1)
    {
      HUDUIAllocString("Frame Interval", GlobalOverlay, a5, &v685);
      v232 = *(&a3->presentTimeRecord.valuesMax + 4) * 0.000001;
      v233 = *v97 * 0.000001;
      *&v233 = v233;
      v234 = *(&a3->presentTimeRecord.valuesMin + 4) * 0.000001;
      *&v234 = v234;
      HUDUIWindowAddStats(a6.var0, a5, &v685, v232, v233, v234, v225, v227, v229, v231, "ms", -1);
    }

    else
    {
      HUDUIAllocString("Frame Interval", GlobalOverlay, a5, &v685);
      v659 = *(&a3->presentTimeRecord.valuesMax + 4) * 0.000001;
      HUDUITemporaryStringWithFormat(a6.var0, a5, "%.2fms", &v709, SLOBYTE(v659));
      *&v236 = v231;
      HUDUIWindowAddLabelKeyValuePair(a6.var0, &v685, -1, &v709, -1, v225, v227, v229, v236);
    }
  }

LABEL_86:
  v673 = (&a3->presentTimeRecord.valuesMax + 4);
  if ((a7 & 0x8000) != 0)
  {
    v237 = HUDUIWindowBeginRow(a6.var0, 50.0);
    v238 = *&v237;
    v240 = v239;
    v242 = v241;
    v244 = v243;
    v703 = 0u;
    v704 = 0u;
    v701 = 0u;
    v702 = 0u;
    v699 = 0u;
    v700 = 0u;
    v697 = 0u;
    v698 = 0u;
    v695 = 0u;
    v696 = 0u;
    v693 = 0u;
    v694 = 0u;
    v691 = 0u;
    v692 = 0u;
    v689 = 0u;
    v690 = 0u;
    v687 = 0u;
    v688 = 0u;
    v685 = 0u;
    v686 = 0u;
    HUDUILineChartInit(&v685);
    bucketSize_high = HIDWORD(a3->presentTimeRecord.bucketSize);
    if (!bucketSize_high || (v164 = __CFADD__(bucketSize_high, 1), v246 = (bucketSize_high + 1), v164))
    {
      v247 = -2147483650.0;
    }

    else
    {
      v248 = 0;
      maxBucketIndex = a3->presentTimeRecord.maxBucketIndex;
      v250 = 0x7FFFFFFF;
      do
      {
        if (*(&a3->presentTimeRecord.maxBucketIndex + v248) > maxBucketIndex || v250 == 0x7FFFFFFF)
        {
          v250 = v248;
          maxBucketIndex = *(&a3->presentTimeRecord.maxBucketIndex + v248);
        }

        ++v248;
      }

      while (v246 != v248);
      v247 = (v250 + 1);
    }

    v252 = v247 * *(&a3->presentTimeRecord.lastValue + 4);
    HUDUILineChartSet(&v685, 0, &a3->presentTimeRecord, -354547, 0, 0, 3.0, v252, 0.05);
    v253 = fmax(*v673 + 1000000.0, 40000000.0);
    v709 = HUDUIInvalidString;
    v710 = qword_784F8;
    LODWORD(v254) = v244;
    HUDUIWindowAddLineChart(a6.var0, &v709, &v685, 0.0, v253, v238, v240, v242, v254, v255, v256, "ms", 0);
  }

  if ((a7 & 0x40) != 0)
  {
    HUDUIWindowEmptyRow(a6.var0, 6.0);
    v257 = HUDUIWindowBeginRow(a6.var0, 60.0);
    v258 = *&v257;
    v260 = v259;
    v262 = v261.n128_f32[0];
    v264 = v263;
    *&v685 = &a3->presentTimeRecord.maxBucketIndex;
    *(&v685 + 1) = "ms";
    v265 = (HIDWORD(a3->presentTimeRecord.bucketSize) + 1);
    *&v686 = 0;
    *(&v686 + 1) = v265;
    LODWORD(v687) = 0;
    *&v257 = *(&a3->presentTimeRecord.lastValue + 4) * 0.000001;
    DWORD1(v687) = LODWORD(v257);
    HUDUIWindowAddHistogram(a6.var0, &v685, v258, v259, v261, v263, v266, v267);
    if (a3->frameMisses)
    {
      if (v262 > 120.0)
      {
        HUDUITemporaryStringWithFormat(a6.var0, 0, "Missed %d", &v709, a3->frameMisses);
        *&v268 = v264;
        HUDUIWindowAddLabelInRect(a6.var0, &v709, -11969794, 2, 0, v258, v260, v262, v268);
      }
    }
  }

  if ((a7 & 0x80) != 0)
  {
    HUDUIWindowEmptyRow(a6.var0, 6.0);
    for (i = 0; i != 7; ++i)
    {
      v270 = HUDGPUTimeTrackerGetGlobalInstance();
      v271 = HUDGPUTimeTrackerGetValueRecord(v270, dword_54AB0[i]);
      v272 = HUDGPUTimeTrackerGetGlobalInstance();
      v273 = dword_54ACC[i];
      v274 = HUDGPUTimeTrackerGetValueRecord(v272, v273);
      if (v271)
      {
        v275 = v274;
        v276 = (v271 + 988);
        if (*v276 > 0.0 || *(v676 + 6) == 1)
        {
          v277 = HUDUIWindowBeginRow(a6.var0, 9999.0);
          v278 = *&v277;
          v280 = v279;
          v282 = v281;
          v284 = v283;
          RecordName = HUDGPUTimeTrackerGetRecordName(v273);
          HUDUIAllocString(RecordName, GlobalOverlay, a5, &v685);
          v665 = *(v275 + 988) * 0.000001;
          HUDUITemporaryStringWithFormat(a6.var0, a5, "%d |%5.2fms", &v709, vcvtpd_s64_f64(*v276));
          LODWORD(v286) = v284;
          HUDUIWindowAddLabelKeyValuePair(a6.var0, &v685, -1, &v709, -1, v278, v280, v282, v286);
        }
      }
    }

    v287 = HUDGPUTimeTrackerGetGlobalInstance();
    v288 = HUDGPUTimeTrackerGetValueRecord(v287, 0x32u);
    v13 = v676;
    if (v288)
    {
      v289 = (v288 + 988);
      if (*(v288 + 988) > 0.0)
      {
        v290 = HUDUIWindowBeginRow(a6.var0, 9999.0);
        v291 = *&v290;
        v293 = v292;
        v295 = v294;
        v297 = v296;
        v298 = HUDGPUTimeTrackerGetRecordName(50);
        HUDUIAllocString(v298, GlobalOverlay, a5, &v685);
        HUDUITemporaryFormattedBytes(a6.var0, a5, "", *v289, 0, &v709);
        LODWORD(v299) = v297;
        HUDUIWindowAddLabelKeyValuePair(a6.var0, &v685, -1, &v709, -1, v291, v293, v295, v299);
      }
    }
  }

  if ((a7 & 0x800) != 0)
  {
    v300 = HUDGPUTimeTrackerGetGlobalInstance();
    TotalCompilerStatistics = HUDGPUTimeTrackerGetTotalCompilerStatistics(v300);
    if (TotalCompilerStatistics)
    {
      v302 = TotalCompilerStatistics;
      HUDUIWindowEmptyRow(a6.var0, 6.0);
      v685 = HUDUIInvalidString;
      *&v686 = qword_784F8;
      if (*(v302 + 64) > 0x3B9AC9FFuLL)
      {
        HUDUITemporaryStringWithFormat(a6.var0, a5, "%d | %6.2fs", &v709, *(v302 + 48) + *(v302 + 40));
        v685 = v709;
        *&v686 = v710;
      }

      else
      {
        HUDUITemporaryStringWithFormat(a6.var0, a5, "%d | %5.2fms", &v685, *(v302 + 48) + *(v302 + 40));
      }

      if (*(v302 + 24) || *(v302 + 32) || *(v13 + 6) == 1)
      {
        v303 = HUDUIWindowBeginRow(a6.var0, 9999.0);
        v304 = *&v303;
        v306 = v305;
        v308 = v307;
        v310 = v309;
        HUDUIAllocString("Pipeline States", GlobalOverlay, a5, &v709);
        HUDUITemporaryStringWithFormat(a6.var0, a5, "%d", &v707, *(v302 + 32) + *(v302 + 24));
        LODWORD(v311) = v310;
        HUDUIWindowAddLabelKeyValuePair(a6.var0, &v709, -1, &v707, -1, v304, v306, v308, v311);
      }

      if (*(v302 + 56) || *(v13 + 6) == 1)
      {
        v312 = HUDUIWindowBeginRow(a6.var0, 9999.0);
        v313 = *&v312;
        v315 = v314;
        v317 = v316;
        v319 = v318;
        HUDUIAllocString("Cached Shaders", GlobalOverlay, a5, &v709);
        HUDUITemporaryStringWithFormat(a6.var0, a5, "%d", &v707, *(v302 + 56));
        LODWORD(v320) = v319;
        HUDUIWindowAddLabelKeyValuePair(a6.var0, &v709, -1, &v707, -1, v313, v315, v317, v320);
      }

      v321 = HUDUIWindowBeginRow(a6.var0, 9999.0);
      v322 = *&v321;
      v324 = v323;
      v326 = v325;
      v328 = v327;
      HUDUIAllocString("Compiled Shaders", GlobalOverlay, a5, &v709);
      v707 = v685;
      v708 = v686;
      LODWORD(v329) = v328;
      HUDUIWindowAddLabelKeyValuePair(a6.var0, &v709, -1, &v707, -1, v322, v324, v326, v329);
      if (*(v302 + 48))
      {
        v330 = HUDUIWindowBeginRow(a6.var0, 9999.0);
        v331 = *&v330;
        v333 = v332;
        v335 = v334;
        v337 = v336;
        HUDUIAllocString("Async Compilations", GlobalOverlay, a5, &v709);
        HUDUITemporaryStringWithFormat(a6.var0, a5, "%d", &v707, *(v302 + 48));
        LODWORD(v338) = v337;
        HUDUIWindowAddLabelKeyValuePair(a6.var0, &v709, -1, &v707, -1, v331, v333, v335, v338);
      }
    }

    v339 = HUDGPUTimeTrackerGetGlobalInstance();
    v340 = HUDGPUTimeTrackerGetValueRecord(v339, 0x25u);
    if (v340)
    {
      v341 = v340;
      v342 = HUDUIWindowBeginRow(a6.var0, 40.0);
      v343 = *&v342;
      v345 = v344;
      v347 = v346;
      v349 = v348;
      v703 = 0u;
      v704 = 0u;
      v701 = 0u;
      v702 = 0u;
      v699 = 0u;
      v700 = 0u;
      v697 = 0u;
      v698 = 0u;
      v695 = 0u;
      v696 = 0u;
      v693 = 0u;
      v694 = 0u;
      v691 = 0u;
      v692 = 0u;
      v689 = 0u;
      v690 = 0u;
      v687 = 0u;
      v688 = 0u;
      v685 = 0u;
      v686 = 0u;
      HUDUILineChartInit(&v685);
      HUDUILineChartSet(&v685, 0, v341, -11969794, 0, 0, 3.0, 9999.0, 1.0);
      v350 = *(v341 + 980);
      v709 = HUDUIInvalidString;
      v710 = qword_784F8;
      LODWORD(v351) = v349;
      HUDUIWindowAddLineChart(a6.var0, &v709, &v685, 0.0, v350, v343, v345, v347, v351, v352, v353, "ms", 0xF4240uLL);
    }
  }

  if ((a7 & 0x200) == 0 || *(v13 + 4) != 1)
  {
    goto LABEL_146;
  }

  v354 = HUDGPUTimeTrackerGetGlobalInstance();
  if ((HUDGPUTimeTrackerCanEnableGPUTimeSampling(v354) & 1) == 0)
  {
    v685 = 0uLL;
    *&v686 = 0;
    HUDUIWrappedTemporaryString("Encoder GPU Timeline unavailable", a6.var0, a5, &v685, HIDWORD(v711), 100.0);
    LODWORD(v707) = 0;
    LODWORD(v705) = 0;
    v709 = v685;
    v710 = v686;
    HUDUIWindowGetLabelSize(a6.var0, &v709, &v707, &v705);
    v391 = HUDUIWindowBeginRow(a6.var0, *&v705);
    v709 = v685;
    v710 = v686;
    HUDUIWindowAddLabelInRect(a6.var0, &v709, -16080897, 0, 0, *&v391, v392, v393, v394);
    goto LABEL_146;
  }

  HUDUIWindowEmptyRow(a6.var0, 6.0);
  v355 = HUDGPUTimeTrackerGetGlobalInstance();
  v356 = HUDGPUTimeTrackerGetValueRecord(v355, 0x2Cu);
  if (v356)
  {
    v357 = v356;
    v358 = HUDUIWindowBeginRow(a6.var0, 9999.0);
    v359 = *&v358;
    v361 = v360;
    v363 = v362;
    v365 = v364;
    HUDUIAllocString("Encoder GPU", GlobalOverlay, a5, &v685);
    v660 = *(v357 + 988) * 0.000001;
    HUDUITemporaryStringWithFormat(a6.var0, a5, "%.2fms", &v709, SLOBYTE(v660));
    LODWORD(v366) = v365;
    HUDUIWindowAddLabelKeyValuePair(a6.var0, &v685, -1, &v709, -1, v359, v361, v363, v366);
  }

  for (j = 0; j != 7; ++j)
  {
    v368 = HUDGPUTimeTrackerGetGlobalInstance();
    v369 = dword_54AE8[j];
    v370 = HUDGPUTimeTrackerGetValueRecord(v368, v369);
    if (v370)
    {
      v371 = (v370 + 988);
      if (*(v370 + 988) > 0.0)
      {
        v372 = HUDUIWindowBeginRow(a6.var0, 9999.0);
        v373 = *&v372;
        v375 = v374;
        v377 = v376;
        v379 = v378;
        v380 = HUDGPUTimeTrackerGetRecordName(v369);
        HUDUIAllocString(v380, GlobalOverlay, a5, &v685);
        v661 = *v371 * 0.000001;
        v666 = *v371 / *v673 * 100.0;
        HUDUITemporaryStringWithFormat(a6.var0, a5, "%.2fms | %5.2f%%", &v709, SLOBYTE(v661));
        LODWORD(v381) = v379;
        HUDUIWindowAddLabelKeyValuePair(a6.var0, &v685, -1, &v709, -1, v373, v375, v377, v381);
      }
    }
  }

  GlobalGPUTimeline = HUDMTLOverlayGetGlobalGPUTimeline();
  Current = HUDGPUTimelineGetCurrent(GlobalGPUTimeline);
  v13 = v676;
  if (!Current || (p_os_unfair_lock_opaque = &Current->_os_unfair_lock_opaque, !*&Current[2]._os_unfair_lock_opaque))
  {
LABEL_146:
    if ((a7 & 0x2000) == 0)
    {
      goto LABEL_148;
    }

    goto LABEL_147;
  }

  HUDUIWindowEmptyRow(a6.var0, 6.0);
  HUDUIWindowBeginRow(a6.var0, *(v676 + 12) * p_os_unfair_lock_opaque[1]);
  v386 = v385;
  v387 = *(v676 + 29) / 100.0;
  v388 = *(v676 + 11);
  if (v388 <= 2)
  {
    v388 = 2;
  }

  v389 = v388 - 2;
  if (p_os_unfair_lock_opaque[2] < 2uLL)
  {
    v390 = 16666666;
  }

  else
  {
    v390 = *(p_os_unfair_lock_opaque[3] + 8) - *p_os_unfair_lock_opaque[3];
  }

  if (v389 >= v387)
  {
    v646 = v387;
  }

  else
  {
    v646 = v389;
  }

  HUDGPUTimelineGetCurrentTimeRange(GlobalGPUTimeline);
  v648 = v647 - v390 * v646;
  v649 = v647 - (v390 >> 1);
  v650 = HUDUIWindowBeginRow(a6.var0, v386);
  HUDUIWindowAddTimeline(a6.var0, v648, v649, p_os_unfair_lock_opaque, *&v650, v651, v652, v653);
  v15 = v674;
  if ((a7 & 0x2000) == 0)
  {
    goto LABEL_148;
  }

LABEL_147:
  HUDUIWindowEmptyRow(a6.var0, 6.0);
  v395 = HUDUIWindowBeginRow(a6.var0, 9999.0);
  v396 = *&v395;
  v398 = v397;
  v400 = v399;
  v402 = v401;
  HUDUIAllocString("Disk Bytes Read", GlobalOverlay, a5, &v685);
  HUDUITemporaryFormattedBytes(a6.var0, a5, "", v712[5], 0, &v709);
  LODWORD(v403) = v402;
  HUDUIWindowAddLabelKeyValuePair(a6.var0, &v685, -1, &v709, -1, v396, v398, v400, v403);
  v404 = HUDUIWindowBeginRow(a6.var0, 9999.0);
  v405 = *&v404;
  v407 = v406;
  v409 = v408;
  v411 = v410;
  HUDUIAllocString("Disk Bytes Written", GlobalOverlay, a5, &v685);
  HUDUITemporaryFormattedBytes(a6.var0, a5, "", v712[6], 0, &v709);
  LODWORD(v412) = v411;
  HUDUIWindowAddLabelKeyValuePair(a6.var0, &v685, -1, &v709, -1, v405, v407, v409, v412);
  v413 = HUDUIWindowBeginRow(a6.var0, 9999.0);
  v414 = *&v413;
  v416 = v415;
  v418 = v417;
  v420 = v419;
  HUDUIAllocString("Disk Logical Writes", GlobalOverlay, a5, &v685);
  HUDUITemporaryFormattedBytes(a6.var0, a5, "", v712[7], 0, &v709);
  LODWORD(v421) = v420;
  HUDUIWindowAddLabelKeyValuePair(a6.var0, &v685, -1, &v709, -1, v414, v416, v418, v421);
LABEL_148:
  if ((a7 & 0x100000) != 0)
  {
    v422 = HUDGPUTimeTrackerGetGlobalInstance();
    if (HUDGPUTimeTrackerTopCommandBufferRecordsCount(v422))
    {
      HUDUIWindowEmptyRow(a6.var0, 6.0);
      v423 = HUDUIWindowBeginRow(a6.var0, 9999.0);
      v424 = *&v423;
      v426 = v425;
      v428 = v427;
      v430 = v429;
      HUDUIAllocString("Top Labeled Command Buffers", GlobalOverlay, a5, &v685);
      v709 = HUDUIInvalidString;
      v710 = qword_784F8;
      LODWORD(v431) = v430;
      HUDUIWindowAddLabelKeyValuePair(a6.var0, &v685, -4144960, &v709, -1, v424, v426, v428, v431);
      *&v685 = 0;
      *(&v685 + 1) = &v685;
      v686 = 0x2020000000uLL;
      v432 = HUDGPUTimeTrackerGetGlobalInstance();
      v683[0] = _NSConcreteStackBlock;
      v683[1] = 3221225472;
      v683[2] = __82__HUDUserClientMainWindow_draw_drawableState_fontSize_frame_layout_height_qrCode___block_invoke;
      v683[3] = &unk_691F8;
      v683[4] = &v685;
      v683[5] = a6.var0;
      v683[6] = GlobalOverlay;
      v684 = a5;
      HUDGPUTimeTrackerEnumerateTopCommandBufferRecords(v432, v683);
      _Block_object_dispose(&v685, 8);
    }
  }

  if ((a7 & 0x200000) != 0)
  {
    v433 = HUDGPUTimeTrackerGetGlobalInstance();
    if (HUDGPUTimeTrackerTopEncoderRecordsCount(v433))
    {
      HUDUIWindowEmptyRow(a6.var0, 6.0);
      v434 = HUDUIWindowBeginRow(a6.var0, 9999.0);
      v435 = *&v434;
      v437 = v436;
      v439 = v438;
      v441 = v440;
      HUDUIAllocString("Top Labeled Encoders", GlobalOverlay, a5, &v685);
      v709 = HUDUIInvalidString;
      v710 = qword_784F8;
      LODWORD(v442) = v441;
      HUDUIWindowAddLabelKeyValuePair(a6.var0, &v685, -4144960, &v709, -1, v435, v437, v439, v442);
      *&v685 = 0;
      *(&v685 + 1) = &v685;
      v686 = 0x2020000000uLL;
      v443 = HUDGPUTimeTrackerGetGlobalInstance();
      v681[0] = _NSConcreteStackBlock;
      v681[1] = 3221225472;
      v681[2] = __82__HUDUserClientMainWindow_draw_drawableState_fontSize_frame_layout_height_qrCode___block_invoke_2;
      v681[3] = &unk_69220;
      v681[4] = &v685;
      v681[5] = a6.var0;
      v682 = a5;
      v681[6] = GlobalOverlay;
      v681[7] = v13;
      HUDGPUTimeTrackerEnumerateTopEncoderRecords(v443, v681);
      _Block_object_dispose(&v685, 8);
    }
  }

  v672 = 1;
LABEL_155:
  if (!MTLHudIsInternalInstall())
  {
    goto LABEL_171;
  }

  v444 = +[HUDIOReport instance];
  v445 = v444;
  if ((a7 & 0x400) != 0 && v444)
  {
    [v444 startSampling:(*(v13 + 13) * 1000000000.0)];
    goto LABEL_161;
  }

  if ((a7 & 0x400) != 0)
  {
    v13 = v676;
    if (v444)
    {
LABEL_161:
      HUDUIWindowEmptyRow(a6.var0, 6.0);
      v446 = HUDUIWindowBeginRow(a6.var0, *(v13 + 13));
      v447 = *&v446;
      v449 = v448;
      v451 = v450;
      v453 = v452;
      v703 = 0u;
      v704 = 0u;
      v701 = 0u;
      v702 = 0u;
      v699 = 0u;
      v700 = 0u;
      v697 = 0u;
      v698 = 0u;
      v695 = 0u;
      v696 = 0u;
      v693 = 0u;
      v694 = 0u;
      v691 = 0u;
      v692 = 0u;
      v689 = 0u;
      v690 = 0u;
      v687 = 0u;
      v688 = 0u;
      v685 = 0u;
      v686 = 0u;
      v454 = [v445 records];
      HUDUILineChartSet(&v685, 0, v454, -12463527, 0, "CPU", 3.0, 9999.0, 1.0);
      HUDUILineChartSet(&v685, 1uLL, [v445 records] + 3384, -354547, 0, "GPU", 3.0, 9999.0, 1.0);
      HUDUILineChartSet(&v685, 2uLL, [v445 records] + 5640, -16080897, 0, "ANE", 3.0, 9999.0, 1.0);
      HUDUILineChartSet(&v685, 3uLL, [v445 records] + 4512, -894273, 0, "DRAM", 3.0, 9999.0, 1.0);
      HUDUILineChartSet(&v685, 4uLL, [v445 records] + 6768, -9924948, 0, "Other", 3.0, 9999.0, 1.0);
      v709 = HUDUIInvalidString;
      v710 = qword_784F8;
      LODWORD(v455) = v451;
      HUDUIWindowAddStackedBarGraph(a6.var0, &v709, "W", &v685, v447, v449, v455, v453, v456);
      if ([v445 numGPUPStateRecords])
      {
        v457 = 0;
        v458 = 988;
        do
        {
          v459 = [v445 gpuPStateRecords];
          if (v459)
          {
            v460 = v459;
            if (*&v459[v458] >= 1.0)
            {
              v461 = HUDUIWindowBeginRow(a6.var0, 9999.0);
              v462 = *&v461;
              v464 = v463;
              v466 = v465;
              v468 = v467;
              if (v457)
              {
                v469 = "GPU P%d";
              }

              else
              {
                v469 = "GPU Off";
              }

              HUDUIAllocStringWithFormat(GlobalOverlay, a5, v469, &v685, v457);
              HUDUITemporaryStringWithFormat(a6.var0, a5, "%.2f%%", &v709, *&v460[v458]);
              LODWORD(v470) = v468;
              HUDUIWindowAddLabelKeyValuePair(a6.var0, &v685, -1, &v709, -1, v462, v464, v466, v470);
            }
          }

          ++v457;
          v458 += 1128;
        }

        while ([v445 numGPUPStateRecords] > v457);
      }

      goto LABEL_170;
    }

    v685 = 0uLL;
    *&v686 = 0;
    HUDUIWrappedTemporaryString("Energy report unavailable due to insufficient permission", a6.var0, a5, &v685, HIDWORD(v711), 100.0);
    LODWORD(v707) = 0;
    LODWORD(v705) = 0;
    v709 = v685;
    v710 = v686;
    HUDUIWindowGetLabelSize(a6.var0, &v709, &v707, &v705);
    v629 = HUDUIWindowBeginRow(a6.var0, *&v705);
    v709 = v685;
    v710 = v686;
    HUDUIWindowAddLabelInRect(a6.var0, &v709, -16080897, 0, 0, *&v629, v630, v631, v632);
  }

LABEL_170:

  v15 = v674;
  v13 = v676;
LABEL_171:
  if (a3->isMainLayer)
  {
    v471 = +[_CADeveloperHUDProperties instance];
    v472 = [v471 mainWindow];

    if (*(v13 + 9))
    {
      v473 = 1;
      if ((a7 & 0x80000000) == 0)
      {
        goto LABEL_177;
      }
    }

    else
    {
      v473 = MTLHudIsInternalInstall() ^ 1;
      if ((a7 & 0x80000000) == 0)
      {
LABEL_177:

        goto LABEL_178;
      }
    }

    v678[0] = _NSConcreteStackBlock;
    v678[1] = 3221225472;
    v678[2] = __82__HUDUserClientMainWindow_draw_drawableState_fontSize_frame_layout_height_qrCode___block_invoke_3;
    v678[3] = &unk_69260;
    v680 = v473;
    v678[4] = self;
    v678[5] = a6.var0;
    v678[6] = v13;
    v678[7] = GlobalOverlay;
    v679 = a5;
    v678[8] = a3;
    [v472 requestMetrics:v678];
    goto LABEL_177;
  }

LABEL_178:
  v474 = v672;
  if ((v672 & *(v13 + 3)) == 1 && *(v13 + 7) == 1 && MTLHudIsInternalInstall())
  {
    HUDUIWindowEmptyRow(a6.var0, 6.0);
    v475 = HUDUIWindowBeginRow(a6.var0, 9999.0);
    v476 = *&v475;
    v478 = v477;
    v480 = v479;
    v482 = v481;
    HUDUIAllocString("Insights", GlobalOverlay, a5, &v685);
    v709 = HUDUIInvalidString;
    v710 = qword_784F8;
    LODWORD(v483) = v482;
    HUDUIWindowAddLabelKeyValuePair(a6.var0, &v685, -4144960, &v709, -1, v476, v478, v480, v483);
    for (k = 0; k != 4; ++k)
    {
      v485 = HUDGPUTimeTrackerGetGlobalInstance();
      v486 = dword_54B10[k];
      v487 = HUDGPUTimeTrackerGetValueRecord(v485, v486);
      if (v487)
      {
        v488 = v487;
        v489 = HUDUIWindowBeginRow(a6.var0, 9999.0);
        v490 = *&v489;
        v492 = v491;
        v494 = v493;
        v496 = v495;
        v497 = HUDGPUTimeTrackerGetRecordName(v486);
        HUDUIAllocString(v497, GlobalOverlay, a5, &v685);
        HUDUITemporaryStringWithFormat(a6.var0, a5, "%d", &v709, *(v488 + 1028));
        LODWORD(v498) = v496;
        HUDUIWindowAddLabelKeyValuePair(a6.var0, &v685, -1, &v709, -1, v490, v492, v494, v498);
      }
    }

    v499 = +[_CADeveloperHUDProperties instance];
    v500 = [v499 mainWindow];

    v501 = 0;
    v502 = 1;
    do
    {
      v503 = v502;
      v504 = [v500 getMetric:*(&draw_drawableState_fontSize_frame_layout_height_qrCode__gptkInsightMetrics + v501)];
      if (v504)
      {
        v505 = HUDUIWindowBeginRow(a6.var0, 9999.0);
        v506 = *&v505;
        v508 = v507;
        v510 = v509;
        v512 = v511;
        v513 = [v504 displayName];
        v514 = [v504 intValue];
        HUDUITemporaryStringWithFormat(a6.var0, a5, "%d", &v709, v514);
        LODWORD(v515) = v512;
        HUDUIWindowAddLabelKeyValuePair(a6.var0, &v685, -1, &v709, -1, v506, v508, v510, v515);
      }

      v502 = 0;
      v501 = 1;
    }

    while ((v503 & 1) != 0);

    v15 = v674;
    v474 = v672;
  }

  if ((v474 & v13[5]) == 1 && MTLHudIsInternalInstall())
  {
    HUDUIWindowEmptyRow(a6.var0, 6.0);
    v516 = HUDUIWindowBeginRow(a6.var0, 9999.0);
    v517 = *&v516;
    v519 = v518;
    v521 = v520;
    v523 = v522;
    HUDUIAllocString("HUD", GlobalOverlay, a5, &v685);
    v709 = HUDUIInvalidString;
    v710 = qword_784F8;
    LODWORD(v524) = v523;
    HUDUIWindowAddLabelKeyValuePair(a6.var0, &v685, -4144960, &v709, -1, v517, v519, v521, v524);
    v525 = 0;
    v526 = 1;
    do
    {
      v527 = v526;
      v528 = HUDGPUTimeTrackerGetGlobalInstance();
      v529 = dword_54AA8[v525];
      v530 = HUDGPUTimeTrackerGetValueRecord(v528, v529);
      if (v530)
      {
        v531 = v530;
        v532 = HUDUIWindowBeginRow(a6.var0, 9999.0);
        v533 = *&v532;
        v535 = v534;
        v537 = v536;
        v539 = v538;
        v540 = HUDGPUTimeTrackerGetRecordName(v529);
        HUDUIAllocString(v540, GlobalOverlay, a5, &v685);
        HUDUITemporaryFormattedTime(a6.var0, a5, "", *(v531 + 988), 3, &v709);
        LODWORD(v541) = v539;
        HUDUIWindowAddLabelKeyValuePair(a6.var0, &v685, -1, &v709, -1, v533, v535, v537, v541);
      }

      v526 = 0;
      v525 = 1;
    }

    while ((v527 & 1) != 0);
    v542 = +[HUDMTLLayerTracking mainTracker];
    v543 = [v542 view];
    v544 = [v543 description];

    if (v544)
    {
      v545 = HUDUIWindowBeginRow(a6.var0, 9999.0);
      v546 = *&v545;
      v548 = v547;
      v550 = v549;
      v552 = v551;
      HUDUIAllocString("View", GlobalOverlay, a5, &v685);
      HUDUIAllocString([v544 UTF8String], GlobalOverlay, a5, &v709);
      LODWORD(v553) = v552;
      HUDUIWindowAddLabelKeyValuePair(a6.var0, &v685, -1, &v709, -1, v546, v548, v550, v553);
    }

    v554 = HUDUIWindowBeginRow(a6.var0, 9999.0);
    v555 = *&v554;
    v557 = v556;
    v559 = v558;
    v561 = v560;
    v562 = +[HUDMTLLayerTracking mainTracker];
    [v562 safeAreaInsets];
    v564 = v563;

    HUDUIAllocString("Safe Inset XY", GlobalOverlay, a5, &v685);
    HUDUITemporaryStringWithFormat(a6.var0, a5, "%dx%d", &v709, v564);
    LODWORD(v565) = v561;
    HUDUIWindowAddLabelKeyValuePair(a6.var0, &v685, -1, &v709, -1, v555, v557, v559, v565);
    v566 = HUDUIWindowBeginRow(a6.var0, 9999.0);
    v567 = *&v566;
    v569 = v568;
    v571 = v570;
    v573 = v572;
    HUDUIAllocString("HUD WH", GlobalOverlay, a5, &v685);
    *&v564 = HIDWORD(v711);
    LODWORD(v562) = (HUDUIFrameGetScale(a6.var0) * *&v564);
    HUDUIFrameGetScale(a6.var0);
    v668 = *(v13 + 11);
    HUDUITemporaryStringWithFormat(a6.var0, a5, "%dx%dx%.2f", &v709, v562);
    LODWORD(v574) = v573;
    HUDUIWindowAddLabelKeyValuePair(a6.var0, &v685, -1, &v709, -1, v567, v569, v571, v574);
    v575 = HUDUIWindowBeginRow(a6.var0, 9999.0);
    v576 = *&v575;
    v578 = v577;
    v580 = v579;
    v582 = v581;
    HUDUIAllocString("Pixel Format", GlobalOverlay, a5, &v685);
    v583 = HUDMTLPixelFormatName(a3->pixelFormat);
    wantsExtendedDynamicRangeContent = a3->wantsExtendedDynamicRangeContent;
    HUDUITemporaryStringWithFormat(a6.var0, a5, "%s:%d", &v709, v583);
    LODWORD(v584) = v582;
    HUDUIWindowAddLabelKeyValuePair(a6.var0, &v685, -1, &v709, -1, v576, v578, v580, v584);
    v585 = HUDGetInternalPerfMetrics();
    v15 = v674;
    if (v585)
    {
      v586 = v585;
      v587 = (v585 + 988);
      if (*(v585 + 2124) > 0.0001)
      {
        v588 = HUDUIWindowBeginRow(a6.var0, 9999.0);
        v589 = *&v588;
        v591 = v590;
        v593 = v592;
        v595 = v594;
        HUDUIAllocString("HUD Render CPU", GlobalOverlay, a5, &v685);
        HUDUITemporaryFormattedTime(a6.var0, a5, "", v587[142], 3, &v709);
        LODWORD(v596) = v595;
        HUDUIWindowAddLabelKeyValuePair(a6.var0, &v685, -1, &v709, -1, v589, v591, v593, v596);
      }

      if (v587[284] > 0.0001)
      {
        v597 = HUDUIWindowBeginRow(a6.var0, 9999.0);
        v598 = *&v597;
        v600 = v599;
        v602 = v601;
        v604 = v603;
        HUDUIAllocString("HUD Tracker CPU", GlobalOverlay, a5, &v685);
        HUDUITemporaryFormattedTime(a6.var0, a5, "", v587[284], 3, &v709);
        LODWORD(v605) = v604;
        HUDUIWindowAddLabelKeyValuePair(a6.var0, &v685, -1, &v709, -1, v598, v600, v602, v605);
      }

      if (*v587 > 0.0001)
      {
        v606 = HUDUIWindowBeginRow(a6.var0, 9999.0);
        v607 = *&v606;
        v609 = v608;
        v611 = v610;
        v613 = v612;
        HUDUIAllocString("HUD Present CPU", GlobalOverlay, a5, &v685);
        HUDUITemporaryFormattedTime(a6.var0, a5, "", *v587, 3, &v709);
        LODWORD(v614) = v613;
        HUDUIWindowAddLabelKeyValuePair(a6.var0, &v685, -1, &v709, -1, v607, v609, v611, v614);
      }

      if (*(v586 + 5532) > 0.0001)
      {
        v615 = HUDUIWindowBeginRow(a6.var0, 9999.0);
        v616 = *&v615;
        v618 = v617;
        v620 = v619;
        v622 = v621;
        HUDUIAllocString("HUD Logging CPU", GlobalOverlay, a5, &v685);
        HUDUITemporaryFormattedTime(a6.var0, a5, "", *(v586 + 5532), 3, &v709);
        LODWORD(v623) = v622;
        HUDUIWindowAddLabelKeyValuePair(a6.var0, &v685, -1, &v709, -1, v616, v618, v620, v623);
      }
    }
  }

  if ((v675 & 0x4000) != 0)
  {
    HUDUIWindowEmptyRow(a6.var0, 6.0);
    LODWORD(v685) = 0;
    LODWORD(v709) = 0;
    HUDUIFrameGetSizeInPoints(a6.var0, &v685, &v709);
    v624 = v685 - 12;
    if ((v685 - 12) >= 0x60)
    {
      v624 = 96;
    }

    v625 = v624;
    v626 = HUDUIWindowBeginRow(a6.var0, v624);
    HUDUIWindowSetQRCode(a6.var0, v670, *&v626, v627, v625, v628);
  }

  HUDUIWindowEmptyRow(a6.var0, 6.0);
  *a8 = HUDUIWindowCurrentHeight(a6.var0);
  HUDUIFrameEndWindow(a6.var0);
}

uint64_t __82__HUDUserClientMainWindow_draw_drawableState_fontSize_frame_layout_height_qrCode___block_invoke(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(*(*(result + 32) + 8) + 24) <= 2uLL)
  {
    v35 = v11;
    v36 = v10;
    v37 = v9;
    v38 = v8;
    v39 = v7;
    v40 = v6;
    v41 = v4;
    v42 = v5;
    v12 = result;
    v13 = (a4 + 988);
    _HUDTopObjectTempLabel(a2);
    v14 = HUDUIWindowBeginRow(*(v12 + 40), 9999.0);
    v15 = *&v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    HUDUIAllocStringWithFormat(*(v12 + 48), *(v12 + 56), "%s CPU", &v34, &_HUDTopObjectTempLabel_buf);
    HUDUITemporaryFormattedTime(*(v12 + 40), *(v12 + 56), "", *v13, 0, &v33);
    LODWORD(v22) = v21;
    HUDUIWindowAddLabelKeyValuePair(*(v12 + 40), &v34, -1, &v33, -1, v15, v17, v19, v22);
    v23 = HUDUIWindowBeginRow(*(v12 + 40), 9999.0);
    v24 = *&v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v31 = strlen(&_HUDTopObjectTempLabel_buf);
    HUDUIAllocStringWithFormat(*(v12 + 48), *(v12 + 56), "%*s GPU", &v34, v31);
    HUDUITemporaryFormattedTime(*(v12 + 40), *(v12 + 56), "", v13[141], 0, &v33);
    LODWORD(v32) = v30;
    result = HUDUIWindowAddLabelKeyValuePair(*(v12 + 40), &v34, -1, &v33, -1, v24, v26, v28, v32);
    ++*(*(*(v12 + 32) + 8) + 24);
  }

  return result;
}

uint64_t __82__HUDUserClientMainWindow_draw_drawableState_fontSize_frame_layout_height_qrCode___block_invoke_2(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(*(*(result + 32) + 8) + 24) <= 2uLL)
  {
    v35 = v11;
    v36 = v10;
    v37 = v9;
    v38 = v8;
    v39 = v7;
    v40 = v6;
    v41 = v4;
    v42 = v5;
    v12 = result;
    v13 = (a4 + 988);
    _HUDTopObjectTempLabel(a2);
    v14 = HUDUIWindowBeginRow(*(v12 + 40), 9999.0);
    v15 = *&v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    HUDUIAllocStringWithFormat(*(v12 + 48), *(v12 + 64), "%s CPU", &v34, &_HUDTopObjectTempLabel_buf);
    HUDUITemporaryFormattedTime(*(v12 + 40), *(v12 + 64), "", *v13, 0, &v33);
    LODWORD(v22) = v21;
    result = HUDUIWindowAddLabelKeyValuePair(*(v12 + 40), &v34, -1, &v33, -1, v15, v17, v19, v22);
    if (*(*(v12 + 56) + 4) == 1)
    {
      v23 = HUDUIWindowBeginRow(*(v12 + 40), 9999.0);
      v24 = *&v23;
      v26 = v25;
      v28 = v27;
      v30 = v29;
      v31 = strlen(&_HUDTopObjectTempLabel_buf);
      HUDUIAllocStringWithFormat(*(v12 + 48), *(v12 + 64), "%*s GPU", &v34, v31);
      HUDUITemporaryFormattedTime(*(v12 + 40), *(v12 + 64), "", v13[141], 0, &v33);
      LODWORD(v32) = v30;
      result = HUDUIWindowAddLabelKeyValuePair(*(v12 + 40), &v34, -1, &v33, -1, v24, v26, v28, v32);
    }

    ++*(*(*(v12 + 32) + 8) + 24);
  }

  return result;
}

void __82__HUDUserClientMainWindow_draw_drawableState_fontSize_frame_layout_height_qrCode___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = HUDCurrentTimeInNs();
  v5 = 0;
  v6 = &IOReportChannelGetChannelID_ptr;
  v128 = v4;
  v129 = v3;
  do
  {
    v7 = [v6[293] numberWithUnsignedInt:kHUDColorAttributeName_block_invoke_cats[v5]];
    v8 = [v3 objectForKeyedSubscript:v7];

    if ([v8 enabled])
    {
      v9 = [v8 metrics];
      v10 = [v9 count];

      if (v10)
      {
        HUDUIWindowEmptyRow(*(a1 + 40), 6.0);
        v11 = HUDUIWindowBeginRow(*(a1 + 40), 9999.0);
        v12 = *&v11;
        v14 = v13;
        v16 = v15;
        v18 = v17;
        v130 = kHUDColorAttributeName_block_invoke_catNames[v5];
        v131 = 0uLL;
        v132 = 0;
        memset(v139, 0, sizeof(v139));
        v19 = [v8 metrics];
        v20 = [v19 count];

        if (v20)
        {
          v21 = 0;
          v22 = 0;
          do
          {
            v23 = [v8 metrics];
            v24 = [v23 objectAtIndexedSubscript:v21];

            if ([v24 enabled])
            {
              v25 = [v24 descriptor];
              if (v25[4] != 2)
              {
                v26 = v25[6];
                if ((v26 & 2) == 0 || (*(a1 + 76) & 1) == 0)
                {
                  if ((v26 & 8) != 0)
                  {
                    [v24 setTimedOut:{(*(*(a1 + 48) + 136) * 1000000000.0) < (v4 - objc_msgSend(v24, "lastUpdateTime"))}];
                  }

                  if (([v24 timedOut] & 1) == 0)
                  {
                    *(v139 + v21) = 1;
                    ++v22;
                  }
                }
              }
            }

            ++v21;
            v27 = [v8 metrics];
            v28 = [v27 count];

            v29 = 64;
            if (v28 < 0x40)
            {
              v29 = v28;
            }
          }

          while (v29 > v21);
          if (v22)
          {
            if (HUDMTLOverlayIsInGPTK() && !*(*(a1 + 32) + 56))
            {
              v30 = [NSBundle bundleWithIdentifier:@"com.apple.D3DMetal"];
              v31 = [v30 infoDictionary];
              v32 = [v31 objectForKeyedSubscript:@"CFBundleVersion"];
              v33 = *(a1 + 32);
              v34 = *(v33 + 56);
              *(v33 + 56) = v32;
            }

            if (v5 == 1 && *(*(a1 + 32) + 56))
            {
              v35 = *(a1 + 72);
              v36 = [(__CFString *)v130 UTF8String];
              [*(*(a1 + 32) + 56) UTF8String];
              HUDUIAllocStringWithFormat(*(a1 + 56), v35, "%s %s", &v131, v36);
            }

            else
            {
              HUDUIAllocString([(__CFString *)v130 UTF8String], *(a1 + 56), *(a1 + 72), &v137);
              v131 = v137;
              v132 = v138;
            }

            v38 = *(a1 + 40);
            v137 = v131;
            v138 = v132;
            v135 = HUDUIInvalidString;
            v136 = qword_784F8;
            LODWORD(v37) = v18;
            HUDUIWindowAddLabelKeyValuePair(v38, &v137, -4144960, &v135, -1, v12, v14, v16, v37);
            v39 = [v8 metrics];
            v40 = [v39 count];

            if (v40)
            {
              v41 = 0;
              while (!*(v139 + v41))
              {
LABEL_66:
                ++v41;
                v101 = [v8 metrics];
                v102 = [v101 count];

                v103 = 64;
                if (v102 < 0x40)
                {
                  v103 = v102;
                }

                if (v103 <= v41)
                {
                  goto LABEL_69;
                }
              }

              v42 = [v8 metrics];
              v43 = [v42 objectAtIndexedSubscript:v41];

              v44 = *(a1 + 72);
              v45 = *(a1 + 48);
              v46 = *(a1 + 56);
              v47 = *(a1 + 40);
              v48 = v43;
              if (!*([v48 descriptor] + 14) && !MTLHudIsInternalInstall())
              {
                goto LABEL_65;
              }

              v137 = HUDUIInvalidString;
              v138 = qword_784F8;
              v49 = [v48 metricType];
              if (v49 == 2)
              {
                v54 = [v48 stringValue];
                HUDUITemporaryStringn(v47, v44, [v54 UTF8String], objc_msgSend(v54, "length"), &v137);

                goto LABEL_46;
              }

              if (v49 != 1)
              {
                if (v49)
                {
                  goto LABEL_46;
                }

                if (*([v48 record] + 988) != 0.0 || *(v45 + 6) == 1)
                {
                  if ((*([v48 descriptor] + 48) & 4) != 0)
                  {
                    v51 = *([v48 record] + 988);
                  }

                  else
                  {
                    LOBYTE(v51) = [v48 intValue];
                  }

                  [*(objc_msgSend(v48 "descriptor") + 2)];
                  v50 = HUDUITemporaryStringWithFormat(v47, v44, "%d%s", &v137, v51);
                  goto LABEL_46;
                }

LABEL_65:

                goto LABEL_66;
              }

              if (*([v48 record] + 988) == 0.0 && *(v45 + 6) != 1)
              {
                goto LABEL_65;
              }

              if ((*([v48 descriptor] + 48) & 4) != 0)
              {
                v53 = *([v48 record] + 988);
              }

              else
              {
                [v48 floatValue];
                LOBYTE(v53) = v52;
              }

              [*(objc_msgSend(v48 "descriptor") + 2)];
              v50 = HUDUITemporaryStringWithFormat(v47, v44, "%.2f%s", &v137, v53);
LABEL_46:
              v55 = *([v48 descriptor] + 14);
              if (v55 > 2047)
              {
                if (v55 != 2048)
                {
                  if (v55 == 0x2000)
                  {
                    goto LABEL_57;
                  }

                  if (v55 != 4096)
                  {
                    goto LABEL_65;
                  }
                }
              }

              else if ((v55 - 1) >= 2)
              {
                if (v55 != 3)
                {
                  goto LABEL_65;
                }

LABEL_57:
                if ([v48 metricType] && objc_msgSend(v48, "metricType") != 1)
                {
                  v90 = HUDUIWindowBeginRow(v47, 9999.0);
                  v91 = *&v90;
                  v93 = v92;
                  v95 = v94;
                  v97 = v96;
                  v64 = [v48 displayName];
                  v98 = *([v48 descriptor] + 6);
                  v99 = *([v48 descriptor] + 7);
                  v133 = v137;
                  v134 = v138;
                  LODWORD(v100) = v97;
                  HUDUIWindowAddLabelKeyValuePair(v47, &v135, v98, &v133, v99, v91, v93, v95, v100);
                }

                else
                {
                  v75 = HUDUIWindowBeginRow(v47, 9999.0);
                  v76 = *&v75;
                  v78 = v77;
                  v80 = v79;
                  v82 = v81;
                  v64 = [v48 displayName];
                  if ((*([v48 descriptor] + 48) & 4) != 0)
                  {
                    v83 = *([v48 record] + 988);
                  }

                  else
                  {
                    [v48 floatValue];
                  }

                  v84 = v83;
                  [v48 minValueForLastSampleCountSamples];
                  v86 = v85;
                  [v48 maxValueForLastSampleCountSamples];
                  *&v88 = v87;
                  *&v89 = v86;
                  HUDUIWindowAddStats(v47, v44, &v135, v84, v89, v88, v76, v78, v80, v82, "", -1);
                }

LABEL_64:

                goto LABEL_65;
              }

              v56 = HUDUIWindowBeginRow(v47, 9999.0);
              v57 = *&v56;
              v59 = v58;
              v61 = v60;
              v63 = v62;
              v64 = [v48 displayName];
              v65 = *([v48 descriptor] + 6);
              v66 = *([v48 descriptor] + 7);
              v133 = v137;
              v134 = v138;
              LODWORD(v67) = v63;
              HUDUIWindowAddLabelKeyValuePair(v47, &v135, v65, &v133, v66, v57, v59, v61, v67);
              if (*([v48 descriptor] + 14) == 2 && (!objc_msgSend(v48, "metricType") || objc_msgSend(v48, "metricType") == 1))
              {
                v68 = [v48 record];
                v69 = HUDUIWindowBeginRow(v47, *([v48 descriptor] + 16));
                LODWORD(v70) = LODWORD(v69);
                HUDUIWindowAddGraph(v47, v68, 0x78u, *(v68 + 240), -354547, 0, 0, 0.0, *(v68 + 980), 2.0, 9999.0, 1.0, v70, *(v68 + 980), v74, *&v70, v71, v72, v73);
              }

              goto LABEL_64;
            }

LABEL_69:
            if (!v5 && *(*(a1 + 48) + 12) == 1)
            {
              v104 = HUDUIWindowBeginRow(*(a1 + 40), 9999.0);
              v105 = *&v104;
              v107 = v106;
              v109 = v108;
              v111 = v110;
              HUDUIAllocString("Render FPS", *(a1 + 56), *(a1 + 72), &v137);
              v127 = 1000000000.0 / *(*(a1 + 64) + 5628);
              HUDUITemporaryStringWithFormat(*(a1 + 40), *(a1 + 72), "%.2f", &v135, SLOBYTE(v127));
              LODWORD(v112) = v111;
              HUDUIWindowAddLabelKeyValuePair(*(a1 + 40), &v137, -1, &v135, -1, v105, v107, v109, v112);
            }

            v4 = v128;
            v3 = v129;
            if (MTLHudIsInternalInstall())
            {
              if (!v5 && (*(a1 + 76) & 1) == 0 && *(*(a1 + 48) + 11) == 1)
              {
                GlobalInstance = HUDGPUTimeTrackerGetGlobalInstance();
                ValueRecord = HUDGPUTimeTrackerGetValueRecord(GlobalInstance, 0x30u);
                if (ValueRecord)
                {
                  v115 = ValueRecord;
                  v116 = HUDUIWindowBeginRow(*(a1 + 40), 9999.0);
                  v117 = *&v116;
                  v119 = v118;
                  v121 = v120;
                  v123 = v122;
                  v124 = *(a1 + 72);
                  RecordName = HUDGPUTimeTrackerGetRecordName(48);
                  HUDUIAllocStringWithFormat(*(a1 + 56), v124, "* %s", &v137, RecordName);
                  HUDUITemporaryFormattedTime(*(a1 + 40), *(a1 + 72), "", *(v115 + 988), 3, &v135);
                  LODWORD(v126) = v123;
                  HUDUIWindowAddLabelKeyValuePair(*(a1 + 40), &v137, -1, &v135, -1, v117, v119, v121, v126);
                }
              }
            }
          }
        }

        v6 = &IOReportChannelGetChannelID_ptr;
      }
    }

    ++v5;
  }

  while (v5 != 3);
}

@end
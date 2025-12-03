@interface KNAnimationUtils
+ (BOOL)allowBlendingMotionBackgroundsDefaultValue;
+ (BOOL)isCustomEffectTimingCurveEditingEnabled;
+ (BOOL)isDisplayLoggingEnabled;
+ (BOOL)isMotionBlurCapableWithAnimationContext:(id)context;
+ (BOOL)isRandomNumberSeedInspectionEnabled;
+ (BOOL)shouldForceDisplayPreferredMode;
+ (BOOL)willPluginClassAllowBlendingMotionBackgrounds:(Class)backgrounds;
+ (CGRect)recommendedLayerBoundsForNaturalPlaybackSize:(CGSize)size inContainerWithBounds:(CGRect)bounds contentsScale:(double)scale isExternalDisplay:(BOOL)display;
+ (id)CAAccelerationFromSFXActionAcceleration:(unint64_t)acceleration;
+ (id)customAttributesArrayWithDeliveryOptions:(id)options;
+ (id)customAttributesArrayWithJiggleIntensityOptions:(id)options;
+ (id)customAttributesArrayWithTextDeliveryOptions:(id)options;
+ (id)timingsArrayWithDirection:(unint64_t)direction duration:(double)duration count:(unint64_t)count chunkDuration:(double)chunkDuration randomness:(double)randomness randomGenerator:(id)generator;
+ (id)videoControllerSignpostLog;
+ (unint64_t)directionFromCustomAttributesDeliveryOption:(unint64_t)option;
+ (unint64_t)randomBasicDirection;
+ (unint64_t)randomDirection;
+ (void)getRecommendedPosition:(CGPoint *)position andTransform:(CATransform3D *)transform toFitLayer:(id)layer inContainerWithBounds:(CGRect)bounds contentsScale:(double)scale;
+ (void)initialize;
+ (void)updateDefaultsValues;
@end

@implementation KNAnimationUtils

+ (void)updateDefaultsValues
{
  v3 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], a2, v2);
  v5 = objc_msgSend_valueForKey_(v3, v4, @"EnableFPSLogging");
  byte_280A3C038 = objc_msgSend_BOOLValue(v5, v6, v7);

  v10 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v8, v9);
  v12 = objc_msgSend_valueForKey_(v10, v11, @"BadgeMetalRendering");
  byte_280A3C039 = objc_msgSend_BOOLValue(v12, v13, v14);

  v17 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v15, v16);
  v19 = objc_msgSend_valueForKey_(v17, v18, @"EnableLocalRendering");
  byte_280A3C03A = objc_msgSend_BOOLValue(v19, v20, v21);

  v24 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v22, v23);
  v26 = objc_msgSend_valueForKey_(v24, v25, @"DisableDiscreteGPUAquisition");
  byte_280A3C03B = objc_msgSend_BOOLValue(v26, v27, v28);

  v31 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v29, v30);
  v33 = objc_msgSend_valueForKey_(v31, v32, @"DisableViewScaling");
  byte_280A3C03C = objc_msgSend_BOOLValue(v33, v34, v35);

  v38 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v36, v37);
  v40 = objc_msgSend_valueForKey_(v38, v39, @"EnableAnimationPluginDevelopment");
  byte_280A3C03D = objc_msgSend_BOOLValue(v40, v41, v42);

  v45 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v43, v44);
  v47 = objc_msgSend_valueForKey_(v45, v46, @"DisableTexturePrecaching");
  byte_280A3C03E = objc_msgSend_BOOLValue(v47, v48, v49);

  v52 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v50, v51);
  v54 = objc_msgSend_valueForKey_(v52, v53, @"KNAnimationMotionBlurEnabled");
  byte_280A3C03F = objc_msgSend_BOOLValue(v54, v55, v56);

  v59 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v57, v58);
  v61 = objc_msgSend_valueForKey_(v59, v60, @"ForceMotionBlurOn");
  byte_280A3C040 = objc_msgSend_BOOLValue(v61, v62, v63);

  v66 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v64, v65);
  v68 = objc_msgSend_valueForKey_(v66, v67, @"ForceMotionBlurOff");
  byte_280A3C041 = objc_msgSend_BOOLValue(v68, v69, v70);

  v73 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v71, v72);
  v75 = objc_msgSend_valueForKey_(v73, v74, @"EnableMotionBlurLogging");
  byte_280A3C042 = objc_msgSend_BOOLValue(v75, v76, v77);

  if (byte_280A3C040 != byte_280A3C043)
  {
    byte_280A3C043 = byte_280A3C040;
    if (byte_280A3C042 == 1)
    {
      if (byte_280A3C040)
      {
        v80 = @"ENABLED";
      }

      else
      {
        v80 = @"DISABLED";
      }

      NSLog(&cfstr_Is.isa, @"ForceMotionBlurOn", v80);
    }
  }

  if (byte_280A3C041 != byte_280A3C044)
  {
    byte_280A3C044 = byte_280A3C041;
    if (byte_280A3C042 == 1)
    {
      if (byte_280A3C041)
      {
        v81 = @"ENABLED";
      }

      else
      {
        v81 = @"DISABLED";
      }

      NSLog(&cfstr_Is.isa, @"ForceMotionBlurOff", v81);
    }
  }

  if (byte_280A3C040 == 1 && byte_280A3C041 == 1 && *MEMORY[0x277D81408] != -1)
  {
    sub_275E5B4A8();
  }

  v82 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v78, v79);
  byte_280A3C045 = objc_msgSend_BOOLForKey_(v82, v83, @"RandomNumberSeedAlwaysRandom");

  v86 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v84, v85);
  byte_280A3C046 = objc_msgSend_BOOLForKey_(v86, v87, @"RandomNumberSeedAlwaysZero");

  v90 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v88, v89);
  v92 = objc_msgSend_valueForKey_(v90, v91, @"EnableResponsivenessLogging");
  byte_280A3C047 = objc_msgSend_BOOLValue(v92, v93, v94);

  v97 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v95, v96);
  v99 = objc_msgSend_valueForKey_(v97, v98, @"EnableFullSpeedDynamicBackgrounds");
  byte_280A3C048 = objc_msgSend_BOOLValue(v99, v100, v101);

  v108 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v102, v103);
  v105 = objc_msgSend_valueForKey_(v108, v104, @"EnableDynamicBackgroundMultisampling");
  byte_280A3C049 = objc_msgSend_BOOLValue(v105, v106, v107);
}

+ (void)initialize
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_275D99DB8;
  block[3] = &unk_27A698760;
  block[4] = self;
  if (qword_280A3C050 != -1)
  {
    dispatch_once(&qword_280A3C050, block);
  }
}

+ (id)timingsArrayWithDirection:(unint64_t)direction duration:(double)duration count:(unint64_t)count chunkDuration:(double)chunkDuration randomness:(double)randomness randomGenerator:(id)generator
{
  v138 = *MEMORY[0x277D85DE8];
  generatorCopy = generator;
  if (direction - 111 >= 5)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "+[KNAnimationUtils timingsArrayWithDirection:duration:count:chunkDuration:randomness:randomGenerator:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimationUtils.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v19, v16, v18, 244, 0, "Wrong direction! Expected Character direction, not %tu", direction);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21);
  }

  if (chunkDuration < 0.0 || chunkDuration > 1.0)
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "+[KNAnimationUtils timingsArrayWithDirection:duration:count:chunkDuration:randomness:randomGenerator:]");
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimationUtils.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v27, v24, v26, 246, 0, "Chunk duration must be between [0,1]!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29);
  }

  if (!generatorCopy)
  {
    v30 = MEMORY[0x277D81150];
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "+[KNAnimationUtils timingsArrayWithDirection:duration:count:chunkDuration:randomness:randomGenerator:]");
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimationUtils.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v34, v31, v33, 247, 0, "invalid nil value for '%{public}s'", "randGen");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36);
  }

  v37 = count - 1;
  if (count == 1)
  {
    durationCopy = duration;
  }

  else
  {
    durationCopy = duration * chunkDuration;
  }

  v41 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v13, count);
  if (direction - 111 < 2)
  {
    if (count)
    {
      v58 = 0;
      v59 = (duration - durationCopy) / count;
      countCopy = count;
      do
      {
        v61 = v59 * v58;
        if (randomness == 0.0)
        {
          objc_msgSend_valueWithCGPoint_(MEMORY[0x277CCAE60], v39, v40, v61, durationCopy);
        }

        else
        {
          if (v58 && countCopy != 1)
          {
            objc_msgSend_doubleBetween::(generatorCopy, v39, v40, -0.5, 0.5);
            v61 = v61 + v59 * randomness * v62;
          }

          objc_msgSend_doubleBetween::(generatorCopy, v39, v40, -0.5, 0.5);
          v66 = durationCopy + durationCopy * randomness * v65;
          if (v66 >= duration)
          {
            durationCopy2 = duration;
          }

          else
          {
            durationCopy2 = v66;
          }

          if (v61 >= 0.0)
          {
            v68 = v61;
          }

          else
          {
            v68 = 0.0;
          }

          if (v68 >= duration - durationCopy2)
          {
            objc_msgSend_valueWithCGPoint_(MEMORY[0x277CCAE60], v63, v64, duration - durationCopy2, durationCopy2);
          }

          else
          {
            objc_msgSend_valueWithCGPoint_(MEMORY[0x277CCAE60], v63, v64, v68, durationCopy2);
          }
        }
        v69 = ;
        objc_msgSend_addObject_(v41, v70, v69);

        ++v58;
        --countCopy;
      }

      while (countCopy);
    }
  }

  else if (direction - 114 >= 2)
  {
    if (direction != 113)
    {
      v88 = MEMORY[0x277D81150];
      v89 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "+[KNAnimationUtils timingsArrayWithDirection:duration:count:chunkDuration:randomness:randomGenerator:]");
      v91 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v90, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimationUtils.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v88, v92, v89, v91, 342, 0, "KNAnimationUtils: We should never have gotten here! Direction: %tu", direction);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v93, v94);
      v95 = MEMORY[0x277CBEBF8];
      goto LABEL_93;
    }

    v72 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v39, count);
    if (count)
    {
      v73 = 0;
      do
      {
        v74 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v71, v73);
        objc_msgSend_addObject_(v72, v75, v74);

        ++v73;
      }

      while (count != v73);
    }

    v78 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v71, count);
    while (objc_msgSend_count(v72, v76, v77))
    {
      v81 = objc_msgSend_count(v72, v79, v80);
      v83 = objc_msgSend_intBetween::(generatorCopy, v82, 0, v81 - 1);
      v85 = objc_msgSend_objectAtIndex_(v72, v84, v83);
      objc_msgSend_addObject_(v78, v86, v85);

      objc_msgSend_removeObjectAtIndex_(v72, v87, v83);
    }

    if (count)
    {
      v96 = 0;
      v97 = (duration - durationCopy) / count;
      do
      {
        v98 = objc_msgSend_objectAtIndex_(v78, v79, v96);
        v101 = objc_msgSend_intValue(v98, v99, v100);

        v104 = v97 * v101;
        if (randomness == 0.0)
        {
          objc_msgSend_valueWithCGPoint_(MEMORY[0x277CCAE60], v102, v103, v104, durationCopy);
        }

        else
        {
          objc_msgSend_doubleBetween::(generatorCopy, v102, v103, -0.5, 0.5);
          v106 = v104 + v97 * randomness * v105;
          objc_msgSend_doubleBetween::(generatorCopy, v107, v108, -0.5, 0.5);
          v112 = durationCopy + durationCopy * randomness * v111;
          if (v112 >= duration)
          {
            durationCopy3 = duration;
          }

          else
          {
            durationCopy3 = v112;
          }

          if (v106 >= 0.0)
          {
            v114 = v106;
          }

          else
          {
            v114 = 0.0;
          }

          if (v114 >= duration - durationCopy3)
          {
            objc_msgSend_valueWithCGPoint_(MEMORY[0x277CCAE60], v109, v110, duration - durationCopy3, durationCopy3);
          }

          else
          {
            objc_msgSend_valueWithCGPoint_(MEMORY[0x277CCAE60], v109, v110, v114, durationCopy3);
          }
        }
        v115 = ;
        objc_msgSend_addObject_(v41, v116, v115);

        ++v96;
      }

      while (count != v96);
    }
  }

  else
  {
    if (count >> 1 <= 1)
    {
      v42 = 1;
    }

    else
    {
      v42 = count >> 1;
    }

    if (count)
    {
      v43 = 0;
      v44 = (duration - durationCopy) / v42;
      v45 = vcvtd_n_f64_u64(count, 1uLL);
      do
      {
        if (v45 <= v43)
        {
          v46 = v37;
        }

        else
        {
          v46 = v43;
        }

        v47 = v44 * v46;
        if (randomness == 0.0)
        {
          objc_msgSend_valueWithCGPoint_(MEMORY[0x277CCAE60], v39, v40, v47, durationCopy);
        }

        else
        {
          if (v46)
          {
            v48 = v46 == count >> 1;
          }

          else
          {
            v48 = 1;
          }

          if (!v48)
          {
            objc_msgSend_doubleBetween::(generatorCopy, v39, v40, -0.5, 0.5);
            v47 = v47 + v44 * randomness * v49;
          }

          objc_msgSend_doubleBetween::(generatorCopy, v39, v40, -0.5, 0.5);
          v53 = durationCopy + durationCopy * randomness * v52;
          if (v53 >= duration)
          {
            durationCopy4 = duration;
          }

          else
          {
            durationCopy4 = v53;
          }

          v55 = 0.0;
          if (v47 >= 0.0)
          {
            v55 = v47;
          }

          if (v55 >= duration - durationCopy4)
          {
            objc_msgSend_valueWithCGPoint_(MEMORY[0x277CCAE60], v50, v51, duration - durationCopy4, durationCopy4);
          }

          else
          {
            objc_msgSend_valueWithCGPoint_(MEMORY[0x277CCAE60], v50, v51, v55, durationCopy4);
          }
        }
        v56 = ;
        objc_msgSend_addObject_(v41, v57, v56);

        ++v43;
        --v37;
      }

      while (v37 != -1);
    }
  }

  if ((direction & 0xFFFFFFFFFFFFFFFDLL) == 0x70)
  {
    v117 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v39, count);
    v133 = 0u;
    v134 = 0u;
    v135 = 0u;
    v136 = 0u;
    v118 = v41;
    v120 = objc_msgSend_countByEnumeratingWithState_objects_count_(v118, v119, &v133, v137, 16);
    if (v120)
    {
      v123 = v120;
      v124 = *v134;
      do
      {
        for (i = 0; i != v123; ++i)
        {
          if (*v134 != v124)
          {
            objc_enumerationMutation(v118);
          }

          objc_msgSend_CGPointValue(*(*(&v133 + 1) + 8 * i), v121, v122);
          v130 = objc_msgSend_valueWithCGPoint_(MEMORY[0x277CCAE60], v128, v129, duration - v126 - v127);
          objc_msgSend_addObject_(v117, v131, v130);
        }

        v123 = objc_msgSend_countByEnumeratingWithState_objects_count_(v118, v121, &v133, v137, 16);
      }

      while (v123);
    }
  }

  else
  {
    v117 = v41;
  }

  v41 = v117;
  v95 = v41;
LABEL_93:

  return v95;
}

+ (id)customAttributesArrayWithTextDeliveryOptions:(id)options
{
  v53 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v4 = MEMORY[0x277CBEB38];
  v7 = objc_msgSend_count(optionsCopy, v5, v6);
  v9 = objc_msgSend_dictionaryWithCapacity_(v4, v8, v7);
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v10 = optionsCopy;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v45, v52, 16);
  if (v12)
  {
    v15 = v12;
    v16 = *v46;
    do
    {
      v17 = 0;
      do
      {
        if (*v46 != v16)
        {
          objc_enumerationMutation(v10);
        }

        v18 = objc_msgSend_integerValue(*(*(&v45 + 1) + 8 * v17), v13, v14, v45);
        if (v18 > 1)
        {
          switch(v18)
          {
            case 2:
              v19 = sub_275DC204C();
              v21 = objc_msgSend_localizedStringForKey_value_table_(v19, v25, @"By Word *Text Delivery*", @"By Word", @"Keynote");
              objc_msgSend_setObject_forKey_(v9, v26, &unk_2884F3768, v21);
              break;
            case 3:
              v19 = sub_275DC204C();
              v21 = objc_msgSend_localizedStringForKey_value_table_(v19, v27, @"By Character *Text Delivery*", @"By Character", @"Keynote");
              objc_msgSend_setObject_forKey_(v9, v28, &unk_2884F3780, v21);
              break;
            case 4:
              v19 = sub_275DC204C();
              v21 = objc_msgSend_localizedStringForKey_value_table_(v19, v20, @"By Line *Text Delivery*", @"By Line", @"Keynote");
              objc_msgSend_setObject_forKey_(v9, v22, &unk_2884F3798, v21);
              break;
            default:
              goto LABEL_17;
          }

LABEL_16:

          goto LABEL_17;
        }

        if (v18)
        {
          if (v18 != 1)
          {
            goto LABEL_17;
          }

          v19 = sub_275DC204C();
          v21 = objc_msgSend_localizedStringForKey_value_table_(v19, v23, @"By Object *Text Delivery*", @"By Object", @"Keynote");
          objc_msgSend_setObject_forKey_(v9, v24, &unk_2884F3750, v21);
          goto LABEL_16;
        }

        v29 = MEMORY[0x277D81150];
        v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "+[KNAnimationUtils customAttributesArrayWithTextDeliveryOptions:]");
        v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimationUtils.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v33, v30, v32, 391, 0, "Unknown text delivery option!");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35);
LABEL_17:
        ++v17;
      }

      while (v15 != v17);
      v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v45, v52, 16);
      v15 = v36;
    }

    while (v36);
  }

  v51[0] = @"KNBuildCustomAttributesTextDelivery";
  v50[0] = &unk_2884F3750;
  v50[1] = &unk_2884F3768;
  v37 = sub_275DC204C();
  v39 = objc_msgSend_localizedStringForKey_value_table_(v37, v38, @"Text Animation *Build", @"Text Animation", @"Keynote");
  v51[1] = v39;
  v51[2] = &unk_2884F37B0;
  v50[2] = &unk_2884F3780;
  v50[3] = &unk_2884F37C8;
  v51[3] = v9;
  v41 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v40, v51, v50, 4);

  v49 = v41;
  v43 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v42, &v49, 1);

  return v43;
}

+ (id)customAttributesArrayWithDeliveryOptions:(id)options
{
  v56 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v4 = MEMORY[0x277CBEB38];
  v7 = objc_msgSend_count(optionsCopy, v5, v6);
  v9 = objc_msgSend_dictionaryWithCapacity_(v4, v8, v7);
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v10 = optionsCopy;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v48, v55, 16);
  if (v12)
  {
    v15 = v12;
    v16 = *v49;
    do
    {
      v17 = 0;
      do
      {
        if (*v49 != v16)
        {
          objc_enumerationMutation(v10);
        }

        v18 = objc_msgSend_integerValue(*(*(&v48 + 1) + 8 * v17), v13, v14, v48);
        if (v18 <= 2)
        {
          if (v18 == 1)
          {
            v20 = sub_275DC204C();
            v22 = objc_msgSend_localizedStringForKey_value_table_(v20, v30, @"Forward *Delivery Option*", @"Forward", @"Keynote");
            objc_msgSend_setObject_forKey_(v9, v31, &unk_2884F37E0, v22);
            goto LABEL_17;
          }

          if (v18 == 2)
          {
            v20 = sub_275DC204C();
            v22 = objc_msgSend_localizedStringForKey_value_table_(v20, v24, @"Backward *Delivery Option*", @"Backward", @"Keynote");
            objc_msgSend_setObject_forKey_(v9, v25, &unk_2884F37F8, v22);
            goto LABEL_17;
          }
        }

        else
        {
          switch(v18)
          {
            case 3:
              v20 = sub_275DC204C();
              v22 = objc_msgSend_localizedStringForKey_value_table_(v20, v26, @"From Center *Delivery Option*", @"From Center", @"Keynote");
              objc_msgSend_setObject_forKey_(v9, v27, &unk_2884F3810, v22);
              goto LABEL_17;
            case 4:
              v20 = sub_275DC204C();
              v22 = objc_msgSend_localizedStringForKey_value_table_(v20, v28, @"From Edges *Delivery Option*", @"From Edges", @"Keynote");
              objc_msgSend_setObject_forKey_(v9, v29, &unk_2884F3828, v22);
              goto LABEL_17;
            case 5:
              v20 = sub_275DC204C();
              v22 = objc_msgSend_localizedStringForKey_value_table_(v20, v21, @"Random *Delivery Option*", @"Random", @"Keynote");
              objc_msgSend_setObject_forKey_(v9, v23, &unk_2884F3840, v22);
LABEL_17:

              goto LABEL_18;
          }
        }

        v32 = MEMORY[0x277D81150];
        v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "+[KNAnimationUtils customAttributesArrayWithDeliveryOptions:]");
        v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimationUtils.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v36, v33, v35, 434, 0, "Unknown delivery option!");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38);
LABEL_18:
        ++v17;
      }

      while (v15 != v17);
      v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v48, v55, 16);
      v15 = v39;
    }

    while (v39);
  }

  v54[0] = @"KNBuildCustomAttributesDeliveryOption";
  v53[0] = &unk_2884F3750;
  v53[1] = &unk_2884F3768;
  v40 = sub_275DC204C();
  v42 = objc_msgSend_localizedStringForKey_value_table_(v40, v41, @"Delivery Option *Build", @"Delivery Option", @"Keynote");
  v54[1] = v42;
  v54[2] = &unk_2884F37B0;
  v53[2] = &unk_2884F3780;
  v53[3] = &unk_2884F37C8;
  v54[3] = v9;
  v44 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v43, v54, v53, 4);

  v52 = v44;
  v46 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v45, &v52, 1);

  return v46;
}

+ (id)customAttributesArrayWithJiggleIntensityOptions:(id)options
{
  v46 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v4 = MEMORY[0x277CBEB38];
  v7 = objc_msgSend_count(optionsCopy, v5, v6);
  v9 = objc_msgSend_dictionaryWithCapacity_(v4, v8, v7);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v10 = optionsCopy;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v38, v45, 16);
  if (v12)
  {
    v15 = v12;
    v16 = *v39;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v39 != v16)
        {
          objc_enumerationMutation(v10);
        }

        v18 = objc_msgSend_integerValue(*(*(&v38 + 1) + 8 * i), v13, v14, v38);
        if (v18 == 2)
        {
          v19 = sub_275DC204C();
          v21 = objc_msgSend_localizedStringForKey_value_table_(v19, v25, @"Large *Jiggle Intensity", @"Large", @"Keynote");
          objc_msgSend_setObject_forKey_(v9, v26, &unk_2884F37F8, v21);
        }

        else if (v18 == 1)
        {
          v19 = sub_275DC204C();
          v21 = objc_msgSend_localizedStringForKey_value_table_(v19, v23, @"Medium *Jiggle Intensity", @"Medium", @"Keynote");
          objc_msgSend_setObject_forKey_(v9, v24, &unk_2884F37E0, v21);
        }

        else
        {
          if (v18)
          {
            continue;
          }

          v19 = sub_275DC204C();
          v21 = objc_msgSend_localizedStringForKey_value_table_(v19, v20, @"Small *Jiggle Intensity", @"Small", @"Keynote");
          objc_msgSend_setObject_forKey_(v9, v22, &unk_2884F3858, v21);
        }
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v38, v45, 16);
    }

    while (v15);
  }

  v44[0] = @"KNActionBuildCustomAttributesJiggleIntensity";
  v43[0] = &unk_2884F3750;
  v43[1] = &unk_2884F3768;
  v27 = sub_275DC204C();
  v29 = objc_msgSend_localizedStringForKey_value_table_(v27, v28, @"Jiggle Intensity *Action Build", @"Intensity", @"Keynote");
  v44[1] = v29;
  v44[2] = &unk_2884F37B0;
  v43[2] = &unk_2884F3780;
  v43[3] = &unk_2884F37C8;
  v44[3] = v9;
  v43[4] = &unk_2884F3798;
  v30 = sub_275DC204C();
  v32 = objc_msgSend_localizedStringForKey_value_table_(v30, v31, @"Adjust the intensity of the jiggle on the object.", &stru_2884D8E20, @"Keynote");
  v44[4] = v32;
  v34 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v33, v44, v43, 5);

  v42 = v34;
  v36 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v35, &v42, 1);

  return v36;
}

+ (unint64_t)directionFromCustomAttributesDeliveryOption:(unint64_t)option
{
  if (option - 2 > 3)
  {
    return 111;
  }

  else
  {
    return qword_275E71058[option - 2];
  }
}

+ (unint64_t)randomDirection
{
  TSURandomBetween();
  if (v3 < 9)
  {
    return qword_275E71078[v3];
  }

  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v2, "+[KNAnimationUtils randomDirection]");
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimationUtils.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 521, 0, "Invalid random number between 0 and 8!");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  return 0;
}

+ (unint64_t)randomBasicDirection
{
  TSURandomBetween();
  if (v3 < 5)
  {
    return qword_275E710C0[v3];
  }

  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v2, "+[KNAnimationUtils randomBasicDirection]");
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimationUtils.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 539, 0, "Invalid random number between 0 and 4!");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  return 0;
}

+ (BOOL)isDisplayLoggingEnabled
{
  v3 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], a2, v2);
  v5 = objc_msgSend_BOOLForKey_(v3, v4, @"EnableDisplayLogging");

  return v5;
}

+ (BOOL)isRandomNumberSeedInspectionEnabled
{
  v3 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], a2, v2);
  v5 = objc_msgSend_BOOLForKey_(v3, v4, @"InspectRandomNumberSeed");

  return v5;
}

+ (BOOL)shouldForceDisplayPreferredMode
{
  v3 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], a2, v2);
  v5 = objc_msgSend_BOOLForKey_(v3, v4, @"ForceDisplayPreferredMode");

  return v5;
}

+ (BOOL)isCustomEffectTimingCurveEditingEnabled
{
  v3 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], a2, v2);
  v5 = objc_msgSend_BOOLForKey_(v3, v4, @"EnableCustomAccelerationCurves");

  return v5;
}

+ (BOOL)allowBlendingMotionBackgroundsDefaultValue
{
  v3 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], a2, v2);
  v5 = objc_msgSend_BOOLForKey_(v3, v4, @"DebugEnableMotionBackgroundAttributeBlending");

  return v5;
}

+ (BOOL)willPluginClassAllowBlendingMotionBackgrounds:(Class)backgrounds
{
  v4 = objc_msgSend_allowBlendingMotionBackgroundsDefaultValue(KNAnimationUtils, a2, backgrounds);
  if (!objc_msgSend_conformsToProtocol_(backgrounds, v5, &unk_288546310))
  {
    return v4;
  }

  return MEMORY[0x2821F9670](backgrounds, sel_allowsMotionBackgroundBlending, v6);
}

+ (id)videoControllerSignpostLog
{
  if (qword_280A3C060 != -1)
  {
    sub_275E5B4BC();
  }

  v3 = qword_280A3C068;

  return v3;
}

+ (BOOL)isMotionBlurCapableWithAnimationContext:(id)context
{
  contextCopy = context;
  v6 = contextCopy;
  if (byte_280A3C041)
  {
    v7 = 0;
  }

  else if (byte_280A3C040)
  {
    v7 = 1;
  }

  else
  {
    v8 = objc_msgSend_capabilities(contextCopy, v4, v5);
    v7 = (objc_msgSend_platform(v8, v9, v10) == 2) & byte_280A3C03F;
  }

  return v7;
}

+ (id)CAAccelerationFromSFXActionAcceleration:(unint64_t)acceleration
{
  if (acceleration > 1)
  {
    switch(acceleration)
    {
      case 2uLL:
        v4 = MEMORY[0x277CDA7C0];
        break;
      case 3uLL:
        v4 = MEMORY[0x277CDA7B8];
        break;
      case 4uLL:
LABEL_5:
        v3 = 0;
        goto LABEL_13;
      default:
        goto LABEL_16;
    }

LABEL_12:
    v3 = *v4;
    goto LABEL_13;
  }

  if (!acceleration)
  {
    v4 = MEMORY[0x277CDA7C8];
    goto LABEL_12;
  }

  if (acceleration == 1)
  {
    v4 = MEMORY[0x277CDA7B0];
    goto LABEL_12;
  }

LABEL_16:
  if (*MEMORY[0x277D81408] != -1)
  {
    sub_275E5B4D0();
    goto LABEL_5;
  }

  v3 = 0;
LABEL_13:

  return v3;
}

+ (CGRect)recommendedLayerBoundsForNaturalPlaybackSize:(CGSize)size inContainerWithBounds:(CGRect)bounds contentsScale:(double)scale isExternalDisplay:(BOOL)display
{
  TSUMultiplyRectScalar();
  TSUScaleSizeWithinSize();
  TSURectWithSize();
  TSURoundedRectForScale();
  v8 = objc_msgSend_currentCapabilities(MEMORY[0x277D801F0], v6, v7);
  objc_msgSend_isRendererH4OrBelow(v8, v9, v10);
  TSURectWithSize();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = v12;
  v20 = v14;
  v21 = v16;
  v22 = v18;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

+ (void)getRecommendedPosition:(CGPoint *)position andTransform:(CATransform3D *)transform toFitLayer:(id)layer inContainerWithBounds:(CGRect)bounds contentsScale:(double)scale
{
  layerCopy = layer;
  objc_msgSend_bounds(layerCopy, v10, v11);
  v44 = v13;
  v45 = v12;
  TSUScaleSizeWithinSize();
  TSURectWithSize();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  TSURoundedRectForScale();
  v23 = v22;
  v25 = v24;
  v47.origin.x = v15;
  v47.origin.y = v17;
  v47.size.width = v19;
  v47.size.height = v21;
  CGRectIntegral(v47);
  TSURectWithCenterAndSize();
  v49 = CGRectIntegral(v48);
  x = v49.origin.x;
  y = v49.origin.y;
  width = v49.size.width;
  height = v49.size.height;
  objc_msgSend_anchorPoint(layerCopy, v30, v31);
  v33 = v32;
  v35 = v34;

  v36 = *(MEMORY[0x277CD9DE8] + 80);
  *&v46.m31 = *(MEMORY[0x277CD9DE8] + 64);
  *&v46.m33 = v36;
  v37 = *(MEMORY[0x277CD9DE8] + 112);
  *&v46.m41 = *(MEMORY[0x277CD9DE8] + 96);
  *&v46.m43 = v37;
  v38 = *(MEMORY[0x277CD9DE8] + 16);
  *&v46.m11 = *MEMORY[0x277CD9DE8];
  *&v46.m13 = v38;
  v39 = *(MEMORY[0x277CD9DE8] + 48);
  *&v46.m21 = *(MEMORY[0x277CD9DE8] + 32);
  *&v46.m23 = v39;
  if (v45 != v23 || v44 != v25)
  {
    CATransform3DMakeScale(&v46, width / v45, height / v44, 1.0);
  }

  if (position)
  {
    position->x = x + width * v33;
    position->y = y + height * v35;
  }

  if (transform)
  {
    v40 = *&v46.m33;
    *&transform->m31 = *&v46.m31;
    *&transform->m33 = v40;
    v41 = *&v46.m43;
    *&transform->m41 = *&v46.m41;
    *&transform->m43 = v41;
    v42 = *&v46.m13;
    *&transform->m11 = *&v46.m11;
    *&transform->m13 = v42;
    v43 = *&v46.m23;
    *&transform->m21 = *&v46.m21;
    *&transform->m23 = v43;
  }
}

@end
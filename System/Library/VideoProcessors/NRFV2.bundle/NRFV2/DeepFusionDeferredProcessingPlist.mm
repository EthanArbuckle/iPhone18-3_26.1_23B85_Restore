@interface DeepFusionDeferredProcessingPlist
- (int)readBandData:(id)data into:(id)into;
- (int)readChromaBoostBandData:(id)data into:(id)into key:(id)key;
- (int)readDarkEdgeSuppressionBandData:(id)data into:(id)into;
- (int)readDesaturationData:(id)data into:(id)into;
- (int)readHaloSuppressionBandData:(id)data into:(id)into;
- (int)readPlist:(id)plist;
@end

@implementation DeepFusionDeferredProcessingPlist

- (int)readBandData:(id)data into:(id)into
{
  intoCopy = into;
  v8 = objc_msgSend_valueForKey_(data, v6, @"Bands", v7);
  v9 = v8;
  if (!v8)
  {
    sub_2958AB82C(v165);
    v156 = v165[0];
    goto LABEL_41;
  }

  v163 = 0u;
  v164 = 0u;
  v161 = 0u;
  v162 = 0u;
  obj = v8;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v161, v160, 16);
  if (!v11)
  {
    v156 = 0;
    goto LABEL_40;
  }

  v12 = v11;
  v158 = v9;
  v13 = *v162;
  while (2)
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v162 != v13)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v161 + 1) + 8 * i);
      v16 = objc_opt_new();
      v17 = [GainValueArray alloc];
      v20 = objc_msgSend_objectForKeyedSubscript_(v15, v18, @"TextureFlatnessThreshold", v19);
      v23 = objc_msgSend_initWithArray_(v17, v21, v20, v22);
      v24 = v16[1];
      v16[1] = v23;

      v25 = [GainValueArray alloc];
      v28 = objc_msgSend_objectForKeyedSubscript_(v15, v26, @"DeghostingYMinValue", v27);
      v31 = objc_msgSend_initWithArray_(v25, v29, v28, v30);
      v32 = v16[2];
      v16[2] = v31;

      v33 = [GainValueArray alloc];
      v36 = objc_msgSend_objectForKeyedSubscript_(v15, v34, @"DeghostingUVMinValue", v35);
      v39 = objc_msgSend_initWithArray_(v33, v37, v36, v38);
      v40 = v16[3];
      v16[3] = v39;

      v41 = [GainValueArray alloc];
      v44 = objc_msgSend_objectForKeyedSubscript_(v15, v42, @"SkinYSlope", v43);
      v47 = objc_msgSend_initWithArray_(v41, v45, v44, v46);
      v48 = v16[4];
      v16[4] = v47;

      v49 = [GainValueArray alloc];
      v52 = objc_msgSend_objectForKeyedSubscript_(v15, v50, @"SkinUVSlope", v51);
      v55 = objc_msgSend_initWithArray_(v49, v53, v52, v54);
      v56 = v16[5];
      v16[5] = v55;

      v57 = [GainValueArray alloc];
      v60 = objc_msgSend_objectForKeyedSubscript_(v15, v58, @"SkyLumaSlope", v59);
      v63 = objc_msgSend_initWithArray_(v57, v61, v60, v62);
      v64 = v16[6];
      v16[6] = v63;

      v65 = [GainValueArray alloc];
      v68 = objc_msgSend_objectForKeyedSubscript_(v15, v66, @"YSlope", v67);
      v71 = objc_msgSend_initWithArray_(v65, v69, v68, v70);
      v72 = v16[7];
      v16[7] = v71;

      v73 = [GainValueArray alloc];
      v76 = objc_msgSend_objectForKeyedSubscript_(v15, v74, @"YAlpha", v75);
      v79 = objc_msgSend_initWithArray_(v73, v77, v76, v78);
      v80 = v16[8];
      v16[8] = v79;

      v81 = [GainValueArray alloc];
      v84 = objc_msgSend_objectForKeyedSubscript_(v15, v82, @"UVAlpha", v83);
      v87 = objc_msgSend_initWithArray_(v81, v85, v84, v86);
      v88 = v16[9];
      v16[9] = v87;

      if (!objc_msgSend_count(intoCopy, v89, v90, v91))
      {
        v95 = [GainValueArray alloc];
        v98 = objc_msgSend_objectForKeyedSubscript_(v15, v96, @"TextureClippingThresholdLow", v97);
        v101 = objc_msgSend_initWithArray_(v95, v99, v98, v100);
        v102 = v16[10];
        v16[10] = v101;

        v103 = [GainValueArray alloc];
        v106 = objc_msgSend_objectForKeyedSubscript_(v15, v104, @"TextureClippingThresholdHigh", v105);
        v109 = objc_msgSend_initWithArray_(v103, v107, v106, v108);
        v110 = v16[11];
        v16[11] = v109;

        v111 = [GainValueArray alloc];
        v114 = objc_msgSend_objectForKeyedSubscript_(v15, v112, @"TextureShadingSuppressionInversePower", v113);
        v117 = objc_msgSend_initWithArray_(v111, v115, v114, v116);
        v118 = v16[12];
        v16[12] = v117;
      }

      if ((objc_msgSend_isValid(v16[1], v92, v93, v94, v158) & 1) == 0)
      {
        sub_2958AB40C();
LABEL_38:

        v156 = -1;
        goto LABEL_39;
      }

      if ((objc_msgSend_isValid(v16[2], v119, v120, v121) & 1) == 0)
      {
        sub_2958AB464();
        goto LABEL_38;
      }

      if ((objc_msgSend_isValid(v16[3], v122, v123, v124) & 1) == 0)
      {
        sub_2958AB4BC();
        goto LABEL_38;
      }

      if ((objc_msgSend_isValid(v16[4], v125, v126, v127) & 1) == 0)
      {
        sub_2958AB514();
        goto LABEL_38;
      }

      if ((objc_msgSend_isValid(v16[5], v128, v129, v130) & 1) == 0)
      {
        sub_2958AB56C();
        goto LABEL_38;
      }

      if ((objc_msgSend_isValid(v16[6], v131, v132, v133) & 1) == 0)
      {
        sub_2958AB5C4();
        goto LABEL_38;
      }

      if ((objc_msgSend_isValid(v16[7], v134, v135, v136) & 1) == 0)
      {
        sub_2958AB61C();
        goto LABEL_38;
      }

      if ((objc_msgSend_isValid(v16[8], v137, v138, v139) & 1) == 0)
      {
        sub_2958AB674();
        goto LABEL_38;
      }

      if ((objc_msgSend_isValid(v16[9], v140, v141, v142) & 1) == 0)
      {
        sub_2958AB6CC();
        goto LABEL_38;
      }

      if (objc_msgSend_count(intoCopy, v143, v144, v145))
      {
        goto LABEL_22;
      }

      if ((objc_msgSend_isValid(v16[10], v146, v147, v148) & 1) == 0)
      {
        sub_2958AB724();
        goto LABEL_38;
      }

      if ((objc_msgSend_isValid(v16[11], v149, v150, v151) & 1) == 0)
      {
        sub_2958AB77C();
        goto LABEL_38;
      }

      if ((objc_msgSend_isValid(v16[12], v152, v153, v154) & 1) == 0)
      {
        sub_2958AB7D4();
        goto LABEL_38;
      }

LABEL_22:
      objc_msgSend_addObject_(intoCopy, v146, v16, v148);
    }

    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v155, &v161, v160, 16);
    if (v12)
    {
      continue;
    }

    break;
  }

  v156 = 0;
LABEL_39:
  v9 = v158;
LABEL_40:

LABEL_41:
  return v156;
}

- (int)readChromaBoostBandData:(id)data into:(id)into key:(id)key
{
  intoCopy = into;
  v10 = objc_msgSend_objectForKeyedSubscript_(data, v8, key, v9);
  v13 = v10;
  if (!v10)
  {
    sub_2958ABA9C(v78);
LABEL_26:
    v69 = v78[0];
    goto LABEL_23;
  }

  v14 = objc_msgSend_valueForKey_(v10, v11, @"Bands", v12);
  if (!v14)
  {
    sub_2958ABA14(v78);
    goto LABEL_26;
  }

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  obj = v14;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, &v74, v73, 16);
  if (!v16)
  {
    v69 = 0;
    goto LABEL_22;
  }

  v17 = v16;
  v71 = v13;
  v18 = *v75;
  while (2)
  {
    for (i = 0; i != v17; ++i)
    {
      if (*v75 != v18)
      {
        objc_enumerationMutation(obj);
      }

      v20 = *(*(&v74 + 1) + 8 * i);
      v21 = objc_opt_new();
      v22 = [GainValueArray alloc];
      v25 = objc_msgSend_objectForKeyedSubscript_(v20, v23, @"ColorMatchThresholdStart", v24);
      v28 = objc_msgSend_initWithArray_(v22, v26, v25, v27);
      v29 = v21[1];
      v21[1] = v28;

      v30 = [GainValueArray alloc];
      v33 = objc_msgSend_objectForKeyedSubscript_(v20, v31, @"ColorMatchThresholdEnd", v32);
      v36 = objc_msgSend_initWithArray_(v30, v34, v33, v35);
      v37 = v21[2];
      v21[2] = v36;

      v38 = [GainValueArray alloc];
      v41 = objc_msgSend_objectForKeyedSubscript_(v20, v39, @"EdgeMatchThresholdStart", v40);
      v44 = objc_msgSend_initWithArray_(v38, v42, v41, v43);
      v45 = v21[3];
      v21[3] = v44;

      v46 = [GainValueArray alloc];
      v49 = objc_msgSend_objectForKeyedSubscript_(v20, v47, @"EdgeMatchThresholdEnd", v48);
      v52 = objc_msgSend_initWithArray_(v46, v50, v49, v51);
      v53 = v21[4];
      v21[4] = v52;

      if ((objc_msgSend_isValid(v21[1], v54, v55, v56) & 1) == 0)
      {
        sub_2958AB8B4();
LABEL_20:

        v69 = -1;
        goto LABEL_21;
      }

      if ((objc_msgSend_isValid(v21[2], v57, v58, v59) & 1) == 0)
      {
        sub_2958AB90C();
        goto LABEL_20;
      }

      if ((objc_msgSend_isValid(v21[3], v60, v61, v62) & 1) == 0)
      {
        sub_2958AB964();
        goto LABEL_20;
      }

      if ((objc_msgSend_isValid(v21[4], v63, v64, v65) & 1) == 0)
      {
        sub_2958AB9BC();
        goto LABEL_20;
      }

      objc_msgSend_addObject_(intoCopy, v66, v21, v67);
    }

    v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v68, &v74, v73, 16);
    if (v17)
    {
      continue;
    }

    break;
  }

  v69 = 0;
LABEL_21:
  v13 = v71;
LABEL_22:

LABEL_23:
  return v69;
}

- (int)readHaloSuppressionBandData:(id)data into:(id)into
{
  intoCopy = into;
  v8 = objc_msgSend_valueForKey_(data, v6, @"Bands", v7);
  v9 = v8;
  if (v8)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = v8;
    v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v32, v31, 16);
    if (v11)
    {
      v12 = v11;
      v13 = *v33;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v33 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v32 + 1) + 8 * i);
          v16 = objc_opt_new();
          v17 = [GainValueArray alloc];
          v20 = objc_msgSend_objectForKeyedSubscript_(v15, v18, @"HaloSuppressionStrength", v19);
          v23 = objc_msgSend_initWithArray_(v17, v21, v20, v22);
          v24 = v16[1];
          v16[1] = v23;

          if (!v16[1])
          {
            sub_2958ABB24(v16);
            v28 = -1;
            goto LABEL_13;
          }

          objc_msgSend_addObject_(intoCopy, v25, v16, v26);
        }

        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v27, &v32, v31, 16);
        if (v12)
        {
          continue;
        }

        break;
      }

      v28 = 0;
    }

    else
    {
      v28 = 0;
    }

LABEL_13:
  }

  else
  {
    sub_2958ABB8C(v36);
    v28 = v36[0];
  }

  return v28;
}

- (int)readDarkEdgeSuppressionBandData:(id)data into:(id)into
{
  intoCopy = into;
  v8 = objc_msgSend_valueForKey_(data, v6, @"Bands", v7);
  v9 = v8;
  if (!v8)
  {
    sub_2958ABD1C(v53);
    v44 = v53[0];
    goto LABEL_20;
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = v8;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v49, v48, 16);
  if (!v11)
  {
    v44 = 0;
    goto LABEL_19;
  }

  v12 = v11;
  v46 = v9;
  v13 = *v50;
  while (2)
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v50 != v13)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v49 + 1) + 8 * i);
      v16 = objc_opt_new();
      v17 = [GainValueArray alloc];
      v20 = objc_msgSend_objectForKeyedSubscript_(v15, v18, @"DarkEdgeSuppressionLumaThresholdLow", v19);
      v23 = objc_msgSend_initWithArray_(v17, v21, v20, v22);
      v24 = v16[2];
      v16[2] = v23;

      if (!v16[2])
      {
        sub_2958ABCC4();
LABEL_17:

        v44 = -1;
        goto LABEL_18;
      }

      v25 = [GainValueArray alloc];
      v28 = objc_msgSend_objectForKeyedSubscript_(v15, v26, @"DarkEdgeSuppressionLumaThresholdHigh", v27);
      v31 = objc_msgSend_initWithArray_(v25, v29, v28, v30);
      v32 = v16[1];
      v16[1] = v31;

      if (!v16[1])
      {
        sub_2958ABC6C();
        goto LABEL_17;
      }

      v33 = [GainValueArray alloc];
      v36 = objc_msgSend_objectForKeyedSubscript_(v15, v34, @"DarkEdgeSuppressionLumaDiffThreshold", v35);
      v39 = objc_msgSend_initWithArray_(v33, v37, v36, v38);
      v40 = v16[3];
      v16[3] = v39;

      if (!v16[3])
      {
        sub_2958ABC14();
        goto LABEL_17;
      }

      objc_msgSend_addObject_(intoCopy, v41, v16, v42);
    }

    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v43, &v49, v48, 16);
    if (v12)
    {
      continue;
    }

    break;
  }

  v44 = 0;
LABEL_18:
  v9 = v46;
LABEL_19:

LABEL_20:
  return v44;
}

- (int)readDesaturationData:(id)data into:(id)into
{
  dataCopy = data;
  intoCopy = into;
  if (!dataCopy)
  {
    sub_2958ABEAC(&v42);
    v40 = v42;
    goto LABEL_6;
  }

  v7 = [GainValueArray alloc];
  v10 = objc_msgSend_objectForKeyedSubscript_(dataCopy, v8, @"YThresh", v9);
  v13 = objc_msgSend_initWithArray_(v7, v11, v10, v12);
  v14 = intoCopy[1];
  intoCopy[1] = v13;

  v15 = [GainValueArray alloc];
  v18 = objc_msgSend_objectForKeyedSubscript_(dataCopy, v16, @"Sigma", v17);
  v21 = objc_msgSend_initWithArray_(v15, v19, v18, v20);
  v22 = intoCopy[2];
  intoCopy[2] = v21;

  v23 = [GainValueArray alloc];
  v26 = objc_msgSend_objectForKeyedSubscript_(dataCopy, v24, @"Strength", v25);
  v29 = objc_msgSend_initWithArray_(v23, v27, v26, v28);
  v30 = intoCopy[3];
  intoCopy[3] = v29;

  if ((objc_msgSend_isValid(intoCopy[1], v31, v32, v33) & 1) == 0)
  {
    sub_2958ABDA4();
LABEL_11:
    v40 = -1;
    goto LABEL_6;
  }

  if ((objc_msgSend_isValid(intoCopy[2], v34, v35, v36) & 1) == 0)
  {
    sub_2958ABDFC();
    goto LABEL_11;
  }

  if ((objc_msgSend_isValid(intoCopy[3], v37, v38, v39) & 1) == 0)
  {
    sub_2958ABE54();
    goto LABEL_11;
  }

  v40 = 0;
LABEL_6:

  return v40;
}

- (int)readPlist:(id)plist
{
  plistCopy = plist;
  v174[0] = @"ModelLowEIT";
  v174[1] = @"ModelHighEIT";
  v6 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v5, v174, 2);
  v7 = 0x29EDB8000uLL;
  obj = objc_opt_new();
  v167 = objc_opt_new();
  v157 = objc_opt_new();
  v156 = objc_opt_new();
  v155 = objc_opt_new();
  v154 = objc_opt_new();
  v153 = objc_opt_new();
  v152 = objc_opt_new();
  v159 = plistCopy;
  if (!plistCopy)
  {
    sub_2958AC86C(v175);
LABEL_53:
    v96 = 0;
    v87 = 0;
    v149 = 0;
    v148 = 0;
    v104 = 0;
    v13 = 0;
    v147 = v175[0];
    goto LABEL_38;
  }

  if (objc_msgSend_count(v6, v8, v9, v10) != 2)
  {
    sub_2958ABF34(v175);
    goto LABEL_53;
  }

  v13 = 0;
  v14 = 0;
  v165 = 0;
  v166 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 1;
  v151 = v6;
  do
  {
    v163 = v15;
    v164 = v14;
    v19 = v18;
    v162 = objc_msgSend_objectAtIndexedSubscript_(v6, v11, v17, v12);
    v22 = objc_msgSend_objectForKeyedSubscript_(v159, v20, v162, v21);
    if (!v22)
    {
      sub_2958AC7E4(v175);
      v147 = v175[0];
      goto LABEL_50;
    }

    v161 = v16;
    v23 = v7;
    v24 = *(v7 + 3560);
    v25 = objc_opt_new();

    v28 = objc_msgSend_objectForKeyedSubscript_(v22, v26, @"AddBackModulation", v27);
    BandData_into = objc_msgSend_readBandData_into_(self, v29, v28, v25);

    if (BandData_into)
    {
      sub_2958ABFBC(BandData_into, v175);
      v147 = v175[0];
      v13 = v25;
      goto LABEL_33;
    }

    v160 = v19;
    objc_msgSend_addObject_(obj, v31, v25, v32);
    v172 = 0u;
    v173 = 0u;
    v170 = 0u;
    v171 = 0u;
    v168[0] = @"SL_EV0_LONG";
    v168[1] = @"SL_EV0";
    v34 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v33, v168, 2);
    v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v35, &v170, v169, 16);
    if (v36)
    {
      v37 = v36;
      v38 = *v171;
      v13 = v25;
      while (2)
      {
        v39 = 0;
        v40 = v13;
        do
        {
          if (*v171 != v38)
          {
            objc_enumerationMutation(v34);
          }

          v41 = *(*(&v170 + 1) + 8 * v39);
          v42 = *(v23 + 3560);
          v13 = objc_opt_new();

          v45 = objc_msgSend_objectForKeyedSubscript_(v22, v43, @"ChromaBoost", v44);
          ChromaBoostBandData_into_key = objc_msgSend_readChromaBoostBandData_into_key_(self, v46, v45, v13, v41);

          if (ChromaBoostBandData_into_key)
          {
            sub_2958AC04C(ChromaBoostBandData_into_key, v34, v175);
            goto LABEL_32;
          }

          objc_msgSend_addObject_(v167, v48, v13, v49);
          ++v39;
          v40 = v13;
        }

        while (v37 != v39);
        v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v50, &v170, v169, 16);
        if (v37)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v13 = v25;
    }

    v51 = objc_opt_new();
    v54 = objc_msgSend_objectForKeyedSubscript_(v22, v52, @"Desaturation", v53);
    DesaturationData_into = objc_msgSend_readDesaturationData_into_(self, v55, v54, v51);

    if (DesaturationData_into)
    {
      sub_2958AC0E4(DesaturationData_into, v51, v175);
LABEL_32:
      v147 = v175[0];
      v6 = v151;
LABEL_33:
      v148 = v166;
      goto LABEL_34;
    }

    objc_msgSend_addObject_(v157, v57, v51, v58);
    v59 = objc_opt_new();

    v62 = objc_msgSend_objectForKeyedSubscript_(v22, v60, @"NoiseTuning", v61);
    Plist = objc_msgSend_readPlist_(v59, v63, v62, v64);

    v164 = v59;
    objc_msgSend_addObject_(v156, v66, v59, v67);
    v6 = v151;
    if (Plist)
    {
      sub_2958AC17C(Plist, v51, v175);
LABEL_47:
      v147 = v175[0];
      goto LABEL_33;
    }

    v68 = objc_opt_new();

    if (!v68)
    {
      sub_2958AC73C(v51, v175);
      v148 = 0;
      v147 = v175[0];
LABEL_34:
      v149 = v165;
LABEL_35:
      v16 = v161;
      goto LABEL_36;
    }

    v71 = objc_msgSend_objectForKeyedSubscript_(v22, v69, @"Fusion", v70);
    v74 = objc_msgSend_readPlist_(v68, v72, v71, v73);

    v166 = v68;
    objc_msgSend_addObject_(v155, v75, v68, v76);
    if (v74)
    {
      sub_2958AC214(v74, v51, v175);
      goto LABEL_47;
    }

    v77 = objc_opt_new();

    if (!v77)
    {
      sub_2958AC694(v51, v175);
      v149 = 0;
      v147 = v175[0];
      v148 = v166;
      goto LABEL_35;
    }

    v80 = objc_msgSend_objectForKeyedSubscript_(v22, v78, @"HighlightTuning", v79);
    v83 = objc_msgSend_readPlist_(v77, v81, v80, v82);

    v165 = v77;
    objc_msgSend_addObject_(v154, v84, v77, v85);
    if (v83)
    {
      sub_2958AC2AC(v83, v51, v175);
      goto LABEL_47;
    }

    v86 = *(v23 + 3560);
    v87 = objc_opt_new();

    v90 = objc_msgSend_objectForKeyedSubscript_(v22, v88, @"HaloSuppression", v89);
    HaloSuppressionBandData_into = objc_msgSend_readHaloSuppressionBandData_into_(self, v91, v90, v87);

    if (HaloSuppressionBandData_into)
    {
      sub_2958AC344(HaloSuppressionBandData_into, v51, v175);
      v147 = v175[0];
      v163 = v87;
      goto LABEL_33;
    }

    objc_msgSend_addObject_(v153, v93, v87, v94);
    v95 = *(v23 + 3560);
    v96 = objc_opt_new();

    v99 = objc_msgSend_objectForKeyedSubscript_(v22, v97, @"DarkEdgeSuppression", v98);
    DarkEdgeSuppressionBandData_into = objc_msgSend_readDarkEdgeSuppressionBandData_into_(self, v100, v99, v96);

    if (DarkEdgeSuppressionBandData_into)
    {
      sub_2958AC3DC(DarkEdgeSuppressionBandData_into, v51, v175);
      v147 = v175[0];
      v16 = v96;
      v163 = v87;
LABEL_50:
      v149 = v165;
      v148 = v166;
LABEL_36:

      v96 = v16;
      v87 = v163;
LABEL_37:
      v104 = v164;
      goto LABEL_38;
    }

    objc_msgSend_addObject_(v152, v102, v96, v103);

    v18 = 0;
    v104 = v164;
    v14 = v164;
    v15 = v87;
    v16 = v96;
    v17 = 1;
    v7 = v23;
  }

  while ((v160 & 1) != 0);
  objc_storeStrong(&self->addBackModulationBands, obj);
  objc_storeStrong(&self->noiseTuning, v156);
  objc_storeStrong(&self->fusionData, v155);
  objc_storeStrong(&self->highlightTuning, v154);
  objc_storeStrong(&self->chromaBoostMaskBands, v167);
  objc_storeStrong(&self->desaturationData, v157);
  objc_storeStrong(&self->haloSuppressionBands, v153);
  objc_storeStrong(&self->darkEdgeSupressionBands, v152);
  v107 = objc_msgSend_objectForKeyedSubscript_(v159, v105, @"ModelSwitchEITThreshold", v106);

  if (v107)
  {
    v110 = objc_msgSend_objectForKeyedSubscript_(v159, v108, @"ModelSwitchEITThreshold", v109);
    objc_msgSend_floatValue(v110, v111, v112, v113);
    self->modelSwitchEITThreshold = v114;

    v117 = objc_msgSend_objectForKeyedSubscript_(v159, v115, @"DenseRegistrationMotionScoreThreshold", v116);

    if (v117)
    {
      v120 = objc_msgSend_objectForKeyedSubscript_(v159, v118, @"DenseRegistrationMotionScoreThreshold", v119);
      objc_msgSend_floatValue(v120, v121, v122, v123);
      self->denseRegistrationMotionScoreThreshold = v124;

      v125 = [GainValueArray alloc];
      v128 = objc_msgSend_objectForKeyedSubscript_(v159, v126, @"EV0BlurThreshold", v127);
      v131 = objc_msgSend_initWithArray_(v125, v129, v128, v130);
      EV0BlurThreshold = self->EV0BlurThreshold;
      self->EV0BlurThreshold = v131;

      if (objc_msgSend_isValid(self->EV0BlurThreshold, v133, v134, v135))
      {
        v136 = [GainValueArray alloc];
        v139 = objc_msgSend_objectForKeyedSubscript_(v159, v137, @"FilteredChromaAlpha", v138);
        v142 = objc_msgSend_initWithArray_(v136, v140, v139, v141);
        filteredChromaAlpha = self->filteredChromaAlpha;
        self->filteredChromaAlpha = v142;

        if (objc_msgSend_isValid(self->filteredChromaAlpha, v144, v145, v146))
        {
          v147 = 0;
LABEL_30:
          v149 = v165;
          v148 = v166;
          goto LABEL_37;
        }

        sub_2958AC4FC(v175);
      }

      else
      {
        sub_2958AC474(v175);
      }
    }

    else
    {
      sub_2958AC584(v175);
    }

    v147 = v175[0];
    goto LABEL_30;
  }

  sub_2958AC60C(v175);
  v147 = v175[0];
  v149 = v165;
  v148 = v166;
LABEL_38:

  return v147;
}

@end
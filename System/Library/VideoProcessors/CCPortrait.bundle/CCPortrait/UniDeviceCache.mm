@interface UniDeviceCache
+ (id)bufferFromData:(id)data device:(id)device;
+ (id)findComputeKernel:(id)kernel library:(id)library constants:(id)constants;
+ (id)findComputeKernel:(id)kernel metalContext:(id)context constants:(id)constants;
+ (id)findKernel:(id)kernel device:(id)device;
+ (void)clearAllCaches;
@end

@implementation UniDeviceCache

+ (id)bufferFromData:(id)data device:(id)device
{
  dataCopy = data;
  deviceCopy = device;
  if (!dataCopy)
  {
    goto LABEL_11;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v9 = 0;
  if (!deviceCopy || (isKindOfClass & 1) == 0)
  {
    goto LABEL_12;
  }

  if (!objc_msgSend_conformsToProtocol_(deviceCopy, v8, &unk_2A1CA1B38))
  {
LABEL_11:
    v9 = 0;
    goto LABEL_12;
  }

  if (qword_2A18BA388 != -1)
  {
    sub_2956CD3AC();
  }

  v9 = sub_2956B0E54(dataCopy, deviceCopy, qword_2A18BA2C0);
  if (!v9)
  {
    v10 = uni_activity();
    v11 = _os_activity_create(&dword_295691000, "create buffer", v10, OS_ACTIVITY_FLAG_DEFAULT);

    v12 = dataCopy;
    v15 = objc_msgSend_bytes(v12, v13, v14);
    v18 = objc_msgSend_length(dataCopy, v16, v17);
    v20 = objc_msgSend_newBufferWithBytes_length_options_(deviceCopy, v19, v15, v18, 0);
    if (!v20)
    {
      sub_2956CD3C0();
    }

    v9 = v20;
    v21 = qword_2A18BA2C0;
    objc_sync_enter(v21);
    v22 = qword_2A18BA2C0;
    v23 = MEMORY[0x29EDBA070];
    v26 = objc_msgSend_registryID(deviceCopy, v24, v25);
    v28 = objc_msgSend_numberWithUnsignedLongLong_(v23, v27, v26);
    v30 = objc_msgSend_objectForKeyedSubscript_(v22, v29, v28);

    if (!v30)
    {
      __assert_rtn("+[UniDeviceCache bufferFromData:device:]", "UniDeviceCache.m", 71, "deviceDict");
    }

    objc_msgSend_setObject_forKeyedSubscript_(v30, v31, v9, dataCopy);

    objc_sync_exit(v21);
  }

LABEL_12:

  return v9;
}

+ (id)findKernel:(id)kernel device:(id)device
{
  kernelCopy = kernel;
  deviceCopy = device;
  if (!kernelCopy)
  {
    goto LABEL_12;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v9 = 0;
  if (deviceCopy && (isKindOfClass & 1) != 0)
  {
    if (objc_msgSend_conformsToProtocol_(deviceCopy, v8, &unk_2A1CA1B38))
    {
      if (qword_2A1388970 != -1)
      {
        sub_2956CD418();
      }

      v11 = objc_msgSend_objectForKeyedSubscript_(kernelCopy, v10, @"name");
      if (!v11)
      {
        sub_2956CD5A8();
      }

      v12 = v11;
      v13 = 0x2A1388000uLL;
      v9 = sub_2956B0E54(kernelCopy, deviceCopy, qword_2A1388978);
      if (v9)
      {
        goto LABEL_22;
      }

      if (objc_msgSend_isEqualToString_(v12, v14, @"MPSImageGaussianBlur"))
      {
        v16 = objc_msgSend_objectForKeyedSubscript_(kernelCopy, v15, @"inputRadius");
        objc_msgSend_floatValue(v16, v17, v18);
        v20 = v19;

        if (v20 <= 0.0001)
        {
          sub_2956CD57C();
        }

        v21 = objc_alloc(MEMORY[0x29EDBB7F0]);
        *&v22 = v20;
        v24 = objc_msgSend_initWithDevice_sigma_(v21, v23, deviceCopy, v22);
      }

      else
      {
        if (objc_msgSend_isEqualToString_(v12, v15, @"MPSImageAreaMin"))
        {
          v27 = objc_msgSend_objectForKeyedSubscript_(kernelCopy, v26, @"radius");
          v30 = objc_msgSend_unsignedIntValue(v27, v28, v29);

          v31 = MEMORY[0x29EDBB7D8];
        }

        else
        {
          if (!objc_msgSend_isEqualToString_(v12, v26, @"MPSImageAreaMax"))
          {
            if (!objc_msgSend_isEqualToString_(v12, v32, @"MPSImageSpatioTemporalGuidedFilter"))
            {
              v38 = uni_logger_api();
              if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
              {
                sub_2956CD42C(v12, v38);
              }

              v9 = 0;
              goto LABEL_21;
            }

            v101 = v12;
            v102 = objc_msgSend_setWithArray_(MEMORY[0x29EDB8E50], v50, &unk_2A1C95590);
            v104 = 0u;
            v105 = 0u;
            v106 = 0u;
            v107 = 0u;
            v51 = kernelCopy;
            v53 = objc_msgSend_countByEnumeratingWithState_objects_count_(v51, v52, &v104, v103, 16);
            if (v53)
            {
              v55 = v53;
              v56 = *v105;
              do
              {
                for (i = 0; i != v55; ++i)
                {
                  if (*v105 != v56)
                  {
                    objc_enumerationMutation(v51);
                  }

                  v58 = *(*(&v104 + 1) + 8 * i);
                  if ((objc_msgSend_isEqualToString_(v58, v54, @"name") & 1) == 0 && (objc_msgSend_isEqualToString_(v58, v54, @"imageExtents") & 1) == 0 && (objc_msgSend_isEqualToString_(v58, v54, @"iterations") & 1) == 0 && (objc_msgSend_containsObject_(v102, v54, v58) & 1) == 0)
                  {
                    sub_2956CD4CC();
                  }
                }

                v55 = objc_msgSend_countByEnumeratingWithState_objects_count_(v51, v54, &v104, v103, 16);
              }

              while (v55);
            }

            v60 = objc_msgSend_objectForKeyedSubscript_(v51, v59, @"subsampleFactor");

            if (v60)
            {
              v62 = objc_msgSend_objectForKeyedSubscript_(v51, v61, @"subsampleFactor");
              v65 = objc_msgSend_unsignedIntegerValue(v62, v63, v64);
            }

            else
            {
              v65 = 8;
            }

            v66 = objc_msgSend_objectForKeyedSubscript_(v51, v61, @"width");

            if (v66)
            {
              v68 = objc_msgSend_objectForKeyedSubscript_(v51, v67, @"width");
              v71 = objc_msgSend_unsignedIntegerValue(v68, v69, v70) / v65;
            }

            else
            {
              v71 = 252;
            }

            v72 = objc_msgSend_objectForKeyedSubscript_(v51, v67, @"height");

            if (v72)
            {
              v74 = objc_msgSend_objectForKeyedSubscript_(v51, v73, @"height");
              v77 = objc_msgSend_unsignedIntegerValue(v74, v75, v76) / v65;
            }

            else
            {
              v77 = 189;
            }

            v78 = objc_msgSend_objectForKeyedSubscript_(v51, v73, @"spatialDiameter");

            if (v78)
            {
              v80 = objc_msgSend_objectForKeyedSubscript_(v51, v79, @"spatialDiameter");
              v83 = objc_msgSend_unsignedIntegerValue(v80, v81, v82);
            }

            else
            {
              v83 = 5;
            }

            v84 = objc_msgSend_objectForKeyedSubscript_(v51, v79, @"epsilon");

            if (v84)
            {
              v87 = objc_msgSend_objectForKeyedSubscript_(v51, v85, @"epsilon");
              objc_msgSend_floatValue(v87, v88, v89);
              v91 = v90;
            }

            else
            {
              v91 = 953267991;
            }

            LODWORD(v86) = v91;
            v92 = objc_msgSend_filterDescriptorWithWidth_height_arrayLength_kernelSpatialDiameter_kernelTemporalDiameter_epsilon_sourceChannels_guideChannels_preallocateIntermediates_(MEMORY[0x29EDBB800], v85, v71, v77, 1, v83, 1, 1, v86, 4, 1);
            if (!v92)
            {
              sub_2956CD524();
            }

            v93 = v92;
            v94 = objc_alloc(MEMORY[0x29EDBB7F8]);
            v96 = objc_msgSend_initWithDevice_filterDescriptor_(v94, v95, deviceCopy, v93);
            v12 = v101;
            if (!v96)
            {
              sub_2956CD4F8();
            }

            v9 = v96;
            v99 = objc_msgSend_options(v96, v97, v98);
            objc_msgSend_setOptions_(v9, v100, v99 | 1);

            v13 = 0x2A1388000;
LABEL_19:
            v38 = *(v13 + 2424);
            objc_sync_enter(v38);
            v39 = *(v13 + 2424);
            v40 = MEMORY[0x29EDBA070];
            v43 = objc_msgSend_registryID(deviceCopy, v41, v42);
            v45 = objc_msgSend_numberWithUnsignedLongLong_(v40, v44, v43);
            v47 = objc_msgSend_objectForKeyedSubscript_(v39, v46, v45);

            if (!v47)
            {
              __assert_rtn("+[UniDeviceCache findKernel:device:]", "UniDeviceCache.m", 173, "deviceDict");
            }

            objc_msgSend_setObject_forKeyedSubscript_(v47, v48, v9, kernelCopy);

            objc_sync_exit(v38);
LABEL_21:

LABEL_22:
            goto LABEL_23;
          }

          v33 = objc_msgSend_objectForKeyedSubscript_(kernelCopy, v32, @"radius");
          v30 = objc_msgSend_unsignedIntValue(v33, v34, v35);

          v31 = MEMORY[0x29EDBB7D0];
        }

        v36 = [v31 alloc];
        v24 = objc_msgSend_initWithDevice_kernelWidth_kernelHeight_(v36, v37, deviceCopy, v30, v30);
      }

      v9 = v24;
      objc_msgSend_setEdgeMode_(v24, v25, 1);
      if (!v9)
      {
        sub_2956CD550();
      }

      goto LABEL_19;
    }

LABEL_12:
    v9 = 0;
  }

LABEL_23:

  return v9;
}

+ (id)findComputeKernel:(id)kernel metalContext:(id)context constants:(id)constants
{
  kernelCopy = kernel;
  contextCopy = context;
  constantsCopy = constants;
  v10 = sub_2956B182C();
  v11 = qword_2A18BA340;
  qword_2A18BA340 = v10;

  v37 = @"name";
  v38 = @"constants";
  v13 = MEMORY[0x29EDB8EA0];
  if (constantsCopy)
  {
    v13 = constantsCopy;
  }

  v39[0] = kernelCopy;
  v39[1] = v13;
  v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v12, v39, &v37, 2);
  v17 = objc_msgSend_device(contextCopy, v15, v16, v37, v38);
  v18 = sub_2956B0E54(v14, v17, qword_2A18BA340);

  if (!v18)
  {
    v19 = [UniKernel alloc];
    v21 = objc_msgSend_initWithName_metalContext_coreImageLibrary_constants_(v19, v20, kernelCopy, contextCopy, 0, constantsCopy);
    if (!v21)
    {
      sub_2956CD5D4();
    }

    v18 = v21;
    v22 = qword_2A18BA340;
    objc_sync_enter(v22);
    v23 = qword_2A18BA340;
    v24 = MEMORY[0x29EDBA070];
    v27 = objc_msgSend_device(contextCopy, v25, v26);
    v30 = objc_msgSend_registryID(v27, v28, v29);
    v32 = objc_msgSend_numberWithUnsignedLongLong_(v24, v31, v30);
    v34 = objc_msgSend_objectForKeyedSubscript_(v23, v33, v32);

    if (!v34)
    {
      __assert_rtn("+[UniDeviceCache findComputeKernel:metalContext:constants:]", "UniDeviceCache.m", 210, "deviceDict");
    }

    objc_msgSend_setObject_forKeyedSubscript_(v34, v35, v18, v14);

    objc_sync_exit(v22);
  }

  return v18;
}

+ (id)findComputeKernel:(id)kernel library:(id)library constants:(id)constants
{
  kernelCopy = kernel;
  libraryCopy = library;
  constantsCopy = constants;
  v12 = objc_msgSend_metalContext(libraryCopy, v10, v11);
  v15 = objc_msgSend_device(v12, v13, v14);

  v16 = sub_2956B182C();
  v17 = qword_2A18BA340;
  qword_2A18BA340 = v16;

  v37 = @"name";
  v38 = @"constants";
  v19 = MEMORY[0x29EDB8EA0];
  if (constantsCopy)
  {
    v19 = constantsCopy;
  }

  v39[0] = kernelCopy;
  v39[1] = v19;
  v20 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v18, v39, &v37, 2);
  v21 = sub_2956B0E54(v20, v15, qword_2A18BA340);
  if (!v21)
  {
    v22 = [UniKernel alloc];
    v24 = objc_msgSend_initWithName_library_constants_(v22, v23, kernelCopy, libraryCopy, constantsCopy, v37, v38);
    if (!v24)
    {
      sub_2956CD614();
    }

    v21 = v24;
    v25 = qword_2A18BA340;
    objc_sync_enter(v25);
    v26 = qword_2A18BA340;
    v27 = MEMORY[0x29EDBA070];
    v30 = objc_msgSend_registryID(v15, v28, v29);
    v32 = objc_msgSend_numberWithUnsignedLongLong_(v27, v31, v30);
    v34 = objc_msgSend_objectForKeyedSubscript_(v26, v33, v32);

    if (!v34)
    {
      __assert_rtn("+[UniDeviceCache findComputeKernel:library:constants:]", "UniDeviceCache.m", 242, "deviceDict");
    }

    objc_msgSend_setObject_forKeyedSubscript_(v34, v35, v21, v20);

    objc_sync_exit(v25);
  }

  return v21;
}

+ (void)clearAllCaches
{
  v2 = uni_activity();
  v3 = _os_activity_create(&dword_295691000, "clearAllCaches", v2, OS_ACTIVITY_FLAG_DEFAULT);

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v5 = qword_2A1388978;
  if (!qword_2A1388978)
  {
    v5 = MEMORY[0x29EDB8EA0];
  }

  v6 = qword_2A18BA2C0;
  if (!qword_2A18BA2C0)
  {
    v6 = MEMORY[0x29EDB8EA0];
  }

  v44[0] = v5;
  v44[1] = v6;
  v7 = qword_2A18BA340;
  if (!qword_2A18BA340)
  {
    v7 = MEMORY[0x29EDB8EA0];
  }

  v44[2] = v7;
  obj = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v4, v44, 3);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v46, v45, 16);
  if (v9)
  {
    v10 = v9;
    v11 = *v47;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v47 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v46 + 1) + 8 * i);
        objc_sync_enter(v13);
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v16 = objc_msgSend_allValues(v13, v14, v15);
        v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v40, v39, 16);
        if (v18)
        {
          v19 = *v41;
          do
          {
            for (j = 0; j != v18; ++j)
            {
              if (*v41 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v40 + 1) + 8 * j);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                objc_msgSend_removeAllObjects(v21, v22, v23);
              }
            }

            v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v22, &v40, v39, 16);
          }

          while (v18);
        }

        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v24 = v13;
        v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, &v35, v34, 16);
        if (v27)
        {
          v28 = *v36;
          while (2)
          {
            for (k = 0; k != v27; ++k)
            {
              if (*v36 != v28)
              {
                objc_enumerationMutation(v24);
              }

              if (*(*(&v35 + 1) + 8 * k))
              {

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  objc_msgSend_removeAllObjects(v24, v30, v31);
                }

                goto LABEL_32;
              }
            }

            v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v26, &v35, v34, 16);
            if (v27)
            {
              continue;
            }

            break;
          }
        }

LABEL_32:
        objc_sync_exit(v24);
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v32, &v46, v45, 16);
    }

    while (v10);
  }
}

@end
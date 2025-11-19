@interface UniCIFilter
- (UniCIFilter)init;
- (UniCIFilter)initWithDevice:(id)a3;
- (id)inputImageArray;
- (id)inputNameArray;
- (id)outputImage:(id)a3;
- (id)outputImageArray;
- (id)outputNameArray;
- (id)run:(id)a3;
@end

@implementation UniCIFilter

- (UniCIFilter)init
{
  v6.receiver = self;
  v6.super_class = UniCIFilter;
  v2 = [(UniKernel *)&v6 init];
  v4 = v2;
  if (v2)
  {
    objc_msgSend_setFilter_(v2, v3, 0);
  }

  return v4;
}

- (UniCIFilter)initWithDevice:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = UniCIFilter;
  v5 = [(UniKernel *)&v10 init];
  v7 = v5;
  if (v5)
  {
    objc_msgSend_setDevice_(v5, v6, v4);
    objc_msgSend_setFilter_(v7, v8, 0);
  }

  return v7;
}

- (id)run:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4)
  {
    v10 = v4;
  }

  else
  {
    v11 = objc_msgSend_device(self, v5, v6);
    v10 = objc_msgSend_newCommandQueue(v11, v12, v13);
  }

  v14 = objc_msgSend_commandBuffer(v10, v8, v9);
  v17 = objc_msgSend_inputs(self, v15, v16);
  v19 = objc_msgSend_objectForKeyedSubscript_(v17, v18, *MEMORY[0x29EDB9258]);

  if (!v19)
  {
    sub_2956CD0C0();
  }

  v78 = v10;
  if (qword_2A1388968 != -1)
  {
    sub_2956CCFFC();
  }

  v22 = MEMORY[0x29EDBA168];
  v23 = objc_msgSend_device(self, v20, v21);
  v25 = objc_msgSend_valueWithNonretainedObject_(v22, v24, v23);

  v26 = qword_2A1388960;
  objc_sync_enter(v26);
  v30 = objc_msgSend_objectForKeyedSubscript_(qword_2A1388960, v27, v25);
  if (!v30)
  {
    v31 = MEMORY[0x29EDB9168];
    v32 = objc_msgSend_device(self, v28, v29);
    v81 = *MEMORY[0x29EDB91D0];
    v35 = objc_msgSend_null(MEMORY[0x29EDB8E28], v33, v34);
    v82 = v35;
    v37 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v36, &v82, &v81, 1);
    v30 = objc_msgSend_contextWithMTLDevice_options_(v31, v38, v32, v37);

    objc_msgSend_setObject_forKeyedSubscript_(qword_2A1388960, v39, v30, v25);
  }

  objc_sync_exit(v26);

  if (!v30)
  {
    sub_2956CD094();
  }

  v41 = objc_msgSend__mtlTextureForImage_(UniKernel, v40, v19);
  if (!v41)
  {
    sub_2956CD068();
  }

  v43 = v41;
  if ((objc_msgSend_conformsToProtocol_(v41, v42, &unk_2A1CA0A70) & 1) == 0)
  {
    sub_2956CD010();
  }

  v44 = objc_alloc(MEMORY[0x29EDB9188]);
  v47 = objc_msgSend_initWithMTLTexture_commandBuffer_(v44, v45, v43, v14);
  if (v47)
  {
    v48 = objc_msgSend__ciImageForInput_(self, v46, v19);
    if (!v48)
    {
      sub_2956CD03C();
    }

    v50 = v48;
    objc_msgSend_setColorSpace_(v47, v49, 0);
    objc_msgSend_setClamped_(v47, v51, 0);
    v54 = objc_msgSend_width(v43, v52, v53);
    v57 = objc_msgSend_height(v43, v55, v56);
    objc_msgSend_extent(v50, v58, v59);
    v85.origin.x = v60;
    v85.origin.y = v61;
    v85.size.width = v62;
    v85.size.height = v63;
    v84.origin.x = 0.0;
    v84.origin.y = 0.0;
    v84.size.width = v54;
    v84.size.height = v57;
    if (!CGRectEqualToRect(v84, v85))
    {
      v66 = objc_msgSend_width(v43, v64, v65);
      v69 = objc_msgSend_height(v43, v67, v68);
      v72 = objc_msgSend_imageByCroppingToRect_(v50, v70, v71, 0.0, 0.0, v66, v69);

      v50 = v72;
    }

    v80 = 0;
    v73 = objc_msgSend_startTaskToRender_toDestination_error_(v30, v64, v50, v47, &v80);
    v74 = v80;
    v79[0] = v14;
    v79[1] = v43;
    v76 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v75, v79, 2);
  }

  else
  {
    v76 = 0;
  }

  return v76;
}

- (id)outputImage:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_copy(self, v5, v6);
  v10 = objc_msgSend_inputs(v7, v8, v9);
  v12 = objc_msgSend_objectForKeyedSubscript_(v10, v11, @"name");

  if (!v12)
  {
    sub_2956CD278();
  }

  v14 = objc_msgSend_filterWithName_(MEMORY[0x29EDB9170], v13, v12);
  objc_msgSend_setFilter_(v7, v15, v14);

  v18 = objc_msgSend_filter(v7, v16, v17);
  if (!v18)
  {
    sub_2956CD24C();
  }

  v122 = v12;
  v123 = v4;

  v21 = objc_msgSend_filter(v7, v19, v20);
  objc_msgSend_setDefaults(v21, v22, v23);

  v24 = MEMORY[0x29EDB8E50];
  v27 = objc_msgSend_filter(v7, v25, v26);
  v30 = objc_msgSend_inputKeys(v27, v28, v29);
  v126 = objc_msgSend_setWithArray_(v24, v31, v30);

  v33 = objc_msgSend_setWithSet_(MEMORY[0x29EDB8E20], v32, v126);
  v36 = objc_msgSend_filter(v7, v34, v35);
  v125 = objc_msgSend_attributes(v36, v37, v38);

  v141 = 0u;
  v142 = 0u;
  v139 = 0u;
  v140 = 0u;
  v128 = v7;
  v41 = objc_msgSend_inputs(v7, v39, v40);
  v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v41, v42, &v139, v138, 16);
  v45 = v33;
  v124 = v33;
  if (v43)
  {
    v46 = v43;
    v47 = *v140;
    v48 = *MEMORY[0x29EDB9258];
    v127 = *MEMORY[0x29EDB91A8];
    while (2)
    {
      for (i = 0; i != v46; ++i)
      {
        if (*v140 != v47)
        {
          objc_enumerationMutation(v41);
        }

        v50 = *(*(&v139 + 1) + 8 * i);
        if ((objc_msgSend_isEqualToString_(v50, v44, @"name") & 1) == 0 && (objc_msgSend_isEqualToString_(v50, v44, v48) & 1) == 0)
        {
          v51 = v41;
          if ((objc_msgSend_containsObject_(v126, v44, v50) & 1) == 0)
          {
            v61 = uni_logger_api();
            if (!os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
            {
              v108 = 0;
              v74 = v128;
              v119 = v122;
              v75 = v123;
              goto LABEL_44;
            }

            v119 = v122;
            sub_2956CD0EC(v50, v122);
            goto LABEL_43;
          }

          v54 = v48;
          v55 = objc_msgSend_inputs(v128, v52, v53);
          v57 = objc_msgSend_objectForKeyedSubscript_(v55, v56, v50);

          v61 = objc_msgSend_objectForKeyedSubscript_(v125, v58, v50);
          if (v61)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v62 = objc_msgSend_objectForKeyedSubscript_(v61, v59, v127);
              v63 = v62;
              if (v62)
              {
                v64 = NSClassFromString(v62);
              }

              else
              {
                v64 = 0;
              }

              if (objc_opt_class() == v64 || objc_opt_class() == v64)
              {
                v66 = objc_msgSend__ciImageForInput_(v128, v65, v57);

                v57 = v66;
              }

              v45 = v124;
            }
          }

          if (!v57)
          {
            v120 = uni_logger_api();
            v119 = v122;
            if (os_log_type_enabled(v120, OS_LOG_TYPE_ERROR))
            {
              sub_2956CD170(v122, v50);
            }

LABEL_43:
            v108 = 0;
            v74 = v128;
            v75 = v123;
            goto LABEL_44;
          }

          v67 = objc_msgSend_filter(v128, v59, v60);
          objc_msgSend_setValue_forKey_(v67, v68, v57, v50);

          objc_msgSend_removeObject_(v45, v69, v50);
          v41 = v51;
          v48 = v54;
        }
      }

      v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(v41, v44, &v139, v138, 16);
      if (v46)
      {
        continue;
      }

      break;
    }
  }

  v74 = v128;
  v75 = v123;
  if (objc_msgSend_count(v45, v70, v71))
  {
    v136 = 0u;
    v137 = 0u;
    v134 = 0u;
    v135 = 0u;
    v76 = v45;
    v78 = objc_msgSend_countByEnumeratingWithState_objects_count_(v76, v77, &v134, v133, 16);
    if (v78)
    {
      v81 = v78;
      v82 = *v135;
      do
      {
        for (j = 0; j != v81; ++j)
        {
          if (*v135 != v82)
          {
            objc_enumerationMutation(v76);
          }

          v84 = *(*(&v134 + 1) + 8 * j);
          v85 = objc_msgSend_filter(v74, v79, v80);
          v87 = objc_msgSend_valueForKey_(v85, v86, v84);

          v88 = uni_logger_api();
          if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
          {
            v91 = MEMORY[0x29EDBA0F8];
            v92 = objc_msgSend_filter(v74, v89, v90);
            v93 = objc_opt_class();
            v96 = objc_msgSend_description(v93, v94, v95);
            v98 = objc_msgSend_stringWithFormat_(v91, v97, @"Using default value (%@) for key %@ because it was not set explicitly on filter %@", v87, v84, v96);
            v99 = v98;
            v102 = objc_msgSend_UTF8String(v99, v100, v101);
            *buf = 136446466;
            v130 = "[UniCIFilter outputImage:]";
            v131 = 2080;
            v132 = v102;
            _os_log_impl(&dword_295691000, v88, OS_LOG_TYPE_INFO, "%{public}s %s", buf, 0x16u);

            v74 = v128;
          }
        }

        v81 = objc_msgSend_countByEnumeratingWithState_objects_count_(v76, v79, &v134, v133, 16);
      }

      while (v81);
    }

    v75 = v123;
    v45 = v124;
  }

  v103 = objc_msgSend_filter(v74, v72, v73);
  v106 = objc_msgSend_outputImage(v103, v104, v105);

  if (!v106)
  {
    sub_2956CD220();
  }

  v51 = v106;
  v108 = objc_msgSend_imageWithCIImage_(UniImage, v107, v106);
  v111 = objc_msgSend_inputs(v74, v109, v110);
  v113 = objc_msgSend_objectForKeyedSubscript_(v111, v112, *MEMORY[0x29EDB9258]);
  objc_msgSend_setTexture_(v108, v114, v113);

  objc_msgSend_setKernel_(v108, v115, v74);
  v118 = objc_msgSend_texture(v108, v116, v117);
  if (!v118)
  {
    sub_2956CD1F4();
  }

  v61 = v118;
  v119 = v122;
LABEL_44:

  return v108;
}

- (id)outputImageArray
{
  v3 = objc_msgSend_inputs(self, a2, v2);
  v5 = objc_msgSend_objectForKeyedSubscript_(v3, v4, *MEMORY[0x29EDB9258]);
  v7 = objc_msgSend__mtlTextureForImage_(UniKernel, v6, v5);

  if (!v7)
  {
    sub_2956CD2A4();
  }

  v8 = rootTexture(v7);
  v12 = v8;
  v10 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v9, &v12, 1);

  return v10;
}

- (id)inputImageArray
{
  if (!self->filter)
  {
    sub_2956CD2D0();
  }

  v4 = objc_msgSend_inputNameArray(self, a2, v2);
  v5 = MEMORY[0x29EDB8DE8];
  v8 = objc_msgSend_count(v4, v6, v7);
  v26 = objc_msgSend_arrayWithCapacity_(v5, v9, v8);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v10 = v4;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v28, v27, 16);
  if (v12)
  {
    v14 = v12;
    v15 = *v29;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v29 != v15)
        {
          objc_enumerationMutation(v10);
        }

        v18 = objc_msgSend_valueForKey_(self->filter, v13, *(*(&v28 + 1) + 8 * i));
        if (v18)
        {
          v19 = objc_msgSend__mtlTextureForImage_(UniKernel, v17, v18);
          v20 = v19;
          if (v19)
          {
            v21 = rootTexture(v19);
            objc_msgSend_addObject_(v26, v22, v21);
          }
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v28, v27, 16);
    }

    while (v14);
  }

  v24 = objc_msgSend_arrayWithArray_(MEMORY[0x29EDB8D80], v23, v26);

  return v24;
}

- (id)inputNameArray
{
  filter = self->filter;
  if (!filter)
  {
    sub_2956CD2FC();
  }

  v4 = objc_msgSend_attributes(filter, a2, v2);
  v25 = objc_msgSend_array(MEMORY[0x29EDB8DE8], v5, v6);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = v4;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v27, v26, 16);
  if (v9)
  {
    v11 = v9;
    v12 = *v28;
    v13 = *MEMORY[0x29EDB91A8];
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v15 = *(*(&v27 + 1) + 8 * i);
        v16 = objc_msgSend_objectForKeyedSubscript_(v7, v10, v15);
        if (v16)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v18 = objc_msgSend_objectForKeyedSubscript_(v16, v17, v13);
            v19 = v18;
            if (v18)
            {
              v20 = NSClassFromString(v18);
            }

            else
            {
              v20 = 0;
            }

            if (objc_opt_class() == v20 || objc_opt_class() == v20)
            {
              objc_msgSend_addObject_(v25, v21, v15);
            }
          }
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v27, v26, 16);
    }

    while (v11);
  }

  v23 = objc_msgSend_arrayWithArray_(MEMORY[0x29EDB8D80], v22, v25);

  return v23;
}

- (id)outputNameArray
{
  v4 = *MEMORY[0x29EDB9258];
  v2 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], a2, &v4, 1);

  return v2;
}

@end
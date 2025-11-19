@interface UniKernelInternal
- (UniKernelInternal)initWithName:(id)a3 library:(id)a4 constants:(id)a5;
- (UniKernelInternal)initWithName:(id)a3 metalContext:(id)a4 coreImageLibrary:(id)a5 constants:(id)a6;
- (id)_dictToConstants:(id)a3 functionConstants:(id)a4 name:(id)a5;
@end

@implementation UniKernelInternal

- (id)_dictToConstants:(id)a3 functionConstants:(id)a4 name:(id)a5
{
  v7 = a3;
  v8 = a4;
  v120 = a5;
  if (v7)
  {
    v9 = objc_alloc_init(MEMORY[0x29EDBB5A8]);
    v10 = MEMORY[0x29EDB8E00];
    v119 = v7;
    v13 = objc_msgSend_count(v7, v11, v12);
    v15 = objc_msgSend_dictionaryWithCapacity_(v10, v14, v13);
    v18 = objc_msgSend_set(MEMORY[0x29EDB8E20], v16, v17);
    v151 = 0u;
    v152 = 0u;
    v153 = 0u;
    v154 = 0u;
    v117 = v8;
    v19 = v8;
    v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v151, v150, 16);
    if (v21)
    {
      v23 = v21;
      v24 = *v152;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v152 != v24)
          {
            objc_enumerationMutation(v19);
          }

          v26 = *(*(&v151 + 1) + 8 * i);
          v27 = objc_msgSend_objectForKeyedSubscript_(v19, v22, v26);
          if (objc_msgSend_required(v27, v28, v29))
          {
            objc_msgSend_addObject_(v18, v30, v26);
          }
        }

        v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v22, &v151, v150, 16);
      }

      while (v23);
    }

    v31 = MEMORY[0x29EDB8E50];
    v34 = objc_msgSend_allKeys(v19, v32, v33);
    v36 = objc_msgSend_setWithArray_(v31, v35, v34);

    v37 = MEMORY[0x29EDB8E50];
    v40 = objc_msgSend_allKeys(v119, v38, v39);
    v42 = objc_msgSend_setWithArray_(v37, v41, v40);

    v118 = v42;
    if ((objc_msgSend_isEqualToSet_(v36, v43, v42) & 1) == 0)
    {
      v45 = objc_msgSend_setWithSet_(MEMORY[0x29EDB8E20], v44, v36);
      objc_msgSend_minusSet_(v45, v46, v118);
      v47 = uni_logger_compile();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        v49 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v48, @"Potentially missing keys = %@", v45);
        v50 = v49;
        *buf = 136315138;
        v149 = objc_msgSend_UTF8String(v50, v51, v52);
        _os_log_impl(&dword_295691000, v47, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
      }
    }

    v116 = v36;
    v146 = 0u;
    v147 = 0u;
    v144 = 0u;
    v145 = 0u;
    v53 = v119;
    v129 = objc_msgSend_countByEnumeratingWithState_objects_count_(v53, v54, &v144, v143, 16);
    if (v129)
    {
      v128 = *v145;
      v123 = v53;
      v124 = v18;
      v121 = v15;
      v122 = v9;
      v127 = v19;
      do
      {
        for (j = 0; j != v129; ++j)
        {
          if (*v145 != v128)
          {
            objc_enumerationMutation(v53);
          }

          v57 = *(*(&v144 + 1) + 8 * j);
          v58 = objc_msgSend_objectForKeyedSubscript_(v53, v55, v57);
          objc_msgSend_setObject_forKeyedSubscript_(v15, v59, v58, v57);

          v61 = objc_msgSend_objectForKeyedSubscript_(v19, v60, v57);

          if (v61)
          {
            v63 = objc_msgSend_objectForKeyedSubscript_(v19, v62, v57);
            v66 = objc_msgSend_type(v63, v64, v65);

            v142 = 0;
            v141 = 0;
            v67 = numComponentsForType(v66, &v141, &v142);
            v68 = v67;
            if (v67)
            {
              v69 = v141 == 0;
            }

            else
            {
              v69 = 1;
            }

            v70 = v69 || v142 == 0;
            if (v70 || (v72 = malloc_type_malloc(v142 * v67, 0x8D036B3CuLL)) == 0)
            {
              v73 = uni_logger_compile();
              if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
              {
                v92 = MEMORY[0x29EDBA0F8];
                v93 = v142 * v68;
                v126 = MTLDataTypeAsString(v66, v74);
                v95 = objc_msgSend_stringWithFormat_(v92, v94, @"Unable to allocate %lu bytes for %lu elements of type %@ for key %@", v93, v68, v126, v57);
                v96 = v95;
                v99 = objc_msgSend_UTF8String(v96, v97, v98);
                *buf = 136315138;
                v149 = v99;
                _os_log_error_impl(&dword_295691000, v73, OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);

                v53 = v123;
                v18 = v124;
              }

              v72 = 0;
            }

            v75 = objc_msgSend_objectForKeyedSubscript_(v53, v71, v57);
            v76 = v75;
            if (v68 == 1)
            {
              if (!v75 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
              {
                sub_2956CE33C();
              }

              packSingleValue(v76, 0, 0, v141, v72);
            }

            else
            {
              if (!v75 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || objc_msgSend_count(v76, v79, v80) != v68)
              {
                sub_2956CE310();
              }

              v125 = v66;
              v139 = 0u;
              v140 = 0u;
              v137 = 0u;
              v138 = 0u;
              v81 = v76;
              v83 = objc_msgSend_countByEnumeratingWithState_objects_count_(v81, v82, &v137, v136, 16);
              if (v83)
              {
                v84 = v83;
                v85 = 0;
                v86 = *v138;
                do
                {
                  v87 = 0;
                  v88 = v85;
                  do
                  {
                    if (*v138 != v86)
                    {
                      objc_enumerationMutation(v81);
                    }

                    v85 = v88 + 1;
                    packSingleValue(*(*(&v137 + 1) + 8 * v87++), v88++, 0, v141, v72);
                  }

                  while (v84 != v87);
                  v84 = objc_msgSend_countByEnumeratingWithState_objects_count_(v81, v89, &v137, v136, 16);
                }

                while (v84);
              }

              v15 = v121;
              v9 = v122;
              v53 = v123;
              v18 = v124;
              v66 = v125;
            }

            objc_msgSend_setConstantValue_type_withName_(v9, v90, v72, v66, v57);
            free(v72);
            objc_msgSend_removeObject_(v18, v91, v57);
            v19 = v127;
          }

          else
          {
            v77 = uni_logger_compile();
            if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
            {
              v100 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v78, @"%@ is not a valid function constant for %@", v57, v120);
              v101 = v100;
              v104 = objc_msgSend_UTF8String(v101, v102, v103);
              *buf = 136315138;
              v149 = v104;
              _os_log_error_impl(&dword_295691000, v77, OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
            }
          }
        }

        v129 = objc_msgSend_countByEnumeratingWithState_objects_count_(v53, v55, &v144, v143, 16);
      }

      while (v129);
    }

    v134 = 0u;
    v135 = 0u;
    v132 = 0u;
    v133 = 0u;
    v105 = v18;
    v107 = objc_msgSend_countByEnumeratingWithState_objects_count_(v105, v106, &v132, v131, 16);
    v109 = v105;
    v8 = v117;
    if (v107)
    {
      v110 = v107;
      v111 = *v133;
      while (2)
      {
        for (k = 0; k != v110; ++k)
        {
          if (*v133 != v111)
          {
            objc_enumerationMutation(v105);
          }

          if (*(*(&v132 + 1) + 8 * k))
          {

            v109 = uni_logger_compile();
            if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
            {
              sub_2956CE368(v120, v105);
            }

            goto LABEL_65;
          }
        }

        v110 = objc_msgSend_countByEnumeratingWithState_objects_count_(v105, v108, &v132, v131, 16);
        if (v110)
        {
          continue;
        }

        break;
      }

      v109 = v105;
    }

LABEL_65:

    v130[0] = v9;
    v130[1] = v15;
    v113 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v114, v130, 2);

    v7 = v119;
  }

  else
  {
    v113 = 0;
  }

  return v113;
}

- (UniKernelInternal)initWithName:(id)a3 metalContext:(id)a4 coreImageLibrary:(id)a5 constants:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v53.receiver = self;
  v53.super_class = UniKernelInternal;
  v14 = [(UniKernelInternal *)&v53 init];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v15 = uni_activity();
  v16 = _os_activity_create(&dword_295691000, "compile", v15, OS_ACTIVITY_FLAG_DEFAULT);

  os_activity_scope_enter(v16, &state);
  if (!v14)
  {
    goto LABEL_19;
  }

  v50 = v12;
  v19 = objc_msgSend_library(v11, v17, v18);
  v21 = objc_msgSend_newFunctionWithName_(v19, v20, v10);

  if (!v13)
  {
    objc_msgSend_setConstants_(v14, v22, 0);
    goto LABEL_7;
  }

  v24 = objc_msgSend_functionConstantsDictionary(v21, v22, v23);

  if (!v24)
  {
LABEL_7:
    v29 = 0;
    goto LABEL_8;
  }

  v27 = objc_msgSend_functionConstantsDictionary(v21, v25, v26);
  v29 = objc_msgSend__dictToConstants_functionConstants_name_(v14, v28, v13, v27, v10);

  objc_msgSend_setConstants_(v14, v30, v13);
  if (!v29)
  {
LABEL_8:
    v31 = 0;
    v33 = MEMORY[0x29EDB8EA0];
    goto LABEL_9;
  }

  v31 = objc_msgSend_objectAtIndexedSubscript_(v29, v25, 0);
  v33 = objc_msgSend_objectAtIndexedSubscript_(v29, v32, 1);
LABEL_9:
  if (!v21)
  {
    sub_2956CE488();
  }

  if (v50)
  {
    v34 = objc_msgSend_kernelWithFunctionName_constants_(v50, v25, v10, v33);
    objc_msgSend_setCk_(v14, v35, v34);
  }

  v51 = 0;
  v36 = objc_msgSend_computePipelineStateFor_constants_additionnalPipelineOptions_reflection_(v11, v25, v10, v31, 3, &v51);
  objc_msgSend_setMk_(v14, v37, v36);

  v40 = objc_msgSend_mk(v14, v38, v39);

  if (v40)
  {
    v43 = objc_msgSend_arguments(v51, v41, v42);
    objc_msgSend_setArguments_(v14, v44, v43);

    v47 = objc_msgSend_arguments(v14, v45, v46);
    if (!v47)
    {
      sub_2956CE3E4();
    }
  }

  else
  {

    v47 = uni_logger_compile();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      sub_2956CE410(v47, v48);
    }

    v14 = 0;
  }

  v12 = v50;
LABEL_19:
  os_activity_scope_leave(&state);

  return v14;
}

- (UniKernelInternal)initWithName:(id)a3 library:(id)a4 constants:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v13 = objc_msgSend_metalContext(v9, v11, v12);
  v16 = objc_msgSend_coreImageLibrary(v9, v14, v15);

  v18 = objc_msgSend_initWithName_metalContext_coreImageLibrary_constants_(self, v17, v10, v13, v16, v8);
  return v18;
}

@end
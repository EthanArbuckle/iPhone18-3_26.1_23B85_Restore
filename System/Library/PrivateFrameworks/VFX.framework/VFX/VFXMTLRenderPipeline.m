@interface VFXMTLRenderPipeline
- (BOOL)matchesRenderPassDescriptor:(id)a3;
- (VFXMTLRenderPipeline)init;
- (id)description;
- (void)_computeUsageForBindings:(id)a3 function:(id)a4;
- (void)dealloc;
@end

@implementation VFXMTLRenderPipeline

- (VFXMTLRenderPipeline)init
{
  v3.receiver = self;
  v3.super_class = VFXMTLRenderPipeline;
  result = [(VFXMTLRenderPipeline *)&v3 init];
  if (result)
  {
    result->_worldBuffer = -1;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXMTLRenderPipeline;
  [(VFXMTLRenderPipeline *)&v3 dealloc];
}

- (id)description
{
  v107 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_string(MEMORY[0x1E696AD60], a2, v2, v3);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  objc_msgSend_appendFormat_(v5, v8, @"<%@: %p>", v9, v7, self);
  objc_msgSend_appendFormat_(v5, v10, @"<state: %@>", v11, self->_state);
  if (self->_frameBufferBindings)
  {
    objc_msgSend_appendString_(v5, v12, @"\n\tFrameBuffer bindings:\n", v13);
    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    frameBufferBindings = self->_frameBufferBindings;
    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(frameBufferBindings, v15, &v98, v106, 16);
    if (v16)
    {
      v17 = v16;
      v18 = *v99;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v99 != v18)
          {
            objc_enumerationMutation(frameBufferBindings);
          }

          v20 = *(*(&v98 + 1) + 8 * i);
          objc_msgSend_appendString_(v5, v12, @"\t\t", v13);
          v24 = objc_msgSend_name(v20, v21, v22, v23);
          objc_msgSend_appendString_(v5, v25, v24, v26);
        }

        v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(frameBufferBindings, v12, &v98, v106, 16);
      }

      while (v17);
    }
  }

  if (self->_nodeBufferBindings)
  {
    objc_msgSend_appendString_(v5, v12, @"\n\tNode bindings:\n", v13);
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    nodeBufferBindings = self->_nodeBufferBindings;
    v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(nodeBufferBindings, v28, &v94, v105, 16);
    if (v29)
    {
      v30 = v29;
      v31 = *v95;
      do
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v95 != v31)
          {
            objc_enumerationMutation(nodeBufferBindings);
          }

          v33 = *(*(&v94 + 1) + 8 * j);
          objc_msgSend_appendString_(v5, v12, @"\t\t", v13);
          v37 = objc_msgSend_name(v33, v34, v35, v36);
          objc_msgSend_appendString_(v5, v38, v37, v39);
        }

        v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(nodeBufferBindings, v12, &v94, v105, 16);
      }

      while (v30);
    }
  }

  if (self->_passBufferBindings)
  {
    objc_msgSend_appendString_(v5, v12, @"\n\tPass bindings:\n", v13);
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    passBufferBindings = self->_passBufferBindings;
    v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(passBufferBindings, v41, &v90, v104, 16);
    if (v42)
    {
      v43 = v42;
      v44 = *v91;
      do
      {
        for (k = 0; k != v43; ++k)
        {
          if (*v91 != v44)
          {
            objc_enumerationMutation(passBufferBindings);
          }

          v46 = *(*(&v90 + 1) + 8 * k);
          objc_msgSend_appendString_(v5, v12, @"\t\t", v13);
          v50 = objc_msgSend_name(v46, v47, v48, v49);
          objc_msgSend_appendString_(v5, v51, v50, v52);
        }

        v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(passBufferBindings, v12, &v90, v104, 16);
      }

      while (v43);
    }
  }

  if (self->_shadableBufferBindings)
  {
    objc_msgSend_appendString_(v5, v12, @"\n\tShadable bindings:\n", v13);
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    shadableBufferBindings = self->_shadableBufferBindings;
    v55 = objc_msgSend_countByEnumeratingWithState_objects_count_(shadableBufferBindings, v54, &v86, v103, 16);
    if (v55)
    {
      v56 = v55;
      v57 = *v87;
      do
      {
        for (m = 0; m != v56; ++m)
        {
          if (*v87 != v57)
          {
            objc_enumerationMutation(shadableBufferBindings);
          }

          v59 = *(*(&v86 + 1) + 8 * m);
          objc_msgSend_appendString_(v5, v12, @"\t\t", v13);
          v63 = objc_msgSend_name(v59, v60, v61, v62);
          objc_msgSend_appendString_(v5, v64, v63, v65);
        }

        v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(shadableBufferBindings, v12, &v86, v103, 16);
      }

      while (v56);
    }
  }

  if (self->_lightBufferBindings)
  {
    objc_msgSend_appendString_(v5, v12, @"\n\tLight bindings:\n", v13);
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    lightBufferBindings = self->_lightBufferBindings;
    v68 = objc_msgSend_countByEnumeratingWithState_objects_count_(lightBufferBindings, v67, &v82, v102, 16);
    if (v68)
    {
      v71 = v68;
      v72 = *v83;
      do
      {
        for (n = 0; n != v71; ++n)
        {
          if (*v83 != v72)
          {
            objc_enumerationMutation(lightBufferBindings);
          }

          v74 = *(*(&v82 + 1) + 8 * n);
          objc_msgSend_appendString_(v5, v69, @"\t\t", v70);
          v78 = objc_msgSend_name(v74, v75, v76, v77);
          objc_msgSend_appendString_(v5, v79, v78, v80);
        }

        v71 = objc_msgSend_countByEnumeratingWithState_objects_count_(lightBufferBindings, v69, &v82, v102, 16);
      }

      while (v71);
    }
  }

  return v5;
}

- (BOOL)matchesRenderPassDescriptor:(id)a3
{
  v6 = 0;
  p_renderPassDesc = &self->_renderPassDesc;
  while (1)
  {
    v8 = objc_msgSend_colorAttachments(a3, a2, a3, v3);
    v11 = objc_msgSend_objectAtIndexedSubscript_(v8, v9, v6, v10);
    v15 = objc_msgSend_texture(v11, v12, v13, v14);
    v16 = p_renderPassDesc->colorFormat[v6];
    if (v16 != objc_msgSend_pixelFormat(v15, v17, v18, v19))
    {
      break;
    }

    if (v15)
    {
      sampleCount = self->_renderPassDesc.sampleCount;
      if (objc_msgSend_sampleCount(v15, a2, a3, v3) != sampleCount)
      {
        break;
      }
    }

    if (++v6 == 8)
    {
      v21 = objc_msgSend_depthAttachment(a3, a2, a3, v3);
      v25 = objc_msgSend_texture(v21, v22, v23, v24);
      depthFormat = self->_renderPassDesc.depthFormat;
      if (depthFormat == objc_msgSend_pixelFormat(v25, v27, v28, v29))
      {
        if (!v25 || (v33 = self->_renderPassDesc.sampleCount, objc_msgSend_sampleCount(v25, v30, v31, v32) == v33))
        {
          v34 = objc_msgSend_stencilAttachment(a3, v30, v31, v32);
          v38 = objc_msgSend_texture(v34, v35, v36, v37);
          stencilFormat = self->_renderPassDesc.stencilFormat;
          if (stencilFormat == objc_msgSend_pixelFormat(v38, v40, v41, v42))
          {
            if (!v38)
            {
              return 1;
            }

            v46 = self->_renderPassDesc.sampleCount;
            if (objc_msgSend_sampleCount(v38, v43, v44, v45) == v46)
            {
              return 1;
            }
          }
        }
      }

      return 0;
    }
  }

  return 0;
}

- (void)_computeUsageForBindings:(id)a3 function:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_functionType(a4, a2, a3, a4);
  v8 = sub_1AF1F1F6C(v6);
  if (v8 >= 2)
  {
    v9 = sub_1AF0D5194();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDEA72C(v9, v7, v10, v11, v12, v13, v14, v15);
    }
  }

  buffersUsageMask = self->_buffersUsageMask;
  self->_buffersUsageMask[v8] = 0;
  texturesUsageMask = self->_texturesUsageMask;
  self->_texturesUsageMask[v8] = 0;
  samplersUsageMask = self->_samplersUsageMask;
  self->_samplersUsageMask[v8] = 0;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(a3, v7, &v31, v35, 16);
  if (v19)
  {
    v23 = v19;
    v24 = *v32;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v32 != v24)
        {
          objc_enumerationMutation(a3);
        }

        v26 = *(*(&v31 + 1) + 8 * i);
        v27 = objc_msgSend_type(v26, v20, v21, v22);
        if (v27 > 2)
        {
          if ((v27 - 16) < 2)
          {
            continue;
          }

          if (v27 == 3)
          {
            samplersUsageMask[v8] |= 1 << objc_msgSend_index(v26, v20, v21, v22);
            continue;
          }
        }

        else
        {
          switch(v27)
          {
            case 0:
              buffersUsageMask[v8] |= 1 << objc_msgSend_index(v26, v20, v21, v22);
              continue;
            case 1:
              continue;
            case 2:
              texturesUsageMask[v8] |= 1 << objc_msgSend_index(v26, v20, v21, v22);
              continue;
          }
        }

        v28 = sub_1AF0D5194();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDEA7A4(&v29, v30, v28);
        }
      }

      v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(a3, v20, &v31, v35, 16);
    }

    while (v23);
  }
}

@end
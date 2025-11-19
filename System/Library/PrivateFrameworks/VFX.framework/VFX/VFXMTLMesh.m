@interface VFXMTLMesh
- (id)description;
- (void)buildTessellationVertexDescriptorIfNeeded;
- (void)dealloc;
@end

@implementation VFXMTLMesh

- (void)buildTessellationVertexDescriptorIfNeeded
{
  if (!self->_tessellationVertexDescriptor)
  {
    v22 = v5;
    v23 = v4;
    if (!self->_vertexDescriptor)
    {
      v7 = sub_1AF0D5194();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDEA7E4(v7, a2, v2, v3, v8, v9, v10, v11);
      }
    }

    v12 = 0;
    self->_tessellationVertexDescriptor = objc_msgSend_copy(self->_vertexDescriptor, a2, v2, v3, v22, v23);
    do
    {
      v16 = objc_msgSend_layouts(self->_tessellationVertexDescriptor, v13, v14, v15);
      v19 = objc_msgSend_objectAtIndexedSubscript_(v16, v17, v12, v18);
      objc_msgSend_setStepFunction_(v19, v20, 4, v21);
      ++v12;
    }

    while (v12 != 31);
    self->_tessellationVertexDescriptorHash = objc_msgSend_hash(self->_tessellationVertexDescriptor, v13, v14, v15);
  }
}

- (id)description
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AD60], a2, @"<VFXMTLMesh: %p\n", v2, self);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  buffers = self->_buffers;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(buffers, v6, &v29, v34, 16);
  if (v7)
  {
    v10 = v7;
    v11 = 0;
    v12 = *v30;
    do
    {
      v13 = 0;
      v14 = v11;
      do
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(buffers);
        }

        v11 = (v14 + 1);
        objc_msgSend_appendFormat_(v4, v8, @"\tbuffer[%d] : %@\n", v9, v14, *(*(&v29 + 1) + 8 * v13++));
        v14 = v11;
      }

      while (v10 != v13);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(buffers, v8, &v29, v34, 16);
    }

    while (v10);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  elements = self->_elements;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(elements, v8, &v25, v33, 16);
  if (v16)
  {
    v19 = v16;
    v20 = 0;
    v21 = *v26;
    do
    {
      v22 = 0;
      v23 = v20;
      do
      {
        if (*v26 != v21)
        {
          objc_enumerationMutation(elements);
        }

        v20 = (v23 + 1);
        objc_msgSend_appendFormat_(v4, v17, @"\telement[%d] : %@\n", v18, v23, *(*(&v25 + 1) + 8 * v22++));
        v23 = v20;
      }

      while (v19 != v22);
      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(elements, v17, &v25, v33, 16);
    }

    while (v19);
  }

  objc_msgSend_appendString_(v4, v17, @">", v18);
  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXMTLMesh;
  [(VFXMTLMesh *)&v3 dealloc];
}

@end
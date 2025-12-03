@interface UniRunInfo
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)getThreadgroupsPerGrid;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)getThreadsPerThreadgroup;
- (CGRect)outputExtent;
- (UniImage)image;
- (UniRunInfo)initWithExtent:(CGRect)extent;
- (UniRunInfo)initWithGridSize:(id *)size kernel:(id)kernel;
- (UniRunInfo)initWithGridSize:(id *)size threadsPerThreadGroup:(id *)group;
- (UniRunInfo)initWithImage:(id)image;
- (UniRunInfo)initWithImageDiv2:(id)div2;
- (UniRunInfo)initWithIndirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset threadsPerThreadgroup:(id *)threadgroup;
- (UniRunInfo)initWithThreadgroupsPerGrid:(id *)grid threadsPerThreadGroup:(id *)group;
- (id)_init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugQuickLookObject;
- (id)description;
- (void)dispatchOn:(id)on;
- (void)setCoreImageOutputExtent:(CGRect)extent;
@end

@implementation UniRunInfo

- (id)_init
{
  v12.receiver = self;
  v12.super_class = UniRunInfo;
  v2 = [(UniRunInfo *)&v12 init];
  v3 = v2;
  if (v2)
  {
    indirectBuffer = v2->_indirectBuffer;
    v2->_indirectBuffer = 0;

    indirectBufferOffset = v3->_indirectBufferOffset;
    v3->_indirectBufferOffset = 0;

    threadsPerThreadgroup = v3->_threadsPerThreadgroup;
    v7 = MEMORY[0x29EDB8E90];
    v3->_threadsPerThreadgroup = MEMORY[0x29EDB8E90];

    threadsPerGrid = v3->_threadsPerGrid;
    v3->_threadsPerGrid = v7;

    threadgroupsPerGrid = v3->_threadgroupsPerGrid;
    v3->_threadgroupsPerGrid = 0;

    objc_storeWeak(&v3->_image, 0);
    extent = v3->_extent;
    v3->_extent = v7;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v12 = objc_msgSend__init(v7, v8, v9);
  if (v12)
  {
    v13 = objc_msgSend_indirectBuffer(self, v10, v11);
    objc_msgSend_setIndirectBuffer_(v12, v14, v13);

    v17 = objc_msgSend_image(self, v15, v16);
    objc_msgSend_setImage_(v12, v18, v17);

    v21 = objc_msgSend_indirectBufferOffset(self, v19, v20);
    objc_msgSend_setIndirectBufferOffset_(v12, v22, v21);

    v25 = objc_msgSend_threadsPerGrid(self, v23, v24);
    objc_msgSend_setThreadsPerGrid_(v12, v26, v25);

    v29 = objc_msgSend_threadsPerThreadgroup(self, v27, v28);
    objc_msgSend_setThreadsPerThreadgroup_(v12, v30, v29);

    v33 = objc_msgSend_threadgroupsPerGrid(self, v31, v32);
    objc_msgSend_setThreadgroupsPerGrid_(v12, v34, v33);

    v37 = objc_msgSend_extent(self, v35, v36);
    objc_msgSend_setExtent_(v12, v38, v37);
  }

  return v12;
}

- (UniRunInfo)initWithImage:(id)image
{
  imageCopy = image;
  v9 = objc_msgSend__init(self, v5, v6);
  if (v9)
  {
    v10 = objc_msgSend_texture(imageCopy, v7, v8);
    v13 = objc_msgSend_kernel(imageCopy, v11, v12);
    if (v13)
    {
      v16 = v13;
      v17 = objc_msgSend_kernel(imageCopy, v14, v15);
      v20 = objc_msgSend_mk(v17, v18, v19);

      if (v10 && v20)
      {
        objc_msgSend_setImage_(v9, v21, imageCopy);
        objc_msgSend_setIndirectBuffer_(v9, v22, 0);
        objc_msgSend_setIndirectBufferOffset_(v9, v23, 0);
        v24 = MEMORY[0x29EDBA070];
        v27 = objc_msgSend_width(v10, v25, v26);
        v29 = objc_msgSend_numberWithUnsignedInteger_(v24, v28, v27);
        v65[0] = v29;
        v30 = MEMORY[0x29EDBA070];
        v33 = objc_msgSend_height(v10, v31, v32);
        v35 = objc_msgSend_numberWithUnsignedInteger_(v30, v34, v33);
        v65[1] = v35;
        v65[2] = &unk_2A1C94BD0;
        v37 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v36, v65, 3);
        objc_msgSend_setThreadsPerGrid_(v9, v38, v37);

        v39 = MEMORY[0x29EDBA070];
        v42 = objc_msgSend_threadExecutionWidth(v20, v40, v41);
        v44 = objc_msgSend_numberWithUnsignedInteger_(v39, v43, v42);
        v45 = MEMORY[0x29EDBA070];
        v48 = objc_msgSend_maxTotalThreadsPerThreadgroup(v20, v46, v47, v44);
        v51 = objc_msgSend_threadExecutionWidth(v20, v49, v50);
        v53 = objc_msgSend_numberWithUnsignedInteger_(v45, v52, v48 / v51);
        v64[1] = v53;
        v64[2] = &unk_2A1C94BD0;
        v55 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v54, v64, 3);
        objc_msgSend_setThreadsPerThreadgroup_(v9, v56, v55);

        objc_msgSend_setThreadgroupsPerGrid_(v9, v57, 0);
        v60 = objc_msgSend_image(imageCopy, v58, v59);
        v61 = sub_2956C20F4(v60);
        objc_msgSend_setExtent_(v9, v62, v61);

        goto LABEL_8;
      }
    }

    else
    {
      v20 = 0;
    }

    v9 = 0;
  }

LABEL_8:

  return v9;
}

- (UniRunInfo)initWithImageDiv2:(id)div2
{
  div2Copy = div2;
  v9 = objc_msgSend__init(self, v5, v6);
  if (v9)
  {
    v10 = objc_msgSend_texture(div2Copy, v7, v8);
    v13 = objc_msgSend_kernel(div2Copy, v11, v12);
    if (v13)
    {
      v16 = v13;
      v17 = objc_msgSend_kernel(div2Copy, v14, v15);
      v20 = objc_msgSend_mk(v17, v18, v19);

      if (v10 && v20)
      {
        objc_msgSend_setImage_(v9, v21, div2Copy);
        objc_msgSend_setIndirectBuffer_(v9, v22, 0);
        objc_msgSend_setIndirectBufferOffset_(v9, v23, 0);
        v24 = MEMORY[0x29EDBA070];
        v27 = objc_msgSend_width(v10, v25, v26);
        v29 = objc_msgSend_numberWithUnsignedInteger_(v24, v28, v27 >> 1);
        v65[0] = v29;
        v30 = MEMORY[0x29EDBA070];
        v33 = objc_msgSend_height(v10, v31, v32);
        v35 = objc_msgSend_numberWithUnsignedInteger_(v30, v34, v33 >> 1);
        v65[1] = v35;
        v65[2] = &unk_2A1C94BD0;
        v37 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v36, v65, 3);
        objc_msgSend_setThreadsPerGrid_(v9, v38, v37);

        v39 = MEMORY[0x29EDBA070];
        v42 = objc_msgSend_threadExecutionWidth(v20, v40, v41);
        v44 = objc_msgSend_numberWithUnsignedInteger_(v39, v43, v42);
        v45 = MEMORY[0x29EDBA070];
        v48 = objc_msgSend_maxTotalThreadsPerThreadgroup(v20, v46, v47, v44);
        v51 = objc_msgSend_threadExecutionWidth(v20, v49, v50);
        v53 = objc_msgSend_numberWithUnsignedInteger_(v45, v52, v48 / v51);
        v64[1] = v53;
        v64[2] = &unk_2A1C94BD0;
        v55 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v54, v64, 3);
        objc_msgSend_setThreadsPerThreadgroup_(v9, v56, v55);

        objc_msgSend_setThreadgroupsPerGrid_(v9, v57, 0);
        v60 = objc_msgSend_image(div2Copy, v58, v59);
        v61 = sub_2956C20F4(v60);
        objc_msgSend_setExtent_(v9, v62, v61);

        goto LABEL_8;
      }
    }

    else
    {
      v20 = 0;
    }

    v9 = 0;
  }

LABEL_8:

  return v9;
}

- (UniRunInfo)initWithThreadgroupsPerGrid:(id *)grid threadsPerThreadGroup:(id *)group
{
  v6 = objc_msgSend__init(self, a2, grid);
  v8 = v6;
  if (v6)
  {
    objc_msgSend_setImage_(v6, v7, 0);
    objc_msgSend_setIndirectBuffer_(v8, v9, 0);
    objc_msgSend_setIndirectBufferOffset_(v8, v10, 0);
    v11 = MEMORY[0x29EDB8E90];
    objc_msgSend_setThreadsPerGrid_(v8, v12, MEMORY[0x29EDB8E90]);
    var0 = group->var0;
    var1 = group->var1;
    var2 = group->var2;
    v17 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x29EDBA070], v16, var0);
    v39 = v17;
    v19 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x29EDBA070], v18, var1);
    v40 = v19;
    v21 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x29EDBA070], v20, var2);
    v41 = v21;
    v23 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v22, &v39, 3);

    objc_msgSend_setThreadsPerThreadgroup_(v8, v24, v23);
    v25 = grid->var0;
    v26 = grid->var1;
    v27 = grid->var2;
    v29 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x29EDBA070], v28, v25);
    v39 = v29;
    v31 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x29EDBA070], v30, v26);
    v40 = v31;
    v33 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x29EDBA070], v32, v27);
    v41 = v33;
    v35 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v34, &v39, 3);

    objc_msgSend_setThreadgroupsPerGrid_(v8, v36, v35);
    objc_msgSend_setExtent_(v8, v37, v11);
  }

  return v8;
}

- (void)setCoreImageOutputExtent:(CGRect)extent
{
  height = extent.size.height;
  width = extent.size.width;
  y = extent.origin.y;
  v8 = objc_msgSend_numberWithDouble_(MEMORY[0x29EDBA070], a2, v3, extent.origin.x);
  v11 = objc_msgSend_numberWithDouble_(MEMORY[0x29EDBA070], v9, v10, y, v8);
  v21[1] = v11;
  v14 = objc_msgSend_numberWithDouble_(MEMORY[0x29EDBA070], v12, v13, width);
  v21[2] = v14;
  v17 = objc_msgSend_numberWithDouble_(MEMORY[0x29EDBA070], v15, v16, height);
  v21[3] = v17;
  v19 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v18, v21, 4);
  objc_msgSend_setExtent_(self, v20, v19);
}

- (UniRunInfo)initWithGridSize:(id *)size threadsPerThreadGroup:(id *)group
{
  v6 = objc_msgSend__init(self, a2, size);
  v8 = v6;
  if (v6)
  {
    objc_msgSend_setImage_(v6, v7, 0);
    objc_msgSend_setIndirectBuffer_(v8, v9, 0);
    objc_msgSend_setIndirectBufferOffset_(v8, v10, 0);
    var0 = size->var0;
    var1 = size->var1;
    var2 = size->var2;
    v15 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x29EDBA070], v14, var0);
    v38 = v15;
    v17 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x29EDBA070], v16, var1);
    v39 = v17;
    v19 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x29EDBA070], v18, var2);
    v40 = v19;
    v21 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v20, &v38, 3);

    objc_msgSend_setThreadsPerGrid_(v8, v22, v21);
    v23 = group->var0;
    v24 = group->var1;
    v25 = group->var2;
    v27 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x29EDBA070], v26, v23);
    v38 = v27;
    v29 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x29EDBA070], v28, v24);
    v39 = v29;
    v31 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x29EDBA070], v30, v25);
    v40 = v31;
    v33 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v32, &v38, 3);

    objc_msgSend_setThreadsPerThreadgroup_(v8, v34, v33);
    objc_msgSend_setThreadgroupsPerGrid_(v8, v35, 0);
    objc_msgSend_setExtent_(v8, v36, MEMORY[0x29EDB8E90]);
  }

  return v8;
}

- (UniRunInfo)initWithGridSize:(id *)size kernel:(id)kernel
{
  kernelCopy = kernel;
  v11 = objc_msgSend__init(self, v7, v8);
  if (v11)
  {
    v12 = objc_msgSend_mk(kernelCopy, v9, v10);
    objc_msgSend_setImage_(v11, v13, 0);
    objc_msgSend_setIndirectBuffer_(v11, v14, 0);
    objc_msgSend_setIndirectBufferOffset_(v11, v15, 0);
    var0 = size->var0;
    var1 = size->var1;
    var2 = size->var2;
    v20 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x29EDBA070], v19, var0);
    v50[0] = v20;
    v22 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x29EDBA070], v21, var1);
    v50[1] = v22;
    v24 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x29EDBA070], v23, var2);
    v50[2] = v24;
    v26 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v25, v50, 3);

    objc_msgSend_setThreadsPerGrid_(v11, v27, v26);
    v28 = MEMORY[0x29EDBA070];
    v31 = objc_msgSend_threadExecutionWidth(v12, v29, v30);
    v33 = objc_msgSend_numberWithUnsignedInteger_(v28, v32, v31);
    v34 = MEMORY[0x29EDBA070];
    v37 = objc_msgSend_maxTotalThreadsPerThreadgroup(v12, v35, v36, v33);
    v40 = objc_msgSend_threadExecutionWidth(v12, v38, v39);
    v42 = objc_msgSend_numberWithUnsignedInteger_(v34, v41, v37 / v40);
    v49[1] = v42;
    v49[2] = &unk_2A1C94BD0;
    v44 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v43, v49, 3);
    objc_msgSend_setThreadsPerThreadgroup_(v11, v45, v44);

    objc_msgSend_setThreadgroupsPerGrid_(v11, v46, 0);
    objc_msgSend_setExtent_(v11, v47, MEMORY[0x29EDB8E90]);
  }

  return v11;
}

- (UniRunInfo)initWithExtent:(CGRect)extent
{
  height = extent.size.height;
  width = extent.size.width;
  y = extent.origin.y;
  x = extent.origin.x;
  v8 = objc_msgSend__init(self, a2, v3);
  v10 = v8;
  if (v8)
  {
    objc_msgSend_setImage_(v8, v9, 0);
    objc_msgSend_setIndirectBuffer_(v10, v11, 0);
    objc_msgSend_setIndirectBufferOffset_(v10, v12, 0);
    v13 = MEMORY[0x29EDB8E90];
    objc_msgSend_setThreadsPerGrid_(v10, v14, MEMORY[0x29EDB8E90]);
    objc_msgSend_setThreadsPerThreadgroup_(v10, v15, v13);
    objc_msgSend_setThreadgroupsPerGrid_(v10, v16, v13);
    v19 = objc_msgSend_numberWithDouble_(MEMORY[0x29EDBA070], v17, v18, x);
    v22 = objc_msgSend_numberWithDouble_(MEMORY[0x29EDBA070], v20, v21, y, v19);
    v33[1] = v22;
    v25 = objc_msgSend_numberWithDouble_(MEMORY[0x29EDBA070], v23, v24, width);
    v33[2] = v25;
    v28 = objc_msgSend_numberWithDouble_(MEMORY[0x29EDBA070], v26, v27, height);
    v33[3] = v28;
    v30 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v29, v33, 4);
    objc_msgSend_setExtent_(v10, v31, v30);
  }

  return v10;
}

- (UniRunInfo)initWithIndirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset threadsPerThreadgroup:(id *)threadgroup
{
  bufferCopy = buffer;
  if (bufferCopy && threadgroup->var0 && threadgroup->var1 && threadgroup->var2)
  {
    v34.receiver = self;
    v34.super_class = UniRunInfo;
    v9 = [(UniRunInfo *)&v34 init];
    v11 = v9;
    if (v9)
    {
      objc_msgSend_setIndirectBuffer_(v9, v10, bufferCopy);
      v13 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x29EDBA070], v12, offset);
      objc_msgSend_setIndirectBufferOffset_(v11, v14, v13);

      var0 = threadgroup->var0;
      var1 = threadgroup->var1;
      var2 = threadgroup->var2;
      v19 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x29EDBA070], v18, var0);
      v35[0] = v19;
      v21 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x29EDBA070], v20, var1);
      v35[1] = v21;
      v23 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x29EDBA070], v22, var2);
      v35[2] = v23;
      v25 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v24, v35, 3);

      objc_msgSend_setThreadsPerThreadgroup_(v11, v26, v25);
      v27 = MEMORY[0x29EDB8E90];
      objc_msgSend_setThreadsPerGrid_(v11, v28, MEMORY[0x29EDB8E90]);
      objc_msgSend_setThreadgroupsPerGrid_(v11, v29, v27);
      objc_msgSend_setImage_(v11, v30, 0);
      objc_msgSend_setExtent_(v11, v31, v27);
    }

    self = v11;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)getThreadsPerThreadgroup
{
  if (self[1].var1 && (v4 = self, objc_opt_class(), self = objc_opt_isKindOfClass(), (self & 1) != 0) && (self = objc_msgSend_count(v4[1].var1, v5, v6), self == 3))
  {
    v21 = objc_msgSend_objectAtIndexedSubscript_(v4[1].var1, v7, 0);
    v10 = objc_msgSend_unsignedIntValue(v21, v8, v9);
    v12 = objc_msgSend_objectAtIndexedSubscript_(v4[1].var1, v11, 1);
    v15 = objc_msgSend_unsignedIntValue(v12, v13, v14);
    v17 = objc_msgSend_objectAtIndexedSubscript_(v4[1].var1, v16, 2);
    v20 = objc_msgSend_unsignedIntValue(v17, v18, v19);
    retstr->var0 = v10;
    retstr->var1 = v15;
    retstr->var2 = v20;
  }

  else
  {
    retstr->var0 = 0;
    retstr->var1 = 0;
    retstr->var2 = 0;
  }

  return self;
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)getThreadgroupsPerGrid
{
  if (self[2].var0 && (v4 = self, objc_opt_class(), self = objc_opt_isKindOfClass(), (self & 1) != 0) && (self = objc_msgSend_count(v4[2].var0, v5, v6), self == 3))
  {
    v21 = objc_msgSend_objectAtIndexedSubscript_(v4[2].var0, v7, 0);
    v10 = objc_msgSend_unsignedIntValue(v21, v8, v9);
    v12 = objc_msgSend_objectAtIndexedSubscript_(v4[2].var0, v11, 1);
    v15 = objc_msgSend_unsignedIntValue(v12, v13, v14);
    v17 = objc_msgSend_objectAtIndexedSubscript_(v4[2].var0, v16, 2);
    v20 = objc_msgSend_unsignedIntValue(v17, v18, v19);
    retstr->var0 = v10;
    retstr->var1 = v15;
    retstr->var2 = v20;
  }

  else
  {
    retstr->var0 = 0;
    retstr->var1 = 0;
    retstr->var2 = 0;
  }

  return self;
}

- (void)dispatchOn:(id)on
{
  onCopy = on;
  if (onCopy)
  {
    v29 = 0uLL;
    v30 = 0;
    sub_2956C315C(self->_threadsPerThreadgroup, &v29);
    v7 = v29;
    if (!v29)
    {
      sub_2956CF23C();
    }

    v8 = *(&v29 + 1);
    if (!*(&v29 + 1))
    {
      sub_2956CF210();
    }

    if (!v30)
    {
      sub_2956CF1E4();
    }

    indirectBuffer = self->_indirectBuffer;
    if (!indirectBuffer)
    {
      v27 = 0uLL;
      v28 = 0;
      sub_2956C315C(self->_threadsPerGrid, &v27);
      v25 = 0uLL;
      v26 = 0;
      sub_2956C315C(self->_threadgroupsPerGrid, &v25);
      v14 = v27;
      if (!(v27 | v25))
      {
        sub_2956CF1B8();
      }

      v15 = *(&v27 + 1);
      if (!(*(&v27 + 1) | *(&v25 + 1)))
      {
        sub_2956CF18C();
      }

      if (!(v28 | v26))
      {
        sub_2956CF160();
      }

      if (v25 && *(&v25 + 1) && v26)
      {
        v23 = v25;
        v24 = v26;
        v21 = v29;
        v16 = v30;
      }

      else
      {
        if (!v27)
        {
          sub_2956CF134();
        }

        if (!*(&v27 + 1))
        {
          sub_2956CF108();
        }

        if (!v28)
        {
          sub_2956CF0DC();
        }

        v17 = objc_msgSend_device(onCopy, v12, v13);
        v20 = objc_msgSend_supportsNonUniformThreadgroupSize(v17, v18, v19);

        if (v20)
        {
          v23 = v27;
          v24 = v28;
          v21 = v29;
          v22 = v30;
          objc_msgSend_dispatchThreads_threadsPerThreadgroup_(onCopy, v12, &v23, &v21);
          goto LABEL_21;
        }

        *&v23 = (v7 + v14 - 1) / v7;
        *(&v23 + 1) = (v8 + v15 - 1) / v8;
        v16 = 1;
        v24 = 1;
        *&v21 = v7;
        *(&v21 + 1) = v8;
      }

      v22 = v16;
      objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(onCopy, v12, &v23, &v21);
      goto LABEL_21;
    }

    v10 = objc_msgSend_unsignedIntegerValue(self->_indirectBufferOffset, v5, v6);
    v27 = v29;
    v28 = v30;
    objc_msgSend_dispatchThreadgroupsWithIndirectBuffer_indirectBufferOffset_threadsPerThreadgroup_(onCopy, v11, indirectBuffer, v10, &v27);
  }

LABEL_21:
}

- (CGRect)outputExtent
{
  if (self->_extent && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && objc_msgSend_count(self->_extent, v3, v4) == 4)
  {
    v6 = objc_msgSend_objectAtIndexedSubscript_(self->_extent, v5, 0);
    objc_msgSend_floatValue(v6, v7, v8);
    v10 = v9;
    v12 = objc_msgSend_objectAtIndexedSubscript_(self->_extent, v11, 1);
    objc_msgSend_floatValue(v12, v13, v14);
    v16 = v15;
    v18 = objc_msgSend_objectAtIndexedSubscript_(self->_extent, v17, 2);
    objc_msgSend_floatValue(v18, v19, v20);
    v22 = v21;
    v24 = objc_msgSend_objectAtIndexedSubscript_(self->_extent, v23, 3);
    objc_msgSend_floatValue(v24, v25, v26);
    v28 = v27;
  }

  else
  {
    v10 = *MEMORY[0x29EDB90D8];
    v16 = *(MEMORY[0x29EDB90D8] + 8);
    v22 = *(MEMORY[0x29EDB90D8] + 16);
    v28 = *(MEMORY[0x29EDB90D8] + 24);
  }

  v29 = v10;
  v30 = v16;
  v31 = v22;
  v32 = v28;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

- (id)description
{
  v3 = MEMORY[0x29EDBA050];
  v4 = objc_opt_class();
  v6 = objc_msgSend_stringWithFormat_(v3, v5, @"\n\t\t<%@ <%p>: \n", v4, self);
  v8 = v6;
  if (self->_indirectBuffer)
  {
    objc_msgSend_appendString_(v6, v7, @"\t\t\tindirectBuffer: ");
    v11 = objc_msgSend_description(self->_indirectBuffer, v9, v10);
    objc_msgSend_appendString_(v8, v12, v11);
    goto LABEL_9;
  }

  memset(v35, 0, sizeof(v35));
  p_threadsPerGrid = &self->_threadsPerGrid;
  sub_2956C315C(self->_threadsPerGrid, v35);
  memset(v34, 0, sizeof(v34));
  sub_2956C315C(self->_threadgroupsPerGrid, v34);
  objc_msgSend_appendString_(v8, v14, @"\t\t\tthreadPerThreadGroup = ");
  v17 = objc_msgSend_description(self->_threadsPerThreadgroup, v15, v16);
  v18 = sub_2956C354C(v17);
  objc_msgSend_appendString_(v8, v19, v18);

  objc_msgSend_appendString_(v8, v20, @"\n");
  if (v35[0])
  {
    objc_msgSend_appendString_(v8, v21, @"\t\t\tgridSize = ");
LABEL_7:
    v24 = objc_msgSend_description(*p_threadsPerGrid, v22, v23);
    v25 = sub_2956C354C(v24);
    objc_msgSend_appendString_(v8, v26, v25);

    objc_msgSend_appendString_(v8, v27, @"\n");
    goto LABEL_8;
  }

  if (v34[0])
  {
    p_threadsPerGrid = &self->_threadgroupsPerGrid;
    objc_msgSend_appendString_(v8, v21, @"\t\t\tthreadgroupsPerGrid = ");
    goto LABEL_7;
  }

LABEL_8:
  objc_msgSend_appendString_(v8, v21, @"\t\t\tciExtent = ");
  v11 = objc_msgSend_description(self->_extent, v28, v29);
  v30 = sub_2956C354C(v11);
  objc_msgSend_appendString_(v8, v31, v30);

LABEL_9:
  objc_msgSend_appendString_(v8, v32, @"\n\t\t>\n");

  return v8;
}

- (id)debugQuickLookObject
{
  v3 = objc_msgSend_image(self, a2, v2);
  v6 = v3;
  if (v3)
  {
    v7 = objc_msgSend_debugQuickLookObject(v3, v4, v5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (UniImage)image
{
  WeakRetained = objc_loadWeakRetained(&self->_image);

  return WeakRetained;
}

@end
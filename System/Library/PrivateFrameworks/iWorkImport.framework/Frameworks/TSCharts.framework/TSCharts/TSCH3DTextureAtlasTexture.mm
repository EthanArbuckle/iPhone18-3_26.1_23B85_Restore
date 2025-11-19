@interface TSCH3DTextureAtlasTexture
- (TSCH3DTextureAtlasTexture)initWithSize:(tvec2<int>)a3;
- (id).cxx_construct;
- (id)getTextureDataBuffer;
- (id)resource;
- (tvec2<int>)addLabel:(id)a3;
- (void)p_invalidateResource;
@end

@implementation TSCH3DTextureAtlasTexture

- (TSCH3DTextureAtlasTexture)initWithSize:(tvec2<int>)a3
{
  v9.receiver = self;
  v9.super_class = TSCH3DTextureAtlasTexture;
  v4 = [(TSCH3DTextureAtlasTexture *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_size.var0.var0 = *a3.var0.var0;
    v4->_size.var1.var0 = *(*&a3 + 4);
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    labels = v5->_labels;
    v5->_labels = v6;

    v5->_currentxpos = 0;
    v5->_currentypos = 0;
    v5->_currentheight = 0;
  }

  return v5;
}

- (void)p_invalidateResource
{
  resource = self->_resource;
  self->_resource = 0;
}

- (tvec2<int>)addLabel:(id)a3
{
  v5 = v3;
  v6 = a3;
  v11 = v6;
  if (v6)
  {
    objc_msgSend_clampedLabelSampledSize(v6, v7, v8, v9, v10);
    v12 = v26;
  }

  else
  {
    v12 = 0;
    v26 = 0;
  }

  var0 = self->_size.var0.var0;
  if (v12 > var0)
  {
    goto LABEL_7;
  }

  v14 = self->_size.var1.var0;
  if (SHIDWORD(v26) > v14)
  {
    goto LABEL_7;
  }

  currentypos = self->_currentypos;
  if (currentypos + SHIDWORD(v26) > v14)
  {
    goto LABEL_7;
  }

  if (self->_currentxpos + v12 > var0)
  {
    v17 = self->_currentheight + currentypos;
    if (v17 + SHIDWORD(v26) > v14)
    {
LABEL_7:
      *v5 = -1;
      goto LABEL_8;
    }

    self->_currentxpos = 0;
    self->_currentypos = v17;
    self->_currentheight = 0;
  }

  objc_msgSend_p_invalidateResource(self, v7, v8, v9, v10);
  currentxpos = self->_currentxpos;
  v19 = self->_currentypos;
  *v5 = currentxpos;
  v5[1] = v19;
  objc_msgSend_addObject_(self->_labels, v20, v21, v22, v23, v11);
  end = self->_positions.__end_;
  if (end >= self->_positions.__cap_)
  {
    v25 = sub_2761C3754(&self->_positions.__begin_, v5);
  }

  else
  {
    *end = currentxpos;
    end[1] = v19;
    v25 = end + 2;
  }

  self->_positions.__end_ = v25;
  self->_currentxpos += v26;
  if (self->_currentheight < SHIDWORD(v26))
  {
    self->_currentheight = SHIDWORD(v26);
  }

LABEL_8:

  return v16;
}

- (id)getTextureDataBuffer
{
  v5 = self;
  v6 = objc_msgSend_bufferWithCapacitySize_components_(TSCH3DVectorN2DDataBuffer, a2, v2, v3, v4, &self->_size, 4);
  objc_msgSend_fillCapacity(v6, v7, v8, v9, v10);
  objc_msgSend_size(v5, v11, v12, v13, v14);
  v106 = v6;
  v19 = objc_msgSend_container(v6, v15, v16, v17, v18);
  v24 = 0;
  v25 = 0x277D81000uLL;
  v107 = *v19;
  v108 = v5;
  v26 = 0x277CCA000uLL;
  while (v24 < objc_msgSend_count(v5->_labels, v20, v21, v22, v23))
  {
    v31 = objc_msgSend_objectAtIndexedSubscript_(v5->_labels, v27, v28, v29, v30, v24);
    v37 = objc_msgSend_get(v31, v32, v33, v34, v35);
    v41 = (v5->_positions.__begin_ + 8 * v24);
    v42 = *v41;
    v110 = v41[1];
    if (v31)
    {
      objc_msgSend_clampedLabelSampledSize(v31, v36, v38, v39, v40);
      v43 = v111;
    }

    else
    {
      v43 = 0;
      v111 = 0;
    }

    if (v43 + v42 > v112 || HIDWORD(v111) + v110 > v113)
    {
      v44 = *(v25 + 336);
      v45 = objc_msgSend_stringWithUTF8String_(*(v26 + 3240), v36, v38, v39, v40, "[TSCH3DTextureAtlasTexture getTextureDataBuffer]");
      v50 = objc_msgSend_stringWithUTF8String_(*(v26 + 3240), v46, v47, v48, v49, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DTextureAtlas.mm");
      v51 = *(v26 + 3240);
      sub_276152FD4("ivec2(%d, %d)", v52, v53, v54, v55, v56, v57, v58, v42);
      if (v115 >= 0)
      {
        objc_msgSend_stringWithUTF8String_(v51, v59, v60, v61, v62, __p);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v51, v59, v60, v61, v62, __p[0]);
      }
      v70 = ;
      v109 = v37;
      if (v115 < 0)
      {
        operator delete(__p[0]);
      }

      v71 = v25;
      v72 = MEMORY[0x277CCACA8];
      sub_276152FD4("ivec2(%d, %d)", v63, v64, v65, v66, v67, v68, v69, v111);
      if (v115 >= 0)
      {
        objc_msgSend_stringWithUTF8String_(v72, v73, v74, v75, v76, __p);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v72, v73, v74, v75, v76, __p[0]);
      }
      v84 = ;
      if (v115 < 0)
      {
        operator delete(__p[0]);
      }

      v85 = MEMORY[0x277CCACA8];
      sub_276152FD4("ivec2(%d, %d)", v77, v78, v79, v80, v81, v82, v83, v112);
      if (v115 >= 0)
      {
        objc_msgSend_stringWithUTF8String_(v85, v86, v87, v88, v89, __p);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v85, v86, v87, v88, v89, __p[0]);
      }
      v91 = ;
      if (v115 < 0)
      {
        operator delete(__p[0]);
      }

      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v44, v90, v92, v93, v94, v45, v50, 213, 0, "src label too large for atlas: pos: %@, srcsize: %@ dstsize: %@", v70, v84, v91);

      v25 = v71;
      v95 = *(v71 + 336);
      v37 = v109;
      objc_msgSend_logBacktraceThrottled(v95, v96, v97, v98, v99);
      v5 = v108;
    }

    v100 = objc_msgSend_container(v37, v36, v38, v39, v40);
    if (SHIDWORD(v111) >= 1)
    {
      v101 = 0;
      v102 = (v107 + 4 * (v42 + v112 * v110));
      v103 = *v100;
      v104 = v111;
      do
      {
        memcpy(v102, v103, 4 * v104);
        v102 += 4 * v112;
        v104 = v111;
        v103 += 4 * v111;
        ++v101;
      }

      while (v101 < SHIDWORD(v111));
    }

    ++v24;
    v26 = 0x277CCA000;
  }

  return v106;
}

- (id)resource
{
  resource = self->_resource;
  if (!resource)
  {
    v4 = [TSCH3DTextureAtlasTextureResource alloc];
    v9 = objc_msgSend_initWithParent_(v4, v5, v6, v7, v8, self);
    v10 = self->_resource;
    self->_resource = v9;

    resource = self->_resource;
  }

  return resource;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 5) = 0;
  *(self + 6) = 0;
  *(self + 4) = 0;
  return self;
}

@end
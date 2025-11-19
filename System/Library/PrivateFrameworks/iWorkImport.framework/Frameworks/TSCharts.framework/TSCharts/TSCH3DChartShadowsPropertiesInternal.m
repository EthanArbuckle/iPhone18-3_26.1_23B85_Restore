@interface TSCH3DChartShadowsPropertiesInternal
- (TSCH3DChartShadowsPropertiesInternal)initWithCamera:(id)a3 renderer:(id)a4;
- (id).cxx_construct;
- (void)invalidate;
- (void)setupResources;
@end

@implementation TSCH3DChartShadowsPropertiesInternal

- (TSCH3DChartShadowsPropertiesInternal)initWithCamera:(id)a3 renderer:(id)a4
{
  v7 = a3;
  v8 = a4;
  v22.receiver = self;
  v22.super_class = TSCH3DChartShadowsPropertiesInternal;
  v9 = [(TSCH3DChartShadowsPropertiesInternal *)&v22 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_renderer, a4);
    objc_storeStrong(&v10->_camera, a3);
    v11 = objc_alloc_init(TSCH3DDataBufferResource);
    quad = v10->_quad;
    v10->_quad = v11;

    v13 = objc_alloc_init(TSCH3DDataBufferResource);
    texcoords = v10->_texcoords;
    v10->_texcoords = v13;

    v15 = objc_alloc_init(TSCH3DDataBufferResource);
    fadecoords = v10->_fadecoords;
    v10->_fadecoords = v15;

    objc_msgSend_setupResources(v10, v17, v18, v19, v20);
  }

  return v10;
}

- (void)setupResources
{
  v46 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_bufferWithCapacity_(TSCH3Dvec3DataBuffer, a2, v2, v3, v4, 6);
  objc_msgSend_setBuffer_(self->_quad, v7, v8, v9, v10, v6);

  objc_msgSend_setUpdate_(self->_quad, v11, v12, v13, v14, 2);
  v19 = objc_msgSend_bufferWithCapacity_(TSCH3Dvec4DataBuffer, v15, v16, v17, v18, 6);
  objc_msgSend_setBuffer_(self->_texcoords, v20, v21, v22, v23, v19);

  objc_msgSend_setUpdate_(self->_texcoords, v24, v25, v26, v27, 2);
  v32 = objc_msgSend_bufferWithCapacity_(TSCH3Dvec4DataBuffer, v28, v29, v30, v31, 6);
  objc_msgSend_setBuffer_(self->_fadecoords, v33, v34, v35, v36, v32);

  objc_msgSend_setUpdate_(self->_fadecoords, v37, v38, v39, v40, 0);
  v42 = xmmword_2764D5F20;
  v43 = xmmword_2764D6280;
  v44 = xmmword_2764D6290;
  v45 = xmmword_2764D62A0;
  v41 = sub_27618C374(self->_fadecoords);
  v41[1] = *v41;
  sub_276161E1C(v41, &v42);
  sub_276161E1C(v41, &v43);
  sub_276161E1C(v41, &v45);
  sub_276161E1C(v41, &v43);
  sub_276161E1C(v41, &v44);
  sub_276161E1C(v41, &v45);
}

- (void)invalidate
{
  objc_msgSend_invalidate(self->_renderer, a2, v2, v3, v4);
  v14 = objc_msgSend_bufferWithCapacity_(TSCH3Dvec3DataBuffer, v6, v7, v8, v9, 6);
  objc_msgSend_setBuffer_(self->_quad, v10, v11, v12, v13);
}

- (id).cxx_construct
{
  *(self + 56) = xmmword_2764D5F00;
  *(self + 9) = 0x80000000800000;
  return self;
}

@end
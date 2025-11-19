@interface TSCH3DBarTexCoordResource
- (TSCH3DBarTexCoordResource)initWithGeometry:(id)a3 generator:(id)a4;
- (id)get;
@end

@implementation TSCH3DBarTexCoordResource

- (TSCH3DBarTexCoordResource)initWithGeometry:(id)a3 generator:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = TSCH3DBarTexCoordResource;
  v9 = [(TSCH3DAbstractBarTexCoordResource *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_geometry, a3);
    objc_storeStrong(&v10->_generator, a4);
  }

  return v10;
}

- (id)get
{
  v6 = objc_msgSend_numVertices(self->_geometry, a2, v2, v3, v4);
  v11 = objc_msgSend_vertexBuffer(self->_geometry, v7, v8, v9, v10);
  v12 = sub_27616536C(v11);

  v17 = objc_msgSend_normalBuffer(self->_geometry, v13, v14, v15, v16);
  v18 = sub_27616536C(v17);

  v23 = objc_msgSend_bufferWithCapacity_(TSCH3Dvec4DataBuffer, v19, v20, v21, v22, v6);
  objc_msgSend_fillCapacity(v23, v24, v25, v26, v27);
  v32 = objc_msgSend_container(v23, v28, v29, v30, v31);
  objc_msgSend_generateFromVertexArray_normalArray_numVertices_destination4D_(self->_generator, v33, v34, v35, v36, *v12, *v18, v6, *v32);

  return v23;
}

@end
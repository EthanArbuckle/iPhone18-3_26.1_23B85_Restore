@interface TSCH3DLabelsMeshRendererLabelInfo
- (TSCH3DLabelsMeshRendererLabelInfo)initWithRenderer:(id)renderer position:(tvec3<float>)position translation:(tvec3<float>)translation scale:(tvec3<float>)scale rotation:(float)rotation offset:(tvec2<float>)offset alignmentOffset:(tvec2<float>)alignmentOffset externalAttribute:(id)self0;
- (TSCH3DLabelsRenderer)renderer;
- (id).cxx_construct;
- (tvec3<float>)position;
- (tvec3<float>)scale;
- (tvec3<float>)translation;
@end

@implementation TSCH3DLabelsMeshRendererLabelInfo

- (TSCH3DLabelsMeshRendererLabelInfo)initWithRenderer:(id)renderer position:(tvec3<float>)position translation:(tvec3<float>)translation scale:(tvec3<float>)scale rotation:(float)rotation offset:(tvec2<float>)offset alignmentOffset:(tvec2<float>)alignmentOffset externalAttribute:(id)self0
{
  v11 = v10;
  v12 = *&translation.var2.var0;
  v14 = *&translation.var0.var0;
  v15 = *&position.var2.var0;
  v16 = *&position.var0.var0;
  rendererCopy = renderer;
  v19 = *&scale.var0.var0;
  v23.receiver = self;
  v23.super_class = TSCH3DLabelsMeshRendererLabelInfo;
  v20 = [(TSCH3DLabelsMeshRendererLabelInfo *)&v23 init];
  v21 = v20;
  if (v20)
  {
    objc_storeWeak(&v20->_renderer, rendererCopy);
    v21->_position.var0.var0 = *v16;
    v21->_position.var1.var0 = v16[1];
    v21->_position.var2.var0 = v16[2];
    v21->_translation.var0.var0 = *v15;
    v21->_translation.var1.var0 = v15[1];
    v21->_translation.var2.var0 = v15[2];
    v21->_scale.var0.var0 = *v14;
    v21->_scale.var1.var0 = v14[1];
    v21->_scale.var2.var0 = v14[2];
    v21->_rotation = rotation;
    v21->_offset.var0.var0 = *v12;
    v21->_offset.var1.var0 = v12[1];
    v21->_alignmentOffset.var0.var0 = *v11;
    v21->_alignmentOffset.var1.var0 = v11[1];
    objc_storeStrong(&v21->_externalAttribute, *&scale.var0.var0);
  }

  return v21;
}

- (TSCH3DLabelsRenderer)renderer
{
  WeakRetained = objc_loadWeakRetained(&self->_renderer);

  return WeakRetained;
}

- (tvec3<float>)position
{
  *v2 = self->_position;
  result.var2 = a2;
  result.var0 = self;
  result.var1 = *(&self + 4);
  return result;
}

- (tvec3<float>)translation
{
  *v2 = self->_translation;
  result.var2 = a2;
  result.var0 = self;
  result.var1 = *(&self + 4);
  return result;
}

- (tvec3<float>)scale
{
  *v2 = self->_scale;
  result.var2 = a2;
  result.var0 = self;
  result.var1 = *(&self + 4);
  return result;
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 4) = 0;
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  *(self + 20) = 0;
  return self;
}

@end
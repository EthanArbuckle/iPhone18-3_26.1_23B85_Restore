@interface TSCH3DChartLabelsContainingLabelRenderInfo
+ (id)infoWithPipeline:(id)pipeline index:(tvec2<int>)index resourceIndex:(tvec2<int>)resourceIndex renderString:(id)string position:(tvec3<float>)position offset:(tvec3<float>)offset alignment:(unsigned int)alignment wrapWidth:(float)self0 offset2D:(tvec2<float>)self1 rotation:(float)self2 alignmentPadding:(tvec2<float>)self3;
- (TSCH3DChartLabelsContainingLabelRenderInfo)initWithPipeline:(id)pipeline index:(tvec2<int>)index resourceIndex:(tvec2<int>)resourceIndex renderString:(id)string position:(tvec3<float>)position offset:(tvec3<float>)offset alignment:(unsigned int)alignment wrapWidth:(float)self0 offset2D:(tvec2<float>)self1 rotation:(float)self2 alignmentPadding:(tvec2<float>)self3;
- (id).cxx_construct;
- (tvec3<float>)offset;
- (tvec3<float>)position;
@end

@implementation TSCH3DChartLabelsContainingLabelRenderInfo

+ (id)infoWithPipeline:(id)pipeline index:(tvec2<int>)index resourceIndex:(tvec2<int>)resourceIndex renderString:(id)string position:(tvec3<float>)position offset:(tvec3<float>)offset alignment:(unsigned int)alignment wrapWidth:(float)self0 offset2D:(tvec2<float>)self1 rotation:(float)self2 alignmentPadding:(tvec2<float>)self3
{
  v15 = *&position.var2.var0;
  v16 = *&position.var0.var0;
  pipelineCopy = pipeline;
  stringCopy = string;
  v23 = [self alloc];
  v24 = **&index;
  v37 = **&resourceIndex;
  v38 = v24;
  v35 = *v16;
  v36 = *(v16 + 2);
  v25 = *v15;
  v34 = *(v15 + 8);
  v32 = **&offset.var2.var0;
  v33 = v25;
  v31 = **&alignment;
  var0 = offset.var0.var0;
  *&v25 = rotation;
  v28 = objc_msgSend_initWithPipeline_index_resourceIndex_renderString_position_offset_alignment_wrapWidth_offset2D_rotation_alignmentPadding_(v23, v26, COERCE_DOUBLE(__PAIR64__(HIDWORD(v31), LODWORD(width))), v25, v27, pipelineCopy, &v38, &v37, stringCopy, &v35, &v33, LODWORD(var0), &v32, &v31);

  return v28;
}

- (TSCH3DChartLabelsContainingLabelRenderInfo)initWithPipeline:(id)pipeline index:(tvec2<int>)index resourceIndex:(tvec2<int>)resourceIndex renderString:(id)string position:(tvec3<float>)position offset:(tvec3<float>)offset alignment:(unsigned int)alignment wrapWidth:(float)self0 offset2D:(tvec2<float>)self1 rotation:(float)self2 alignmentPadding:(tvec2<float>)self3
{
  v15 = *&position.var2.var0;
  v16 = *&position.var0.var0;
  pipelineCopy = pipeline;
  stringCopy = string;
  v33.receiver = self;
  v33.super_class = TSCH3DChartLabelsContainingLabelRenderInfo;
  v24 = [(TSCH3DChartLabelsContainingLabelRenderInfo *)&v33 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_pipeline, pipeline);
    v25->_index.var0.var0 = *index.var0.var0;
    v25->_index.var1.var0 = *(*&index + 4);
    v25->_resourceIndex.var0.var0 = *resourceIndex.var0.var0;
    v25->_resourceIndex.var1.var0 = *(*&resourceIndex + 4);
    if (stringCopy)
    {
      v30 = objc_msgSend_copy(stringCopy, v26, v27, v28, v29);
    }

    else
    {
      v30 = &stru_288528678;
    }

    renderString = v25->_renderString;
    v25->_renderString = &v30->isa;

    v25->_position.var0.var0 = *v16;
    v25->_position.var1.var0 = v16[1];
    v25->_position.var2.var0 = v16[2];
    v25->_offset.var0.var0 = *v15;
    v25->_offset.var1.var0 = v15[1];
    v25->_offset.var2.var0 = v15[2];
    v25->_alignment = LODWORD(offset.var0.var0);
    v25->_wrapWidth = width;
    v25->_offset2D.var0.var0 = **&offset.var2.var0;
    v25->_offset2D.var1.var0 = *(*&offset.var2.var0 + 4);
    v25->_rotation = rotation;
    v25->_alignmentPadding.var0.var0 = **&alignment;
    v25->_alignmentPadding.var1.var0 = *(*&alignment + 4);
  }

  return v25;
}

- (tvec3<float>)position
{
  *v2 = self->_position;
  result.var2 = a2;
  result.var0 = self;
  result.var1 = *(&self + 4);
  return result;
}

- (tvec3<float>)offset
{
  *v2 = self->_offset;
  result.var2 = a2;
  result.var0 = self;
  result.var1 = *(&self + 4);
  return result;
}

- (id).cxx_construct
{
  *(self + 4) = 0;
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  *(self + 5) = 0u;
  return self;
}

@end
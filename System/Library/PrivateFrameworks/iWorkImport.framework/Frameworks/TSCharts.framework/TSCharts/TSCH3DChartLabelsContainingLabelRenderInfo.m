@interface TSCH3DChartLabelsContainingLabelRenderInfo
+ (id)infoWithPipeline:(id)a3 index:(tvec2<int>)a4 resourceIndex:(tvec2<int>)a5 renderString:(id)a6 position:(tvec3<float>)a7 offset:(tvec3<float>)a8 alignment:(unsigned int)a9 wrapWidth:(float)a10 offset2D:(tvec2<float>)a11 rotation:(float)a12 alignmentPadding:(tvec2<float>)a13;
- (TSCH3DChartLabelsContainingLabelRenderInfo)initWithPipeline:(id)a3 index:(tvec2<int>)a4 resourceIndex:(tvec2<int>)a5 renderString:(id)a6 position:(tvec3<float>)a7 offset:(tvec3<float>)a8 alignment:(unsigned int)a9 wrapWidth:(float)a10 offset2D:(tvec2<float>)a11 rotation:(float)a12 alignmentPadding:(tvec2<float>)a13;
- (id).cxx_construct;
- (tvec3<float>)offset;
- (tvec3<float>)position;
@end

@implementation TSCH3DChartLabelsContainingLabelRenderInfo

+ (id)infoWithPipeline:(id)a3 index:(tvec2<int>)a4 resourceIndex:(tvec2<int>)a5 renderString:(id)a6 position:(tvec3<float>)a7 offset:(tvec3<float>)a8 alignment:(unsigned int)a9 wrapWidth:(float)a10 offset2D:(tvec2<float>)a11 rotation:(float)a12 alignmentPadding:(tvec2<float>)a13
{
  v15 = *&a7.var2.var0;
  v16 = *&a7.var0.var0;
  v21 = a3;
  v22 = a6;
  v23 = [a1 alloc];
  v24 = **&a4;
  v37 = **&a5;
  v38 = v24;
  v35 = *v16;
  v36 = *(v16 + 2);
  v25 = *v15;
  v34 = *(v15 + 8);
  v32 = **&a8.var2.var0;
  v33 = v25;
  v31 = **&a9;
  var0 = a8.var0.var0;
  *&v25 = a12;
  v28 = objc_msgSend_initWithPipeline_index_resourceIndex_renderString_position_offset_alignment_wrapWidth_offset2D_rotation_alignmentPadding_(v23, v26, COERCE_DOUBLE(__PAIR64__(HIDWORD(v31), LODWORD(a10))), v25, v27, v21, &v38, &v37, v22, &v35, &v33, LODWORD(var0), &v32, &v31);

  return v28;
}

- (TSCH3DChartLabelsContainingLabelRenderInfo)initWithPipeline:(id)a3 index:(tvec2<int>)a4 resourceIndex:(tvec2<int>)a5 renderString:(id)a6 position:(tvec3<float>)a7 offset:(tvec3<float>)a8 alignment:(unsigned int)a9 wrapWidth:(float)a10 offset2D:(tvec2<float>)a11 rotation:(float)a12 alignmentPadding:(tvec2<float>)a13
{
  v15 = *&a7.var2.var0;
  v16 = *&a7.var0.var0;
  v22 = a3;
  v23 = a6;
  v33.receiver = self;
  v33.super_class = TSCH3DChartLabelsContainingLabelRenderInfo;
  v24 = [(TSCH3DChartLabelsContainingLabelRenderInfo *)&v33 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_pipeline, a3);
    v25->_index.var0.var0 = *a4.var0.var0;
    v25->_index.var1.var0 = *(*&a4 + 4);
    v25->_resourceIndex.var0.var0 = *a5.var0.var0;
    v25->_resourceIndex.var1.var0 = *(*&a5 + 4);
    if (v23)
    {
      v30 = objc_msgSend_copy(v23, v26, v27, v28, v29);
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
    v25->_alignment = LODWORD(a8.var0.var0);
    v25->_wrapWidth = a10;
    v25->_offset2D.var0.var0 = **&a8.var2.var0;
    v25->_offset2D.var1.var0 = *(*&a8.var2.var0 + 4);
    v25->_rotation = a12;
    v25->_alignmentPadding.var0.var0 = **&a9;
    v25->_alignmentPadding.var1.var0 = *(*&a9 + 4);
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
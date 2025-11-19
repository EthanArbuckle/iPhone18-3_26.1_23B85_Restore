@interface TSCH3DChartSelectedElementHighlightSceneObjectProperties
- (TSCH3DChartSelectedElementHighlightSceneObjectProperties)init;
- (TSCH3DPrefilteredLineRenderer)renderer;
- (id).cxx_construct;
- (tvec4<float>)color;
- (void)setColor:(tvec4<float>)a3;
- (void)setSelectedSeriesIndex:(unint64_t)a3;
@end

@implementation TSCH3DChartSelectedElementHighlightSceneObjectProperties

- (TSCH3DChartSelectedElementHighlightSceneObjectProperties)init
{
  v3.receiver = self;
  v3.super_class = TSCH3DChartSelectedElementHighlightSceneObjectProperties;
  result = [(TSCH3DChartSelectedElementHighlightSceneObjectProperties *)&v3 init];
  if (result)
  {
    result->_selectedSeriesIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

- (TSCH3DPrefilteredLineRenderer)renderer
{
  renderer = self->_renderer;
  if (!renderer)
  {
    v4 = objc_alloc_init(TSCH3DPrefilteredLineRenderer);
    v5 = self->_renderer;
    self->_renderer = v4;

    renderer = self->_renderer;
  }

  return renderer;
}

- (void)setSelectedSeriesIndex:(unint64_t)a3
{
  if (self->_selectedSeriesIndex != a3)
  {
    renderer = self->_renderer;
    self->_renderer = 0;

    edgeVertices = self->_edgeVertices;
    self->_edgeVertices = 0;

    self->_selectedSeriesIndex = a3;
  }
}

- (void)setColor:(tvec4<float>)a3
{
  v3 = *&a3.var0.var0;
  if (**&a3.var0.var0 != self->_color.var0.var0 || *(*&a3.var0.var0 + 4) != self->_color.var1.var0 || *(*&a3.var0.var0 + 8) != self->_color.var2.var0 || *(*&a3.var0.var0 + 12) != self->_color.var3.var0)
  {
    renderer = self->_renderer;
    self->_renderer = 0;

    edgeVertices = self->_edgeVertices;
    self->_edgeVertices = 0;

    self->_color.var0.var0 = *v3;
    self->_color.var1.var0 = v3[1];
    self->_color.var2.var0 = v3[2];
    self->_color.var3.var0 = v3[3];
  }
}

- (tvec4<float>)color
{
  *v2 = self->_color;
  result.var2 = a2;
  result.var3 = *(&a2 + 4);
  result.var0 = self;
  result.var1 = *(&self + 4);
  return result;
}

- (id).cxx_construct
{
  *(self + 4) = 0;
  *(self + 5) = 0;
  return self;
}

@end
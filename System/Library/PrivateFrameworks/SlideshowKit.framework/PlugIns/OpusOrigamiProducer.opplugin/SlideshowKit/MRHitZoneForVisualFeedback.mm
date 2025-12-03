@interface MRHitZoneForVisualFeedback
- (void)dealloc;
- (void)set2DVertices:(const float *)vertices countOfVertices:(unint64_t)ofVertices;
@end

@implementation MRHitZoneForVisualFeedback

- (void)dealloc
{
  vertices = self->_vertices;
  if (vertices)
  {
    free(vertices);
    self->_vertices = 0;
  }

  self->_countOfVertices = 0;
  v4.receiver = self;
  v4.super_class = MRHitZoneForVisualFeedback;
  [(MRHitZoneForVisualFeedback *)&v4 dealloc];
}

- (void)set2DVertices:(const float *)vertices countOfVertices:(unint64_t)ofVertices
{
  vertices = self->_vertices;
  if (vertices)
  {
    free(vertices);
  }

  v8 = malloc_type_malloc(8 * ofVertices, 0x523386DuLL);
  self->_vertices = v8;
  memcpy(v8, vertices, 8 * ofVertices);
  self->_countOfVertices = ofVertices;
}

@end
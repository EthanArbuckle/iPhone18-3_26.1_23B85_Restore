@interface WKQuadObject
- (CGRect)boundingBox;
- (WKQuadObject)initWithQuad:(_WKQuad *)a3;
- (_WKQuad)quad;
@end

@implementation WKQuadObject

- (WKQuadObject)initWithQuad:(_WKQuad *)a3
{
  v8.receiver = self;
  v8.super_class = WKQuadObject;
  result = [(WKQuadObject *)&v8 init];
  if (result)
  {
    p1 = a3->p1;
    p2 = a3->p2;
    p3 = a3->p3;
    result->_quad.p4 = a3->p4;
    result->_quad.p3 = p3;
    result->_quad.p2 = p2;
    result->_quad.p1 = p1;
  }

  return result;
}

- (_WKQuad)quad
{
  v3 = *&self->p2.y;
  retstr->p1 = *&self->p1.y;
  retstr->p2 = v3;
  v4 = *&self->p4.y;
  retstr->p3 = *&self->p3.y;
  retstr->p4 = v4;
  return self;
}

- (CGRect)boundingBox
{
  x = self->_quad.p1.x;
  y = self->_quad.p1.y;
  v4 = self->_quad.p2.x;
  v5 = self->_quad.p2.y;
  if (v4 >= x)
  {
    v6 = self->_quad.p1.x;
  }

  else
  {
    v6 = self->_quad.p2.x;
  }

  v7 = self->_quad.p3.x;
  v8 = self->_quad.p3.y;
  if (v7 < v6)
  {
    v6 = self->_quad.p3.x;
  }

  v9 = self->_quad.p4.x;
  v10 = self->_quad.p4.y;
  if (v9 < v6)
  {
    v6 = self->_quad.p4.x;
  }

  if (v5 >= y)
  {
    v11 = self->_quad.p1.y;
  }

  else
  {
    v11 = self->_quad.p2.y;
  }

  if (v8 < v11)
  {
    v11 = self->_quad.p3.y;
  }

  if (v10 < v11)
  {
    v11 = self->_quad.p4.y;
  }

  if (x < v4)
  {
    x = self->_quad.p2.x;
  }

  if (x < v7)
  {
    x = self->_quad.p3.x;
  }

  if (x < v9)
  {
    x = self->_quad.p4.x;
  }

  if (y < v5)
  {
    y = self->_quad.p2.y;
  }

  if (y < v8)
  {
    y = self->_quad.p3.y;
  }

  v12 = x;
  v13 = v11;
  v14 = v6;
  if (y >= v10)
  {
    v15 = y;
  }

  else
  {
    v15 = self->_quad.p4.y;
  }

  v16 = v15;
  v17 = v14;
  v18 = v13;
  v19 = (v12 - v14);
  v20 = (v16 - v13);
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

@end
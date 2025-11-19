@interface VFXHitTestResult
+ (id)hitTestResultsFromHitTestResultRef:(__CFArray *)a3;
- (CGPoint)textureCoordinate;
- (CGPoint)textureCoordinatesWithMappingChannel:(int64_t)a3;
- (VFXHitTestResult)initWithResult:(__CFXHitTestResult *)a3;
- (VFXNode)boneNode;
- (VFXNode)node;
- (__n128)modelTransform;
- (double)localCoordinates;
- (double)localNormal;
- (double)worldCoordinates;
- (float32x2_t)uv0;
- (id)description;
- (id)presentationBoneNode;
- (id)presentationNode;
- (void)dealloc;
@end

@implementation VFXHitTestResult

- (VFXHitTestResult)initWithResult:(__CFXHitTestResult *)a3
{
  v3 = self;
  if (a3)
  {
    v6.receiver = self;
    v6.super_class = VFXHitTestResult;
    v3 = [(VFXHitTestResult *)&v6 init];
    if (v3)
    {
      v3->_result = CFRetain(a3);
    }
  }

  return v3;
}

- (void)dealloc
{
  result = self->_result;
  if (result)
  {
    CFRelease(result);
    self->_result = 0;
  }

  v4.receiver = self;
  v4.super_class = VFXHitTestResult;
  [(VFXHitTestResult *)&v4 dealloc];
}

- (VFXNode)node
{
  result = sub_1AF28133C(self->_result);
  if (result)
  {

    return objc_msgSend_nodeWithNodeRef_(VFXNode, v3, result, v4);
  }

  return result;
}

- (id)presentationNode
{
  v4 = objc_msgSend_node(self, a2, v2, v3);

  return objc_msgSend_presentationNode(v4, v5, v6, v7);
}

- (VFXNode)boneNode
{
  result = sub_1AF281384(self->_result);
  if (result)
  {

    return objc_msgSend_nodeWithNodeRef_(VFXNode, v3, result, v4);
  }

  return result;
}

- (id)presentationBoneNode
{
  v4 = objc_msgSend_boneNode(self, a2, v2, v3);

  return objc_msgSend_presentationNode(v4, v5, v6, v7);
}

- (CGPoint)textureCoordinatesWithMappingChannel:(int64_t)a3
{
  v3 = vcvtq_f64_f32(COERCE_FLOAT32X2_T(sub_1AF2816F4(self->_result, a3)));
  v4 = v3.f64[1];
  result.x = v3.f64[0];
  result.y = v4;
  return result;
}

- (float32x2_t)uv0
{
  objc_msgSend_textureCoordinatesWithMappingChannel_(a1, a2, 0, a4);
  v5.f64[1] = v4;
  return vcvt_f32_f64(v5);
}

- (CGPoint)textureCoordinate
{
  NSLog(&cfstr_Texturecoordin.isa, a2);

  objc_msgSend_textureCoordinatesWithMappingChannel_(self, v3, 0, v4);
  result.y = v6;
  result.x = v5;
  return result;
}

+ (id)hitTestResultsFromHitTestResultRef:(__CFArray *)a3
{
  v5 = objc_msgSend_count(a3, a2, a3, v3);
  v10 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v6, v5, v7);
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      v12 = objc_msgSend_objectAtIndex_(a3, v8, i, v9);
      v13 = [VFXHitTestResult alloc];
      v16 = objc_msgSend_initWithResult_(v13, v14, v12, v15);
      objc_msgSend_addObject_(v10, v17, v16, v18);
    }
  }

  return v10;
}

- (id)description
{
  objc_msgSend_worldCoordinates(self, a2, v2, v3);
  v24 = v5;
  v6 = MEMORY[0x1E696AEC0];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v12 = objc_msgSend_meshElementIndex(self, v9, v10, v11);
  v16 = objc_msgSend_node(self, v13, v14, v15);
  v20 = objc_msgSend_boneNode(self, v17, v18, v19);
  return objc_msgSend_stringWithFormat_(v6, v21, @"<%@: %p <%f,%f,%f> | meshElementIndex=%d node=%@ bone=%@>", v22, v8, self, *&v24, *(&v24 + 1), *(&v24 + 2), v12, v16, v20);
}

- (double)localCoordinates
{
  v1 = sub_1AF2814DC(*(a1 + 8));
  if (v1)
  {
    v2 = *v1;
  }

  else
  {
    *&v2 = 0;
  }

  return *&v2;
}

- (double)worldCoordinates
{
  v1 = sub_1AF281524(*(a1 + 8));
  if (v1)
  {
    v2 = *v1;
  }

  else
  {
    *&v2 = 0;
  }

  return *&v2;
}

- (double)localNormal
{
  v1 = sub_1AF28156C(*(a1 + 8));
  if (v1)
  {
    v2 = *v1;
  }

  else
  {
    *&v2 = 0;
  }

  return *&v2;
}

- (__n128)modelTransform
{
  v1 = sub_1AF281664(*(a1 + 8));
  v2 = MEMORY[0x1E69E9B18];
  if (v1)
  {
    v2 = v1;
  }

  return *v2;
}

@end
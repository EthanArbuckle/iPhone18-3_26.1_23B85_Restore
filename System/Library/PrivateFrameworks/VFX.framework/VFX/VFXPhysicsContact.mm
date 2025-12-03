@interface VFXPhysicsContact
+ (id)_contactWithManifold:(const btPersistentManifold *)manifold index:(int64_t)index;
- (BOOL)_shouldPostUpdate;
- (id)contactNormalValue;
- (id)contactPointValue;
- (id)description;
- (void)_fillNodeA:(VFXPhysicsContact *)self nodeB:(SEL)b contactPoint:(id)point contactNormal:(id)normal distance:(float)distance hitFraction:(float)fraction;
- (void)_fillNodeA:(id)a nodeB:(id)b;
- (void)_updateWithManifold:(const btPersistentManifold *)manifold index:(int64_t)index point:(const btManifoldPoint *)point;
- (void)dealloc;
@end

@implementation VFXPhysicsContact

- (id)contactPointValue
{
  v29[3] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AD98];
  objc_msgSend_contactPoint(self, a2, v2, v3);
  v9 = objc_msgSend_numberWithFloat_(v5, v6, v7, v8);
  v10 = MEMORY[0x1E696AD98];
  objc_msgSend_contactPoint(self, v11, v12, v13, v9);
  LODWORD(v14) = HIDWORD(v14);
  v29[1] = objc_msgSend_numberWithFloat_(v10, v15, v16, v17, v14);
  v18 = MEMORY[0x1E696AD98];
  objc_msgSend_contactPoint(self, v19, v20, v21);
  LODWORD(v23) = v22;
  v29[2] = objc_msgSend_numberWithFloat_(v18, v24, v25, v26, v23);
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v27, v29, 3);
}

- (id)contactNormalValue
{
  v29[3] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AD98];
  objc_msgSend_contactNormal(self, a2, v2, v3);
  v9 = objc_msgSend_numberWithFloat_(v5, v6, v7, v8);
  v10 = MEMORY[0x1E696AD98];
  objc_msgSend_contactNormal(self, v11, v12, v13, v9);
  LODWORD(v14) = HIDWORD(v14);
  v29[1] = objc_msgSend_numberWithFloat_(v10, v15, v16, v17, v14);
  v18 = MEMORY[0x1E696AD98];
  objc_msgSend_contactNormal(self, v19, v20, v21);
  LODWORD(v23) = v22;
  v29[2] = objc_msgSend_numberWithFloat_(v18, v24, v25, v26, v23);
  return objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v27, v29, 3);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXPhysicsContact;
  [(VFXPhysicsContact *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v8 = objc_msgSend_stringWithFormat_(v3, v6, @"<%@: %p", v7, v5, self);
  objc_msgSend_appendFormat_(v8, v9, @" '%@'", v10, self->_nodeA);
  objc_msgSend_appendFormat_(v8, v11, @" '%@'", v12, self->_nodeB);
  objc_msgSend_appendFormat_(v8, v13, @" point(%f %f %f)", v14, COERCE_FLOAT(*self->_contactPoint), COERCE_FLOAT(HIDWORD(*self->_contactPoint)), COERCE_FLOAT(*&self->_contactPoint[8]));
  objc_msgSend_appendFormat_(v8, v15, @" normal(%f %f %f)", v16, COERCE_FLOAT(*self->_contactNormal), COERCE_FLOAT(HIDWORD(*self->_contactNormal)), COERCE_FLOAT(*&self->_contactNormal[8]));
  objc_msgSend_appendFormat_(v8, v17, @" impulse(%f)", v18, self->_collisionImpulse);
  objc_msgSend_appendFormat_(v8, v19, @" distance:%f", v20, self->_distance);
  objc_msgSend_appendString_(v8, v21, @">", v22);
  return v8;
}

- (void)_fillNodeA:(VFXPhysicsContact *)self nodeB:(SEL)b contactPoint:(id)point contactNormal:(id)normal distance:(float)distance hitFraction:(float)fraction
{
  v8 = v7;
  v9 = v6;
  v17 = *&distance;
  v18 = *&fraction;
  nodeA = self->_nodeA;
  if (nodeA != point)
  {
    if (nodeA)
    {
      CFRelease(nodeA);
      self->_nodeA = 0;
    }

    if (point)
    {
      v14 = CFRetain(point);
    }

    else
    {
      v14 = 0;
    }

    self->_nodeA = v14;
  }

  nodeB = self->_nodeB;
  if (nodeB != normal)
  {
    if (nodeB)
    {
      CFRelease(nodeB);
      self->_nodeB = 0;
    }

    if (normal)
    {
      v16 = CFRetain(normal);
    }

    else
    {
      v16 = 0;
    }

    self->_nodeB = v16;
  }

  *self->_contactPoint = v17;
  *self->_contactNormal = v18;
  self->_collisionImpulse = 0.0;
  self->_distance = v9;
  self->_fraction = v8;
}

- (void)_fillNodeA:(id)a nodeB:(id)b
{
  nodeA = self->_nodeA;
  if (nodeA != a)
  {
    if (nodeA)
    {
      CFRelease(nodeA);
      self->_nodeA = 0;
    }

    if (a)
    {
      v8 = CFRetain(a);
    }

    else
    {
      v8 = 0;
    }

    self->_nodeA = v8;
  }

  nodeB = self->_nodeB;
  if (nodeB != b)
  {
    if (nodeB)
    {
      CFRelease(nodeB);
      self->_nodeB = 0;
    }

    if (b)
    {
      v10 = CFRetain(b);
    }

    else
    {
      v10 = 0;
    }

    self->_nodeB = v10;
  }
}

- (void)_updateWithManifold:(const btPersistentManifold *)manifold index:(int64_t)index point:(const btManifoldPoint *)point
{
  var3 = manifold->var3;
  if (var3 && (*(var3 + 264) & 2) != 0 && (v9 = *(var3 + 67)) != 0)
  {
    v10 = sub_1AF16CDEC(*(v9 + 72));
  }

  else
  {
    v10 = 0;
  }

  v11 = *&manifold->var4;
  if (v11 && (*(v11 + 264) & 2) != 0 && (v12 = *(v11 + 536)) != 0)
  {
    v13 = sub_1AF16CDEC(*(v12 + 72));
  }

  else
  {
    v13 = 0;
  }

  nodeA = self->_nodeA;
  if (nodeA != v10)
  {
    if (nodeA)
    {
      CFRelease(nodeA);
      self->_nodeA = 0;
    }

    if (v10)
    {
      v15 = CFRetain(v10);
    }

    else
    {
      v15 = 0;
    }

    self->_nodeA = v15;
  }

  nodeB = self->_nodeB;
  if (nodeB != v13)
  {
    if (nodeB)
    {
      CFRelease(nodeB);
      self->_nodeB = 0;
    }

    if (v13)
    {
      v17 = CFRetain(v13);
    }

    else
    {
      v17 = 0;
    }

    self->_nodeB = v17;
  }

  *self->_contactPoint = point->var2;
  *self->_contactNormal = point->var4;
  self->_collisionImpulse = point->var15;
  self->_distance = -point->var5;
}

+ (id)_contactWithManifold:(const btPersistentManifold *)manifold index:(int64_t)index
{
  v4 = manifold + 192 * index;
  v5 = *(v4 + 16);
  objc_msgSend__updateWithManifold_index_point_(v5, a2, manifold, index, v4 + 16);
  return v5;
}

- (BOOL)_shouldPostUpdate
{
  v2 = self->_updateCount - 1;
  self->_updateCount = v2;
  return v2 == 0;
}

@end
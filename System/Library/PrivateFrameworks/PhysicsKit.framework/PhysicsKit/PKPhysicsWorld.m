@interface PKPhysicsWorld
+ (id)world;
- (BOOL)isEqualToWorld:(id)a3;
- (BOOL)stepWithTime:(double)a3 velocityIterations:(unint64_t)a4 positionIterations:(unint64_t)a5;
- (CGVector)evalForce:(unsigned int)a3 point:(CGPoint)a4;
- (CGVector)gravity;
- (CGVector)sampleFields:(CGPoint)a3;
- (PKPhysicsContactDelegate)contactDelegate;
- (PKPhysicsWorld)init;
- (PKPhysicsWorld)initWithCoder:(id)a3;
- (__n128)sampleFieldsAt:(uint64_t)a1;
- (b2Vec2)_gravity;
- (id).cxx_construct;
- (id)bodies;
- (id)bodyAlongRayStart:(CGPoint)a3 end:(CGPoint)a4;
- (id)bodyAtPoint:(CGPoint)a3;
- (id)bodyInRect:(CGRect)a3;
- (id)collisionDelegate;
- (id)copy;
- (id)joints;
- (id)sampleFields:(CGRect)a3 categories:(unsigned int)a4 dataSize:(CGSize)a5;
- (void)__init__;
- (void)_runBlockOutsideOfTimeStep:(id)a3;
- (void)addBody:(id)a3;
- (void)addField:(id)a3;
- (void)addJoint:(id)a3;
- (void)dealloc;
- (void)debugDraw:(float)a3 matrix:(_GLSKMatrix4 *)a4 showsPhysics:(BOOL)a5 showsOutlineInterior:(BOOL)a6 showsFields:(BOOL)a7;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateBodiesAlongRayStart:(CGPoint)a3 end:(CGPoint)a4 usingBlock:(id)a5;
- (void)enumerateBodiesAtPoint:(CGPoint)a3 usingBlock:(id)a4;
- (void)enumerateBodiesInRect:(CGRect)a3 usingBlock:(id)a4;
- (void)removeAllBodies;
- (void)removeAllFields;
- (void)removeAllJoints;
- (void)removeBody:(id)a3;
- (void)removeField:(id)a3;
- (void)removeJoint:(id)a3;
- (void)setGravity:(CGVector)a3;
@end

@implementation PKPhysicsWorld

- (void)enumerateBodiesAtPoint:(CGPoint)a3 usingBlock:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = x + -0.5;
  v9 = y + -0.5;
  v16.size.width = 1.0;
  v16.size.height = 1.0;
  v16.origin.x = v8;
  v16.origin.y = v9;
  if (!CGRectIsEmpty(v16))
  {
    v17.size.width = 1.0;
    v17.size.height = 1.0;
    v17.origin.x = v8;
    v17.origin.y = v9;
    if (!CGRectIsNull(v17))
    {
      v18.size.width = 1.0;
      v18.size.height = 1.0;
      v18.origin.x = v8;
      v18.origin.y = v9;
      if (CGRectIsInfinite(v18))
      {
        v15 = xmmword_25E7EB2B0;
      }

      else
      {
        *&v10 = v8 * PKGet_INV_PTM_RATIO();
        *&v11 = v9 * PKGet_INV_PTM_RATIO();
        *&v15 = __PAIR64__(v11, v10);
        *(&v15 + 2) = PKGet_INV_PTM_RATIO() + *&v10;
        *(&v15 + 3) = PKGet_INV_PTM_RATIO() + *&v11;
      }

      v12[2] = 1;
      memset(v13, 0, 32);
      v13[4] = 1065353216;
      v12[0] = &unk_287079A78;
      v12[1] = v15;
      v14 = MEMORY[0x25F8C0600](v7);

      b2World::QueryAABB(self->_world, v12, &v15);
      v12[0] = &unk_287079A78;

      std::__hash_table<void *,std::hash<void *>,std::equal_to<void *>,std::allocator<void *>>::~__hash_table(v13);
    }
  }
}

- (void)enumerateBodiesInRect:(CGRect)a3 usingBlock:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  if (!CGRectIsEmpty(v22))
  {
    v23.origin.x = x;
    v23.origin.y = y;
    v23.size.width = width;
    v23.size.height = height;
    if (!CGRectIsNull(v23))
    {
      v24.origin.x = x;
      v24.origin.y = y;
      v24.size.width = width;
      v24.size.height = height;
      if (CGRectIsInfinite(v24))
      {
        v21 = xmmword_25E7EB2B0;
      }

      else
      {
        *&v10 = x * PKGet_INV_PTM_RATIO();
        *&v11 = y * PKGet_INV_PTM_RATIO();
        *&v21 = __PAIR64__(v11, v10);
        v12 = PKGet_INV_PTM_RATIO();
        v13 = PKGet_INV_PTM_RATIO();
        *&v14 = *&v10 + width * v12;
        *&v15 = *&v11 + height * v13;
        *(&v21 + 1) = __PAIR64__(v15, v14);
      }

      v17 = 0u;
      memset(v18, 0, sizeof(v18));
      v16 = &unk_287079A78;
      v19 = 1065353216;
      v20 = MEMORY[0x25F8C0600](v9);

      b2World::QueryAABB(self->_world, &v16, &v21);
      v16 = &unk_287079A78;

      std::__hash_table<void *,std::hash<void *>,std::equal_to<void *>,std::allocator<void *>>::~__hash_table(v18);
    }
  }
}

- (void)enumerateBodiesAlongRayStart:(CGPoint)a3 end:(CGPoint)a4 usingBlock:(id)a5
{
  x = a4.x;
  y = a4.y;
  v19 = a3.x;
  v20 = a3.y;
  v6 = a5;
  v17 = PKGet_INV_PTM_RATIO();
  v7 = PKGet_INV_PTM_RATIO();
  v8.f64[0] = v19;
  v8.f64[1] = v20;
  v26 = vcvt_f32_f64(vmulq_f64(v8, vcvtq_f64_f32(__PAIR64__(LODWORD(v7), LODWORD(v17)))));
  v18 = PKGet_INV_PTM_RATIO();
  v9 = PKGet_INV_PTM_RATIO();
  v10.f64[0] = x;
  v10.f64[1] = y;
  v25 = vcvt_f32_f64(vmulq_f64(v10, vcvtq_f64_f32(__PAIR64__(LODWORD(v9), LODWORD(v18)))));
  v21 = &unk_287079768;
  v22 = 0;
  v23[0] = v23;
  v23[1] = v23;
  v23[2] = 0;
  v24 = 0;
  v11 = MEMORY[0x25F8C0600](v6);
  v12 = v22;
  v22 = v11;

  *&v13 = v19;
  *&v14 = v20;
  v24 = __PAIR64__(v14, v13);
  b2World::RayCast(self->_world, &v21, &v26, &v25);
  PKRayCastHandler::issueCallbacks(&v21);
  v21 = &unk_287079768;
  std::__list_imp<PKRayCastItem>::clear(v23);
}

- (id)bodyAtPoint:(CGPoint)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __30__PKPhysicsWorld_bodyAtPoint___block_invoke;
  v5[3] = &unk_279A38958;
  v5[4] = &v6;
  [(PKPhysicsWorld *)self enumerateBodiesAtPoint:v5 usingBlock:a3.x, a3.y];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)bodyInRect:(CGRect)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __29__PKPhysicsWorld_bodyInRect___block_invoke;
  v5[3] = &unk_279A38958;
  v5[4] = &v6;
  [(PKPhysicsWorld *)self enumerateBodiesInRect:v5 usingBlock:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)bodyAlongRayStart:(CGPoint)a3 end:(CGPoint)a4
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__PKPhysicsWorld_bodyAlongRayStart_end___block_invoke;
  v6[3] = &unk_279A38980;
  v6[4] = &v7;
  [(PKPhysicsWorld *)self enumerateBodiesAlongRayStart:v6 end:a3.x usingBlock:a3.y, a4.x, a4.y];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)__init__
{
  self->_gravity = 0xC11CCCCD00000000;
  self->_accumulatedDt = 0.0;
  self->_speed = 1.0;
  self->_doSleep = 1;
  operator new();
}

- (PKPhysicsWorld)init
{
  v5.receiver = self;
  v5.super_class = PKPhysicsWorld;
  v2 = [(PKPhysicsWorld *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PKPhysicsWorld *)v2 __init];
  }

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_joints forKey:@"_joints"];
  [v4 encodeObject:self->_bodies forKey:@"_bodies"];
  [(PKPhysicsWorld *)self gravity];
  [v4 encodeCGVector:@"gravity" forKey:?];
  [(PKPhysicsWorld *)self speed];
  [v4 encodeDouble:@"speedMultiplier" forKey:?];
}

- (PKPhysicsWorld)initWithCoder:(id)a3
{
  v38[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v34.receiver = self;
  v34.super_class = PKPhysicsWorld;
  v5 = [(PKPhysicsWorld *)&v34 init];
  v6 = v5;
  if (v5)
  {
    [(PKPhysicsWorld *)v5 __init];
    v7 = MEMORY[0x277CBEB98];
    v38[0] = objc_opt_class();
    v38[1] = objc_opt_class();
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];
    v9 = [v7 setWithArray:v8];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"_bodies"];

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v30 objects:v37 count:16];
    if (v12)
    {
      v13 = *v31;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v31 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v30 + 1) + 8 * i);
          if (([v15 _inUse] & 1) == 0)
          {
            [(PKPhysicsWorld *)v6 addBody:v15];
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v30 objects:v37 count:16];
      }

      while (v12);
    }

    v16 = MEMORY[0x277CBEB98];
    v36[0] = objc_opt_class();
    v36[1] = objc_opt_class();
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:2];
    v18 = [v16 setWithArray:v17];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"_joints"];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v20 = v19;
    v21 = [v20 countByEnumeratingWithState:&v26 objects:v35 count:16];
    if (v21)
    {
      v22 = *v27;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v27 != v22)
          {
            objc_enumerationMutation(v20);
          }

          v24 = *(*(&v26 + 1) + 8 * j);
          if (([v24 _inUse] & 1) == 0)
          {
            [(PKPhysicsWorld *)v6 addJoint:v24];
          }
        }

        v21 = [v20 countByEnumeratingWithState:&v26 objects:v35 count:16];
      }

      while (v21);
    }

    [v4 decodeCGVectorForKey:@"gravity"];
    [(PKPhysicsWorld *)v6 setGravity:?];
    [v4 decodeDoubleForKey:@"speedMultiplier"];
    [(PKPhysicsWorld *)v6 setSpeed:?];
  }

  return v6;
}

- (void)dealloc
{
  [(PKPhysicsWorld *)self removeAllJoints];
  [(PKPhysicsWorld *)self removeAllBodies];
  [(PKPhysicsWorld *)self removeAllFields];
  world = self->_world;
  if (world)
  {
    b2World::~b2World(world);
    MEMORY[0x25F8C0280]();
    self->_world = 0;
  }

  v4.receiver = self;
  v4.super_class = PKPhysicsWorld;
  [(PKPhysicsWorld *)&v4 dealloc];
}

- (id)copy
{
  v2 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
  v3 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v2 error:0];

  return v3;
}

- (void)setGravity:(CGVector)a3
{
  *&a3.dx = a3.dx;
  dy = a3.dy;
  self->_gravity.x = *&a3.dx;
  self->_gravity.y = dy;
  b2World::SetGravity(self->_world, &self->_gravity, a3);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __29__PKPhysicsWorld_setGravity___block_invoke;
  v5[3] = &unk_279A389A8;
  v5[4] = self;
  [(PKPhysicsWorld *)self _runBlockOutsideOfTimeStep:v5];
}

b2Body *__29__PKPhysicsWorld_setGravity___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _world];
  for (i = result[444].var13; i; i = *(*&i + 168))
  {
    result = b2Body::SetAwake(*&i, 1);
  }

  return result;
}

- (CGVector)gravity
{
  x = self->_gravity.x;
  y = self->_gravity.y;
  result.dy = y;
  result.dx = x;
  return result;
}

- (id)collisionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_contactListener._contactDelegate);

  return WeakRetained;
}

- (PKPhysicsContactDelegate)contactDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_contactListener._contactDelegate);

  return WeakRetained;
}

- (id)bodies
{
  v2 = [(NSMutableArray *)self->_bodies copy];

  return v2;
}

- (id)joints
{
  v15 = *MEMORY[0x277D85DE8];
  p_joints = &self->_joints;
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSMutableArray count](self->_joints, "count")}];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = *p_joints;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if (([v8 _implicit] & 1) == 0)
        {
          [v3 addObject:v8];
        }
      }

      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return v3;
}

- (void)addBody:(id)a3
{
  v4 = a3;
  if ([v4 _inUse])
  {
    [MEMORY[0x277CBEAD8] raise:@"Cant add body format:{already exists in a world", @"Cant add body %@, already exists in a world", v4}];
  }

  else
  {
    [v4 set_inUse:1];
    [v4 set_world:self];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __26__PKPhysicsWorld_addBody___block_invoke;
    v5[3] = &unk_279A389D0;
    v5[4] = self;
    v6 = v4;
    [(PKPhysicsWorld *)self _runBlockOutsideOfTimeStep:v5];
  }
}

void __26__PKPhysicsWorld_addBody___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _bodies];
  [v2 addObject:*(a1 + 40)];

  v3 = *(a1 + 40);
  if (v3)
  {
    [v3 _bodyDef];
  }

  else
  {
    memset(&v4, 0, sizeof(v4));
  }

  b2World::CreateBody([*(a1 + 32) _world], &v4);
}

- (void)removeBody:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = __Block_byref_object_copy_;
  v17[4] = __Block_byref_object_dispose_;
  v4 = a3;
  v18 = v4;
  v5 = [v4 _joints];
  v6 = [v5 copy];

  [(NSMutableArray *)self->_bodies removeObject:v4];
  [v4 set_inUse:0];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v8)
  {
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [(PKPhysicsWorld *)self removeJoint:*(*(&v13 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v8);
  }

  v11 = [v4 _body];
  if (v11)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __29__PKPhysicsWorld_removeBody___block_invoke;
    v12[3] = &unk_279A389F8;
    v12[4] = self;
    v12[5] = v17;
    v12[6] = v11;
    [(PKPhysicsWorld *)self _runBlockOutsideOfTimeStep:v12];
  }

  [v4 clearBox2DData];

  _Block_object_dispose(v17, 8);
}

void __29__PKPhysicsWorld_removeBody___block_invoke(uint64_t a1)
{
  *(*(a1 + 48) + 240) = 0;
  v2 = [*(a1 + 32) _world];
  b2World::DestroyBody(v2, *(a1 + 48), v3);
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;
}

- (void)removeAllBodies
{
  v29 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = self->_bodies;
  v3 = [(NSMutableArray *)obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v3)
  {
    v15 = *v24;
    do
    {
      v4 = 0;
      do
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v23 + 1) + 8 * v4);
        v21[0] = 0;
        v21[1] = v21;
        v21[2] = 0x3032000000;
        v21[3] = __Block_byref_object_copy_;
        v21[4] = __Block_byref_object_dispose_;
        v6 = v5;
        v22 = v6;
        v7 = [v6 _joints];
        v8 = [v7 copy];

        v19 = 0u;
        v20 = 0u;
        v17 = 0u;
        v18 = 0u;
        v9 = v8;
        v10 = [v9 countByEnumeratingWithState:&v17 objects:v27 count:16];
        if (v10)
        {
          v11 = *v18;
          do
          {
            v12 = 0;
            do
            {
              if (*v18 != v11)
              {
                objc_enumerationMutation(v9);
              }

              [(PKPhysicsWorld *)self removeJoint:*(*(&v17 + 1) + 8 * v12++)];
            }

            while (v10 != v12);
            v10 = [v9 countByEnumeratingWithState:&v17 objects:v27 count:16];
          }

          while (v10);
        }

        [v6 set_inUse:0];
        v13 = [v6 _body];
        if (v13)
        {
          v16[0] = MEMORY[0x277D85DD0];
          v16[1] = 3221225472;
          v16[2] = __33__PKPhysicsWorld_removeAllBodies__block_invoke;
          v16[3] = &unk_279A389F8;
          v16[4] = self;
          v16[5] = v21;
          v16[6] = v13;
          [(PKPhysicsWorld *)self _runBlockOutsideOfTimeStep:v16];
        }

        [v6 clearBox2DData];

        _Block_object_dispose(v21, 8);
        ++v4;
      }

      while (v4 != v3);
      v3 = [(NSMutableArray *)obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v3);
  }

  [(NSMutableArray *)self->_bodies removeAllObjects];
}

void __33__PKPhysicsWorld_removeAllBodies__block_invoke(uint64_t a1)
{
  *(*(a1 + 48) + 240) = 0;
  v2 = [*(a1 + 32) _world];
  b2World::DestroyBody(v2, *(a1 + 48), v3);
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;
}

- (void)addJoint:(id)a3
{
  v4 = a3;
  if ([v4 _inUse])
  {
    [MEMORY[0x277CBEAD8] raise:@"Cant add joint format:{already exists in a world", @"Cant add joint %@, already exists in a world", v4}];
  }

  else
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __27__PKPhysicsWorld_addJoint___block_invoke;
    v5[3] = &unk_279A389D0;
    v6 = v4;
    v7 = self;
    [(PKPhysicsWorld *)self _runBlockOutsideOfTimeStep:v5];
  }
}

void __27__PKPhysicsWorld_addJoint___block_invoke(uint64_t a1)
{
  [*(a1 + 32) set_inUse:1];
  [*(a1 + 32) create];
  b2World::CreateJoint([*(a1 + 40) _world], objc_msgSend(*(a1 + 32), "_jointDef"));
}

- (void)removeJoint:(id)a3
{
  v4 = a3;
  [(NSMutableArray *)self->_joints removeObject:v4];
  v5 = [v4 bodyA];

  if (v5)
  {
    v6 = [v4 bodyA];
    v7 = [v6 _joints];
    [v7 removeObject:v4];
  }

  v8 = [v4 bodyB];

  if (v8)
  {
    v9 = [v4 bodyB];
    v10 = [v9 _joints];
    [v10 removeObject:v4];
  }

  v11 = [v4 _joint];
  if (v11)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __30__PKPhysicsWorld_removeJoint___block_invoke;
    v12[3] = &unk_279A38A20;
    v12[4] = self;
    v12[5] = v11;
    [(PKPhysicsWorld *)self _runBlockOutsideOfTimeStep:v12];
  }

  [v4 set_joint:0];
  [v4 set_inUse:0];
}

b2Joint *__30__PKPhysicsWorld_removeJoint___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _world];
  v3 = *(a1 + 40);

  return b2World::DestroyJoint(v2, v3);
}

- (void)removeAllJoints
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = self->_joints;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = *v19;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v18 + 1) + 8 * i);
        if (([v7 _implicit] & 1) == 0)
        {
          v8 = [v7 bodyA];
          v9 = v8 == 0;

          if (!v9)
          {
            v10 = [v7 bodyA];
            v11 = [v10 _joints];
            [v11 removeObject:v7];
          }

          v12 = [v7 bodyB];
          v13 = v12 == 0;

          if (!v13)
          {
            v14 = [v7 bodyB];
            v15 = [v14 _joints];
            [v15 removeObject:v7];
          }

          v16 = [v7 _joint];
          if (v16)
          {
            v17[0] = MEMORY[0x277D85DD0];
            v17[1] = 3221225472;
            v17[2] = __33__PKPhysicsWorld_removeAllJoints__block_invoke;
            v17[3] = &unk_279A38A20;
            v17[4] = self;
            v17[5] = v16;
            [(PKPhysicsWorld *)self _runBlockOutsideOfTimeStep:v17];
          }

          [v7 set_joint:0];
          [v7 set_inUse:0];
        }
      }

      v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v4);
  }

  [(NSMutableArray *)self->_joints removeAllObjects];
}

b2Joint *__33__PKPhysicsWorld_removeAllJoints__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _world];
  v3 = *(a1 + 40);

  return b2World::DestroyJoint(v2, v3);
}

- (void)addField:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __27__PKPhysicsWorld_addField___block_invoke;
  v6[3] = &unk_279A389D0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(PKPhysicsWorld *)self _runBlockOutsideOfTimeStep:v6];
}

void __27__PKPhysicsWorld_addField___block_invoke(uint64_t a1)
{
  v2 = *([*(a1 + 32) _world] + 103152);
  v3 = *(a1 + 40);
  if (v3)
  {
    [v3 _field];
    v5 = v4;
    if (*(&v4 + 1))
    {
      atomic_fetch_add_explicit((*(&v4 + 1) + 16), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *(&v4 + 1) = 0;
    v5 = 0uLL;
  }

  PKCAether::addField(v2, &v5);
  if (*(&v5 + 1))
  {
    std::__shared_weak_count::__release_weak(*(&v5 + 1));
  }

  if (*(&v4 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v4 + 1));
  }
}

- (void)removeField:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = *(self->_world + 12894);
    [v4 _field];
    v9 = v7;
    v10 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    PKCAether::removeField(v6, &v9);
    if (v10)
    {
      std::__shared_weak_count::__release_weak(v10);
    }

    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

- (void)removeAllFields
{
  world = self->_world;
  if (world)
  {
    PKCAether::removeAllFields(world[12894]);
  }
}

- (id)sampleFields:(CGRect)a3 categories:(unsigned int)a4 dataSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v8 = a3.size.height;
  v9 = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  PKCAether::Evaluator::Evaluator(&v35, *(self->_world + 12894));
  v13 = vcvtd_n_u64_f64(width * height, 2uLL);
  v14 = malloc_type_malloc(v13, 0x100004052888210uLL);
  v15 = v14;
  if (height > 0.0)
  {
    v16 = 0;
    v17 = v14;
    do
    {
      if (width > 0.0)
      {
        v19 = 1;
        do
        {
          v20 = PKGet_INV_PTM_RATIO();
          v21 = PKGet_INV_PTM_RATIO();
          v22 = x + v9 * (v19 - 1) / width;
          *&v23 = v20 * v22;
          v18 = y + v8 * v16 / height;
          *(&v23 + 1) = v21 * v18;
          v24.n128_u32[0] = 1.0;
          PKCAether::Evaluator::evalForce(&v35, a4, 0.0, v23, 0, v24, 1.0, *(self->_world + 12899));
          _S2 = _V0.S[2];
          __asm { FMLA            S1, S2, V0.S[2] }

          *v17++ = sqrtf(_S1);
          v32 = v19++;
        }

        while (width > v32);
      }

      ++v16;
    }

    while (height > v16);
  }

  v33 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v15 length:v13];
  if (__p)
  {
    v37 = __p;
    operator delete(__p);
  }

  v38 = &v35;
  std::vector<std::shared_ptr<PKCField>>::__destroy_vector::operator()[abi:ne200100](&v38);

  return v33;
}

- (CGVector)sampleFields:(CGPoint)a3
{
  *&v3 = a3.x;
  *&v4 = a3.y;
  [(PKPhysicsWorld *)self sampleFieldsAt:COERCE_DOUBLE(__PAIR64__(v4, v3))];
  v6 = vcvtq_f64_f32(v5);
  v7 = v6.f64[1];
  result.dx = v6.f64[0];
  result.dy = v7;
  return result;
}

- (__n128)sampleFieldsAt:(uint64_t)a1
{
  PKCAether::Evaluator::Evaluator(&v11, *(*(a1 + 8) + 103152));
  v3 = PKGet_INV_PTM_RATIO();
  v4 = PKGet_INV_PTM_RATIO();
  *&v5 = v3 * *&a2;
  HIDWORD(v5) = vmuls_lane_f32(v4, *&a2, 1);
  v6.n128_u32[0] = 1.0;
  PKCAether::Evaluator::evalForce(&v11, -1, 0.0, v5, 0, v6, 1.0, *(*(a1 + 8) + 103192));
  v10 = v7;
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  v14 = &v11;
  std::vector<std::shared_ptr<PKCField>>::__destroy_vector::operator()[abi:ne200100](&v14);
  return v10;
}

- (CGVector)evalForce:(unsigned int)a3 point:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  PKCAether::Evaluator::Evaluator(&v19, *(self->_world + 12894));
  v7 = PKGet_INV_PTM_RATIO();
  v8 = PKGet_INV_PTM_RATIO();
  v9 = y;
  v10 = x;
  v11 = v8 * v9;
  *&v12 = v7 * v10;
  *(&v12 + 1) = v11;
  v13.n128_u32[0] = 1.0;
  PKCAether::Evaluator::evalForce(&v19, -1, 0.0, v12, 0, v13, 1.0, *(self->_world + 12899));
  if (__p)
  {
    v21 = __p;
    v17 = v14;
    operator delete(__p);
    v14 = v17;
  }

  v18 = vcvtq_f64_f32(v14);
  v22 = &v19;
  std::vector<std::shared_ptr<PKCField>>::__destroy_vector::operator()[abi:ne200100](&v22);
  v16 = v18.f64[1];
  v15 = v18.f64[0];
  result.dy = v16;
  result.dx = v15;
  return result;
}

- (BOOL)stepWithTime:(double)a3 velocityIterations:(unint64_t)a4 positionIterations:(unint64_t)a5
{
  v5 = a5;
  v6 = a4;
  v38 = *MEMORY[0x277D85DE8];
  if ([(NSMutableArray *)self->_bodies count])
  {
    v9 = self->_accumulatedDt + a3 * self->_speed;
    self->_accumulatedDt = v9;
    if (v9 >= 0.00833333377)
    {
      do
      {
        b2World::Step(self->_world, 0.0083333, v6, v5);
        v10 = self->_accumulatedDt + -0.00833333377;
        self->_accumulatedDt = v10;
      }

      while (v10 >= 0.00833333377);
    }

    (*(self->_contactListener._vptr$b2ContactListener + 7))(&self->_contactListener);
    b2World::ClearForces(self->_world);
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v11 = self->_postStepBlocks;
    v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v12)
    {
      v13 = *v33;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v33 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v32 + 1) + 8 * i);
          if (v15)
          {
            (*(v15 + 16))();
          }
        }

        v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v12);
    }

    [(NSMutableArray *)self->_postStepBlocks removeAllObjects];
    v16 = self->_bodies;
    v17 = v16;
    if (v16)
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v18 = v16;
      v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v28 objects:v36 count:16];
      if (v19)
      {
        v20 = *v29;
        v21 = 1;
        do
        {
          for (j = 0; j != v19; ++j)
          {
            if (*v29 != v20)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v28 + 1) + 8 * j);
            v24 = [v23 postStepBlock];
            v25 = v24 == 0;

            if (!v25)
            {
              v26 = [v23 postStepBlock];
              (v26)[2](v26, v23);
            }

            if ([v23 isDynamic])
            {
              v21 &= [v23 isResting];
            }
          }

          v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v28 objects:v36 count:16];
        }

        while (v19);
        LOBYTE(v19) = v21 ^ 1;
      }
    }

    else
    {
      LOBYTE(v19) = 0;
    }
  }

  else
  {
    LOBYTE(v19) = 0;
  }

  return v19 & 1;
}

- (id).cxx_construct
{
  PKContactListener::PKContactListener(&self->_contactListener);
  *&self->drawPacket._linePoints.__cap_ = 0u;
  *&self->drawPacket._colors.__end_ = 0u;
  *&self->drawPacket._linePoints.__begin_ = 0u;
  return self;
}

- (void)debugDraw:(float)a3 matrix:(_GLSKMatrix4 *)a4 showsPhysics:(BOOL)a5 showsOutlineInterior:(BOOL)a6 showsFields:(BOOL)a7
{
  v7 = a5;
  v39 = a4;
  v55 = *MEMORY[0x277D85DE8];
  PKDebugDraw::PKDebugDraw(v53, &self->drawPacket, a5, a7);
  b2World::SetDebugDraw(self->_world, v53);
  if (v7)
  {
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    obj = self->_bodies;
    v10 = [(NSMutableArray *)obj countByEnumeratingWithState:&v49 objects:v54 count:16];
    if (v10)
    {
      v11 = *v50;
      v12 = vdup_n_s32(0x3F19999Au);
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v50 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v49 + 1) + 8 * i);
          v15 = [v14 _body];
          if (!v14)
          {
            goto LABEL_14;
          }

          [v14 outline];
          if (__p)
          {
            v16 = a6;
          }

          else
          {
            v16 = 1;
          }

          if (v45)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v45);
          }

          if (!v16)
          {
            v24 = [v14 representedObject];
            v25 = objc_opt_respondsToSelector();
            v48 = 0;
            if (v25)
            {
              [v24 _getWorldTransform:0 positionY:0 rotation:0 xScale:&v48 + 4 yScale:&v48];
            }

            else
            {
              v48 = 0x3F8000003F800000;
            }

            v47 = 0;
            if (objc_opt_respondsToSelector())
            {
              [v24 _getBasePhysicsScale:&v47 + 4 yScale:&v47];
              *&v48 = *&v48 / *&v47;
              *(&v48 + 1) = *(&v48 + 1) / *(&v47 + 1);
            }

            [v14 outline];
            v26 = __p;
            if (v45)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v45);
            }

            v45 = 0;
            v46 = 0;
            __p = 0;
            std::vector<b2Vec2>::resize(&__p, (v26[2] - v26[1]) >> 3);
            v27 = v26[1];
            v28 = __p;
            v29 = v26[2] - v27;
            if (v29)
            {
              v30 = v29 >> 3;
              if ((v29 >> 3) <= 1)
              {
                v30 = 1;
              }

              v31 = v48;
              v32 = (v27 + 4);
              v33 = __p;
              do
              {
                v34 = *(v15 + 40);
                v35 = vrev64_s32(v34);
                *v34.i32 = -*v34.i32;
                *v33++ = vadd_f32(*(v15 + 32), vmla_n_f32(vmul_n_f32(v34, *v32 * *&v31), v35, *(v32 - 1) * *(&v31 + 1)));
                v32 += 2;
                --v30;
              }

              while (v30);
            }

            v42 = 0x3E8000003DA3D70ALL;
            v43 = 1065185444;
            PKDebugDraw::DrawSolidPolygon(v53, v28, v29 >> 3, &v42);
            if (__p)
            {
              v45 = __p;
              operator delete(__p);
            }
          }

          else
          {
LABEL_14:
            for (j = *(v15 + 176); j; j = *(j + 16))
            {
              if (b2Body::IsActive(v15))
              {
                v18 = *(v15 + 20);
                if (v18 == 1)
                {
                  world = self->_world;
                  __p = 0x3F0000003F000000;
                  LODWORD(v45) = 1063675494;
                  b2World::DrawShape(world, j, (v15 + 32), &__p);
                }

                else if (v18)
                {
                  IsAwake = b2Body::IsAwake(v15);
                  v23 = self->_world;
                  if (IsAwake)
                  {
                    __p = 0x3E8000003DA3D70ALL;
                    LODWORD(v45) = 1065185444;
                  }

                  else
                  {
                    __p = v12;
                    LODWORD(v45) = 1058642330;
                  }

                  b2World::DrawShape(v23, j, (v15 + 32), &__p);
                }

                else
                {
                  v19 = self->_world;
                  __p = 0x3F6666663F000000;
                  LODWORD(v45) = 1056964608;
                  b2World::DrawShape(v19, j, (v15 + 32), &__p);
                }
              }

              else
              {
                v20 = self->_world;
                __p = 0x3F0000003F000000;
                LODWORD(v45) = 1050253722;
                b2World::DrawShape(v20, j, (v15 + 32), &__p);
              }
            }
          }
        }

        v10 = [(NSMutableArray *)obj countByEnumeratingWithState:&v49 objects:v54 count:16];
      }

      while (v10);
    }
  }

  b2World::DrawDebugData(self->_world);
  b2World::SetDebugDraw(self->_world, 0);
  begin = self->drawPacket._linePoints.__begin_;
  v37 = self->drawPacket._linePoints.__end_ - begin;
  if (v37)
  {
    v38 = v37 >> 3;
    if (v38 <= 1)
    {
      v38 = 1;
    }

    do
    {
      *begin = vadd_f32(vadd_f32(vmul_n_f32(*v39, *begin * a3), vmul_n_f32(v39[2], *(begin + 1) * a3)), vadd_f32(vmul_f32(v39[4], 0), v39[6]));
      begin = (begin + 8);
      --v38;
    }

    while (v38);
  }
}

- (BOOL)isEqualToWorld:(id)a3
{
  v4 = a3;
  p_isa = &v4->super.isa;
  if (self == v4)
  {
    v6 = 1;
  }

  else if ((COERCE_UNSIGNED_INT(self->_speed - v4->_speed) & 0x60000000) != 0 || (COERCE_UNSIGNED_INT(self->_gravity.x - v4->_gravity.x) & 0x60000000) != 0 || (COERCE_UNSIGNED_INT(self->_gravity.y - v4->_gravity.y) & 0x60000000) != 0)
  {
    v6 = 0;
  }

  else
  {
    v8 = 0;
    while ([(NSMutableArray *)self->_joints count]> v8)
    {
      v9 = [(NSMutableArray *)self->_joints objectAtIndexedSubscript:v8];
      v10 = [p_isa[10] objectAtIndexedSubscript:v8];
      v11 = [v9 isEqualToJoint:v10];

      v6 = 0;
      ++v8;
      if ((v11 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v12 = 0;
    do
    {
      v13 = [(NSMutableArray *)self->_bodies count];
      v6 = v13 <= v12;
      if (v13 <= v12)
      {
        break;
      }

      v14 = [(NSMutableArray *)self->_bodies objectAtIndexedSubscript:v12];
      v15 = [p_isa[9] objectAtIndexedSubscript:v12];
      v16 = [v14 isEqualToBody:v15];

      ++v12;
    }

    while ((v16 & 1) != 0);
  }

LABEL_7:

  return v6;
}

- (void)_runBlockOutsideOfTimeStep:(id)a3
{
  v4 = a3;
  v7 = v4;
  if ((*(self->_world + 102936) & 2) != 0)
  {
    postStepBlocks = self->_postStepBlocks;
    v6 = MEMORY[0x25F8C0600]();
    [(NSMutableArray *)postStepBlocks addObject:v6];
  }

  else
  {
    (*(v4 + 2))();
  }
}

+ (id)world
{
  v2 = objc_alloc_init(PKPhysicsWorld);

  return v2;
}

- (b2Vec2)_gravity
{
  x = self->_gravity.x;
  y = self->_gravity.y;
  result.y = y;
  result.x = x;
  return result;
}

@end
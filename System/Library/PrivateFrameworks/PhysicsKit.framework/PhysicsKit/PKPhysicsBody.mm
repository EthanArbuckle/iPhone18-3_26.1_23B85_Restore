@interface PKPhysicsBody
+ (id)bodyWithBodies:(id)a3;
+ (id)bodyWithCircleOfRadius:(double)a3;
+ (id)bodyWithCircleOfRadius:(double)a3 center:(CGPoint)a4;
+ (id)bodyWithEdgeChainFromPath:(CGPath *)a3;
+ (id)bodyWithEdgeFromPoint:(CGPoint)a3 toPoint:(CGPoint)a4;
+ (id)bodyWithEdgeLoopFromPath:(CGPath *)a3;
+ (id)bodyWithOutline:(shared_ptr<PKPath>)a3 offset:(CGPoint)a4;
+ (id)bodyWithPolygonFromPath:(CGPath *)a3;
+ (id)bodyWithRectangleOfSize:(CGSize)a3;
+ (id)bodyWithRectangleOfSize:(CGSize)a3 center:(CGPoint)a4;
+ (id)bodyWithRectangleOfSize:(CGSize)a3 center:(CGPoint)a4 edgeRadius:(double)a5;
+ (id)bodyWithRectangleOfSize:(CGSize)a3 edgeRadius:(double)a4;
+ (id)initWithMarchingCubes:(void *)a3 pixelFrame:(CGRect)a4;
+ (id)initWithQuadTree:(id)a3;
- (BOOL)_allowSleep;
- (BOOL)active;
- (BOOL)isEqualToBody:(id)a3;
- (BOOL)isResting;
- (CGPoint)position;
- (CGVector)velocity;
- (NSArray)joints;
- (NSObject)representedObject;
- (PKPhysicsBody)init;
- (PKPhysicsBody)initWithBodies:(id)a3;
- (PKPhysicsBody)initWithCircleOfRadius:(double)a3 center:(CGPoint)a4;
- (PKPhysicsBody)initWithCoder:(id)a3;
- (PKPhysicsBody)initWithRectangleOfSize:(CGSize)a3;
- (PKPhysicsBody)initWithRectangleOfSize:(CGSize)a3 center:(CGPoint)a4;
- (b2BodyDef)_bodyDef;
- (double)angularDamping;
- (double)angularVelocity;
- (double)area;
- (double)charge;
- (double)density;
- (double)friction;
- (double)linearDamping;
- (double)mass;
- (double)radius;
- (double)restitution;
- (double)rotation;
- (id).cxx_construct;
- (id)_world;
- (id)allContactedBodies;
- (id)copy;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (shared_ptr<PKPath>)outline;
- (shared_ptr<QuadTree>)_quadTree;
- (void)applyAngularImpulse:(double)a3;
- (void)applyForce:(CGPoint)a3;
- (void)applyForce:(CGPoint)a3 atPoint:(CGPoint)a4;
- (void)applyImpulse:(CGVector)a3;
- (void)applyImpulse:(CGVector)a3 atPoint:(CGPoint)a4;
- (void)applyTorque:(double)a3;
- (void)applyUnscaledForce:(CGVector)a3;
- (void)applyUnscaledForce:(CGVector)a3 atPoint:(CGPoint)a4;
- (void)applyUnscaledImpulse:(CGVector)a3;
- (void)applyUnscaledImpulse:(CGVector)a3 atPoint:(CGPoint)a4;
- (void)clearBox2DData;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)reapplyScale:(double)a3 yScale:(double)a4;
- (void)setActive:(BOOL)a3;
- (void)setAffectedByGravity:(BOOL)a3;
- (void)setAllowsRotation:(BOOL)a3;
- (void)setAngularDamping:(double)a3;
- (void)setAngularVelocity:(double)a3;
- (void)setCategoryBitMask:(unsigned int)a3;
- (void)setCharge:(double)a3;
- (void)setCollisionBitMask:(unsigned int)a3;
- (void)setContactTestBitMask:(unsigned int)a3;
- (void)setDensity:(double)a3;
- (void)setDynamic:(BOOL)a3;
- (void)setFieldBitMask:(unsigned int)a3;
- (void)setFriction:(double)a3;
- (void)setLinearDamping:(double)a3;
- (void)setMass:(double)a3;
- (void)setOutline:(shared_ptr<PKPath>)a3;
- (void)setPinned:(BOOL)a3;
- (void)setPosition:(CGPoint)a3;
- (void)setRadius:(double)a3;
- (void)setResting:(BOOL)a3;
- (void)setRestitution:(double)a3;
- (void)setRotation:(double)a3;
- (void)setUsesPreciseCollisionDetection:(BOOL)a3;
- (void)setVelocity:(CGVector)a3;
- (void)set_allowSleep:(BOOL)a3;
- (void)set_bodyDef:(b2BodyDef *)a3;
- (void)volume;
@end

@implementation PKPhysicsBody

- (shared_ptr<PKPath>)outline
{
  cntrl = self->_outline.__cntrl_;
  *v2 = self->_outline.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (void)setOutline:(shared_ptr<PKPath>)a3
{
  v4 = *a3.__ptr_;
  v3 = *(a3.__ptr_ + 1);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_outline.__cntrl_;
  self->_outline.__ptr_ = v4;
  self->_outline.__cntrl_ = v3;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }
}

- (void)volume
{
  begin = self->_shapes.__begin_;
  if ((self->_shapes.__end_ - begin) == 8)
  {
    v3 = *(*((*begin)->var1 + 4) + 8);
    switch(v3)
    {
      case 0:
        operator new();
      case 3:
        operator new();
      case 2:
        operator new();
    }
  }

  return 0;
}

- (void)clearBox2DData
{
  self->_body = 0;
  self->_inUse = 0;
  objc_storeWeak(&self->_world, 0);
  begin = self->_shapes.__begin_;
  end = self->_shapes.__end_;
  while (begin != end)
  {
    v5 = *begin++;
    *(v5 + 40) = 0;
  }
}

+ (id)bodyWithOutline:(shared_ptr<PKPath>)a3 offset:(CGPoint)a4
{
  v26 = *&a4.y;
  x = a4.x;
  ptr = a3.__ptr_;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v29 = 0;
  v30 = 0;
  __p = 0;
  v5 = *(*a3.__ptr_ + 8);
  if (v5 != *(*a3.__ptr_ + 16))
  {
    v6 = 0;
    do
    {
      v7 = *v5;
      if (v6 >= v30)
      {
        v8 = (v6 - __p) >> 3;
        if ((v8 + 1) >> 61)
        {
          std::vector<PKPoint>::__throw_length_error[abi:ne200100]();
        }

        v9 = (v30 - __p) >> 2;
        if (v9 <= v8 + 1)
        {
          v9 = v8 + 1;
        }

        if (v30 - __p >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        if (v10)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<PKPoint>>(&__p, v10);
        }

        *(8 * v8) = v7;
        v6 = (8 * v8 + 8);
        v11 = (8 * v8 - (v29 - __p));
        memcpy(v11, __p, v29 - __p);
        v12 = __p;
        __p = v11;
        v29 = v6;
        v30 = 0;
        if (v12)
        {
          operator delete(v12);
        }
      }

      else
      {
        *v6 = v7;
        v6 += 8;
      }

      v29 = v6;
      ++v5;
    }

    while (v5 != *(*ptr + 16));
  }

  trisFromCCWFaces(&__p, &v31, &v34);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (v35 != v34)
  {
    v14 = 0;
    do
    {
      Mutable = CGPathCreateMutable();
      v16 = (v34 + 4 * v14);
      if (((v35 - v34) >> 2) - 1 == v14)
      {
        v17 = (v32 - v31) >> 3;
      }

      else
      {
        LODWORD(v17) = v16[1];
      }

      v18 = *v16;
      if (v17 > v18)
      {
        v19 = 0;
        v20 = 8 * v18;
        v21 = v17 - v18;
        do
        {
          if (v19)
          {
            CGPathAddLineToPoint(Mutable, 0, COERCE_FLOAT(*(v31 + v20)) - x, COERCE_FLOAT(HIDWORD(*(v31 + v20))) - *&v26);
          }

          else
          {
            CGPathMoveToPoint(Mutable, 0, COERCE_FLOAT(*(v31 + v18)) - x, COERCE_FLOAT(HIDWORD(*(v31 + v18))) - *&v26);
          }

          --v19;
          v20 += 8;
          --v21;
        }

        while (v21);
      }

      CGPathCloseSubpath(Mutable);
      v22 = [[PKPhysicsBody alloc] initWithPolygonFromPath:Mutable];
      v23 = v22;
      if (v22)
      {
        [(PKPhysicsBody *)v22 setDynamic:1];
        [v13 addObject:v23];
      }

      CGPathRelease(Mutable);

      ++v14;
    }

    while (v14 < (v35 - v34) >> 2);
  }

  if ([v13 count])
  {
    if ([v13 count] != 1)
    {
      [PKPhysicsBody bodyWithBodies:v13];
      objc_claimAutoreleasedReturnValue();
      std::allocate_shared[abi:ne200100]<PKPath,std::allocator<PKPath>,PKPath&,0>();
    }

    v24 = [v13 objectAtIndex:0];
  }

  else
  {
    NSLog(&cfstr_PhysicsbodyCou.isa);
    v24 = 0;
  }

  if (v31)
  {
    v32 = v31;
    operator delete(v31);
  }

  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }

  return v24;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt:self->_shapeType forKey:@"_shapeType"];
  shapeType = self->_shapeType;
  if (shapeType > 3)
  {
    if ((shapeType - 5) < 2)
    {
      goto LABEL_24;
    }

    if (shapeType == 4)
    {
      [v4 encodeCGPoint:@"_p0" forKey:{self->_p0.x, self->_p0.y}];
      v28 = @"_p1";
      v29 = 224;
      v30 = 216;
      goto LABEL_30;
    }

    if (shapeType != 7)
    {
LABEL_28:
      NSLog(&cfstr_EncodeError.isa);
      goto LABEL_31;
    }

    [v4 encodeInt32:(self->_shapes.__end_ - self->_shapes.__begin_) >> 3 forKey:@"_compoundBodyCount"];
    begin = self->_shapes.__begin_;
    if (begin == self->_shapes.__end_)
    {
      goto LABEL_31;
    }

    while (1)
    {
      var0 = (*begin)->var0.var0;
      v8 = *(var0 + 8);
      if (v8 <= 1)
      {
        if (!v8)
        {
          [v4 encodeObject:@"circle"];
          v20 = *(var0 + 12);
          v21 = PKGet_PTM_RATIO();
          v22 = CFStringCreateWithFormat(0, 0, @"{%g, %g}", (v20 * v21), 0);
          [v4 encodeObject:v22];

          v23 = *(var0 + 16);
          v24 = PKGet_PTM_RATIO();
          v25 = *(var0 + 20);
          v26 = PKGet_PTM_RATIO();
          v19 = CFStringCreateWithFormat(0, 0, @"{%g, %g}", (v23 * v24), (v25 * v26));
          [v4 encodeObject:v19];
          goto LABEL_21;
        }

        if (v8 == 1)
        {
          [v4 encodeObject:@"edge"];
          v10 = *(var0 + 16);
          v11 = PKGet_PTM_RATIO();
          v12 = *(var0 + 20);
          v13 = PKGet_PTM_RATIO();
          v14 = CFStringCreateWithFormat(0, 0, @"{%g, %g}", (v10 * v11), (v12 * v13));
          [v4 encodeObject:v14];

          v15 = *(var0 + 24);
          v16 = PKGet_PTM_RATIO();
          v17 = *(var0 + 28);
          v18 = PKGet_PTM_RATIO();
          v19 = CFStringCreateWithFormat(0, 0, @"{%g, %g}", (v15 * v16), (v17 * v18));
          [v4 encodeObject:v19];
LABEL_21:
        }
      }

      else
      {
        if (v8 == 2)
        {
          [v4 encodeObject:@"polygon"];
          v19 = PKArrayFromB2PolygonShape(var0);
          [v4 encodeObject:v19];
          goto LABEL_21;
        }

        v9 = @"chain";
        if (v8 == 3)
        {
          goto LABEL_15;
        }

        if (v8 == 4)
        {
          v9 = @"quadtree";
LABEL_15:
          [v4 encodeObject:v9];
        }
      }

      if (++begin == self->_shapes.__end_)
      {
        goto LABEL_31;
      }
    }
  }

  switch(shapeType)
  {
    case 1:
      [v4 encodeDouble:@"_radius" forKey:self->_radius];
      break;
    case 2:
      [v4 encodeCGSize:@"_size" forKey:{self->_size.width, self->_size.height}];
      break;
    case 3:
LABEL_24:
      v27 = PKArrayFromPKPath(self->_pathPtr.__ptr_);
      [v4 encodeObject:v27 forKey:@"_path"];

      goto LABEL_31;
    default:
      goto LABEL_28;
  }

  v28 = @"_p0";
  v29 = 208;
  v30 = 200;
LABEL_30:
  [v4 encodeCGPoint:v28 forKey:{*(&self->super.isa + v30), *(&self->super.isa + v29)}];
LABEL_31:
  ptr = self->_outline.__ptr_;
  if (ptr)
  {
    v32 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:2 * (*(ptr + 2) - *(ptr + 1))];
    v33 = *(ptr + 1);
    v34 = *(ptr + 2);
    while (v33 != v34)
    {
      v35 = bswap64(COERCE_UNSIGNED_INT64(*v33));
      v36 = bswap64(COERCE_UNSIGNED_INT64(v33[1]));
      v37 = v35;
      [v32 appendBytes:&v37 length:8];
      [v32 appendBytes:&v36 length:8];
      v33 += 2;
    }

    [v4 encodeObject:v32 forKey:@"_outline"];
  }

  [v4 encodeDouble:@"_edgeRadius" forKey:self->_edgeRadius];
  [v4 encodeBool:-[PKPhysicsBody isDynamic](self forKey:{"isDynamic"), @"dynamic"}];
  [v4 encodeBool:-[PKPhysicsBody usesPreciseCollisionDetection](self forKey:{"usesPreciseCollisionDetection"), @"needsContinuousCollsionDetection"}];
  [v4 encodeBool:-[PKPhysicsBody allowsRotation](self forKey:{"allowsRotation"), @"allowRotation"}];
  [v4 encodeBool:-[PKPhysicsBody pinned](self forKey:{"pinned"), @"pinned"}];
  [(PKPhysicsBody *)self friction];
  [v4 encodeDouble:@"friction" forKey:?];
  [(PKPhysicsBody *)self charge];
  [v4 encodeDouble:@"charge" forKey:?];
  [(PKPhysicsBody *)self restitution];
  [v4 encodeDouble:@"restitution" forKey:?];
  [(PKPhysicsBody *)self density];
  [v4 encodeDouble:@"density" forKey:?];
  [v4 encodeBool:-[PKPhysicsBody affectedByGravity](self forKey:{"affectedByGravity"), @"affectedByGravity"}];
  [v4 encodeInt32:-[PKPhysicsBody categoryBitMask](self forKey:{"categoryBitMask"), @"categoryBitMask"}];
  [v4 encodeInt32:-[PKPhysicsBody collisionBitMask](self forKey:{"collisionBitMask"), @"collisionBitMask"}];
  [v4 encodeInt32:-[PKPhysicsBody contactTestBitMask](self forKey:{"contactTestBitMask"), @"intersectionTestBitMask"}];
  [v4 encodeInt32:-[PKPhysicsBody fieldBitMask](self forKey:{"fieldBitMask"), @"fieldBitMask"}];
  [(PKPhysicsBody *)self velocity];
  [v4 encodeCGVector:@"linearVelocity" forKey:?];
  [(PKPhysicsBody *)self angularVelocity];
  [v4 encodeDouble:@"angularVelocity" forKey:?];
  [(PKPhysicsBody *)self linearDamping];
  [v4 encodeDouble:@"linearDamping" forKey:?];
  [(PKPhysicsBody *)self angularDamping];
  [v4 encodeDouble:@"angularDamping" forKey:?];
}

- (PKPhysicsBody)initWithCoder:(id)a3
{
  v72[7] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (!self)
  {
    goto LABEL_38;
  }

  self->_shapeType = [v4 decodeIntForKey:@"_shapeType"];
  self->_edgeRadius = 0.00899999961;
  if ([v5 containsValueForKey:@"_edgeRadius"])
  {
    [v5 decodeDoubleForKey:@"_edgeRadius"];
    self->_edgeRadius = v6;
  }

  shapeType = self->_shapeType;
  if (shapeType <= 3)
  {
    switch(shapeType)
    {
      case 1:
        [v5 decodeDoubleForKey:@"_radius"];
        self->_radius = v43;
        self->_p0 = *MEMORY[0x277CBF348];
        if ([v5 containsValueForKey:@"_p0"])
        {
          [v5 decodeCGPointForKey:@"_p0"];
          x = v44;
          y = v46;
          self->_p0.x = v44;
          self->_p0.y = v46;
        }

        else
        {
          x = self->_p0.x;
          y = self->_p0.y;
        }

        v52 = [(PKPhysicsBody *)self initWithCircleOfRadius:self->_radius center:x, y];
        break;
      case 2:
        [v5 decodeCGSizeForKey:@"_size"];
        self->_size.width = v57;
        self->_size.height = v58;
        self->_p0 = *MEMORY[0x277CBF348];
        if ([v5 containsValueForKey:@"_p0"])
        {
          [v5 decodeCGPointForKey:@"_p0"];
          v60 = v59;
          v62 = v61;
          self->_p0.x = v59;
          self->_p0.y = v61;
        }

        else
        {
          v60 = self->_p0.x;
          v62 = self->_p0.y;
        }

        v52 = [(PKPhysicsBody *)self initWithRectangleOfSize:self->_size.width center:self->_size.height, v60, v62];
        break;
      case 3:
        v13 = MEMORY[0x277CBEB98];
        v72[0] = objc_opt_class();
        v72[1] = objc_opt_class();
        v72[2] = objc_opt_class();
        v72[3] = objc_opt_class();
        v72[4] = objc_opt_class();
        v72[5] = objc_opt_class();
        v72[6] = objc_opt_class();
        v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v72 count:7];
        v15 = [v13 setWithArray:v14];
        v16 = [v5 decodeObjectOfClasses:v15 forKey:@"_path"];

        v12 = [(PKPhysicsBody *)self initWithPolygonFromPath:PKCGPathCreateFromArray(v16, 0)];
        goto LABEL_30;
      default:
        goto LABEL_27;
    }

LABEL_37:
    self = v52;
    goto LABEL_38;
  }

  if (shapeType <= 5)
  {
    if (shapeType != 4)
    {
      v8 = MEMORY[0x277CBEB98];
      v71[0] = objc_opt_class();
      v71[1] = objc_opt_class();
      v71[2] = objc_opt_class();
      v71[3] = objc_opt_class();
      v71[4] = objc_opt_class();
      v71[5] = objc_opt_class();
      v71[6] = objc_opt_class();
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:7];
      v10 = [v8 setWithArray:v9];
      v11 = [v5 decodeObjectOfClasses:v10 forKey:@"_path"];

      v12 = [(PKPhysicsBody *)self initWithEdgeChainFromPath:PKCGPathCreateFromArray(v11, 0)];
LABEL_30:
      self = v12;
      goto LABEL_38;
    }

    [v5 decodeCGPointForKey:@"_p0"];
    self->_p0.x = v48;
    self->_p0.y = v49;
    [v5 decodeCGPointForKey:@"_p1"];
    self->_p1.x = v50;
    self->_p1.y = v51;
    v52 = [(PKPhysicsBody *)self initWithEdgeFromPoint:self->_p0.x toPoint:self->_p0.y, v50, v51];
    goto LABEL_37;
  }

  if (shapeType == 6)
  {
    v53 = MEMORY[0x277CBEB98];
    v70[0] = objc_opt_class();
    v70[1] = objc_opt_class();
    v70[2] = objc_opt_class();
    v70[3] = objc_opt_class();
    v70[4] = objc_opt_class();
    v70[5] = objc_opt_class();
    v70[6] = objc_opt_class();
    v54 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:7];
    v55 = [v53 setWithArray:v54];
    v56 = [v5 decodeObjectOfClasses:v55 forKey:@"_path"];

    v12 = [(PKPhysicsBody *)self initWithEdgeLoopFromPath:PKCGPathCreateFromArray(v56, 0)];
    goto LABEL_30;
  }

  if (shapeType != 7)
  {
LABEL_27:
    NSLog(&cfstr_DecodeError.isa);
    goto LABEL_38;
  }

  v17 = objc_alloc_init(PKPhysicsBody);

  v18 = [v5 decodeInt32ForKey:@"_compoundBodyCount"];
  if (v18 >= 1)
  {
    do
    {
      v19 = [v5 decodeObject];
      if ([v19 isEqualToString:@"circle"])
      {
        v20 = [v5 decodeObject];
        v21 = PKCGPointFromString(v20);
        v22 = [v5 decodeObject];

        v23 = PKCGPointFromString(v22);
        v25 = v24;
        v26 = PKGet_INV_PTM_RATIO();
        v27 = PKGet_INV_PTM_RATIO();
        v28 = PKGet_INV_PTM_RATIO();
        v29 = v21 * v26;
        v69.x = v23 * v27;
        v69.y = v25 * v28;
        addCircleBody(v17, v29, &v69);
      }

      if ([v19 isEqualToString:@"edge"])
      {
        v30 = [v5 decodeObject];
        v31 = PKCGPointFromString(v30);
        v33 = v32;
        v34 = [v5 decodeObject];

        v35 = PKCGPointFromString(v34);
        v37 = v36;
        v38 = PKGet_INV_PTM_RATIO();
        v39 = PKGet_INV_PTM_RATIO();
        v69.x = v31 * v38;
        v69.y = v33 * v39;
        LODWORD(v33) = PKGet_INV_PTM_RATIO();
        v40 = PKGet_INV_PTM_RATIO();
        v68.x = v35 * *&v33;
        v68.y = v37 * v40;
        addEdge(v17, &v69, &v68);
      }

      if ([v19 isEqualToString:@"polygon"])
      {
        v41 = [v5 decodeObject];
        PKCGPathCreateFromArray(v41, 1);
        PKPathCreateFromCGPathWithOptions();
      }

      if ([v19 isEqualToString:@"chain"])
      {
        v42 = [v5 decodeObject];
        PKCGPathCreateFromArray(v42, 1);
        PKPathCreateFromCGPathWithOptions();
      }

      --v18;
    }

    while (v18);
  }

  v17->_shapeType = 7;
  self = v17;
LABEL_38:
  v63 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"_outline"];
  v64 = v63;
  if (v63)
  {
    v65 = v63;
    v66 = v65;
    [v65 bytes];
    if ([v65 length] > 0xF)
    {
      operator new();
    }
  }

  -[PKPhysicsBody setDynamic:](self, "setDynamic:", [v5 decodeBoolForKey:@"dynamic"]);
  -[PKPhysicsBody setUsesPreciseCollisionDetection:](self, "setUsesPreciseCollisionDetection:", [v5 decodeBoolForKey:@"needsContinuousCollsionDetection"]);
  -[PKPhysicsBody setAllowsRotation:](self, "setAllowsRotation:", [v5 decodeBoolForKey:@"allowRotation"]);
  -[PKPhysicsBody setPinned:](self, "setPinned:", [v5 decodeBoolForKey:@"pinned"]);
  [v5 decodeDoubleForKey:@"friction"];
  [(PKPhysicsBody *)self setFriction:?];
  [v5 decodeDoubleForKey:@"charge"];
  [(PKPhysicsBody *)self setCharge:?];
  [v5 decodeDoubleForKey:@"restitution"];
  [(PKPhysicsBody *)self setRestitution:?];
  [v5 decodeDoubleForKey:@"density"];
  [(PKPhysicsBody *)self setDensity:?];
  -[PKPhysicsBody setAffectedByGravity:](self, "setAffectedByGravity:", [v5 decodeBoolForKey:@"affectedByGravity"]);
  -[PKPhysicsBody setCategoryBitMask:](self, "setCategoryBitMask:", [v5 decodeInt32ForKey:@"categoryBitMask"]);
  -[PKPhysicsBody setCollisionBitMask:](self, "setCollisionBitMask:", [v5 decodeInt32ForKey:@"collisionBitMask"]);
  -[PKPhysicsBody setContactTestBitMask:](self, "setContactTestBitMask:", [v5 decodeInt32ForKey:@"intersectionTestBitMask"]);
  -[PKPhysicsBody setFieldBitMask:](self, "setFieldBitMask:", [v5 decodeInt32ForKey:@"fieldBitMask"]);
  [v5 decodeCGVectorForKey:@"linearVelocity"];
  [(PKPhysicsBody *)self setVelocity:?];
  [v5 decodeDoubleForKey:@"angularVelocity"];
  [(PKPhysicsBody *)self setAngularVelocity:?];
  [v5 decodeDoubleForKey:@"linearDamping"];
  [(PKPhysicsBody *)self setLinearDamping:?];
  [v5 decodeDoubleForKey:@"angularDamping"];
  [(PKPhysicsBody *)self setAngularDamping:?];

  return self;
}

- (BOOL)isEqualToBody:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    goto LABEL_20;
  }

  if (self->_shapeType != v4->_shapeType)
  {
    goto LABEL_21;
  }

  ptr = self->_pathPtr.__ptr_;
  v7 = v5[21];
  if (!ptr)
  {
    if (!v7)
    {
      goto LABEL_8;
    }

LABEL_21:
    v22 = 0;
    goto LABEL_22;
  }

  if (!v7)
  {
    goto LABEL_21;
  }

  v8 = PKArrayFromPKPath(ptr);
  v9 = PKArrayFromPKPath(v5[21]);
  v10 = [v8 isEqual:v9];

  if ((v10 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_8:
  v11 = [(PKPhysicsBody *)self isDynamic];
  if (v11 != [v5 isDynamic])
  {
    goto LABEL_21;
  }

  v12 = [(PKPhysicsBody *)self usesPreciseCollisionDetection];
  if (v12 != [v5 usesPreciseCollisionDetection])
  {
    goto LABEL_21;
  }

  v13 = [(PKPhysicsBody *)self allowsRotation];
  if (v13 != [v5 allowsRotation])
  {
    goto LABEL_21;
  }

  v14 = [(PKPhysicsBody *)self pinned];
  if (v14 != [v5 pinned])
  {
    goto LABEL_21;
  }

  v15 = [(PKPhysicsBody *)self affectedByGravity];
  if (v15 != [v5 affectedByGravity])
  {
    goto LABEL_21;
  }

  v16 = [(PKPhysicsBody *)self categoryBitMask];
  if (v16 != [v5 categoryBitMask])
  {
    goto LABEL_21;
  }

  v17 = [(PKPhysicsBody *)self collisionBitMask];
  if (v17 != [v5 collisionBitMask])
  {
    goto LABEL_21;
  }

  v18 = [(PKPhysicsBody *)self fieldBitMask];
  if (v18 != [v5 fieldBitMask])
  {
    goto LABEL_21;
  }

  v19 = [(PKPhysicsBody *)self contactTestBitMask];
  if (v19 != [v5 contactTestBitMask])
  {
    goto LABEL_21;
  }

  [(PKPhysicsBody *)self area];
  [v5 area];
  [(PKPhysicsBody *)self friction];
  [v5 friction];
  [(PKPhysicsBody *)self charge];
  [v5 charge];
  [(PKPhysicsBody *)self restitution];
  [v5 restitution];
  [(PKPhysicsBody *)self density];
  [v5 density];
  [(PKPhysicsBody *)self mass];
  [v5 mass];
  [(PKPhysicsBody *)self velocity];
  [v5 velocity];
  [(PKPhysicsBody *)self velocity];
  [v5 velocity];
  [(PKPhysicsBody *)self angularVelocity];
  [v5 angularVelocity];
  [(PKPhysicsBody *)self linearDamping];
  [v5 linearDamping];
  [(PKPhysicsBody *)self angularDamping];
  [v5 angularDamping];
  v20 = self->_outline.__ptr_;
  v21 = v5[34];
  v22 = (v20 | v21) == 0;
  if (v20 && v21)
  {
    PKPath::isEqualToPath(v20, v21);
LABEL_20:
    v22 = 1;
  }

LABEL_22:

  return v22;
}

- (PKPhysicsBody)init
{
  v10.receiver = self;
  v10.super_class = PKPhysicsBody;
  v2 = [(PKPhysicsBody *)&v10 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_isPinned = 256;
    v4 = [MEMORY[0x277CBEB18] array];
    joints = v3->_joints;
    v3->_joints = v4;

    v3->_shapes.__end_ = v3->_shapes.__begin_;
    *&v3->_bodyDef.linearDamping = vdup_n_s32(0x3DCCCCCDu);
    v3->_bodyDef.allowSleep = 0;
    v3->_dynamicType = 2;
    v3->_bodyDef.type = 2;
    v3->_body = 0;
    v3->_inUse = 0;
    objc_storeWeak(&v3->_representedObject, 0);
    v3->_edgeRadius = 0.00899999961;
    cntrl = v3->_quadTree.__cntrl_;
    v3->_quadTree.__ptr_ = 0;
    v3->_quadTree.__cntrl_ = 0;
    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
    }

    v7 = v3->_pathPtr.__cntrl_;
    v3->_pathPtr.__ptr_ = 0;
    v3->_pathPtr.__cntrl_ = 0;
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    v8 = v3->_outline.__cntrl_;
    v3->_outline.__ptr_ = 0;
    v3->_outline.__cntrl_ = 0;
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  return v3;
}

- (void)dealloc
{
  begin = self->_shapes.__begin_;
  for (i = self->_shapes.__end_; begin != i; ++begin)
  {
    v5 = *begin;
    if (*begin)
    {
      if (v5->var0.var0)
      {
        (*(*v5->var0.var0 + 8))(v5->var0.var0, a2);
      }

      MEMORY[0x25F8C0280](v5, 0x10E0C40EA88CBB9);
      i = self->_shapes.__end_;
    }
  }

  cntrl = self->_outline.__cntrl_;
  self->_outline.__ptr_ = 0;
  self->_outline.__cntrl_ = 0;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }

  self->_shapes.__end_ = self->_shapes.__begin_;
  v7.receiver = self;
  v7.super_class = PKPhysicsBody;
  [(PKPhysicsBody *)&v7 dealloc];
}

- (PKPhysicsBody)initWithBodies:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v27 = a3;
  v4 = [(PKPhysicsBody *)self init];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v27 copyItems:1];
  v6 = [v5 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v6)
  {
    v28 = *v31;
    v7 = v5;
    do
    {
      v8 = 0;
      v29 = v6;
      do
      {
        if (*v31 != v28)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v30 + 1) + 8 * v8);
        for (i = *[v9 _shapes]; i != *(objc_msgSend(v9, "_shapes") + 8); ++i)
        {
          v11 = *i;
          end = v4->_shapes.__end_;
          cap = v4->_shapes.__cap_;
          if (end >= cap)
          {
            begin = v4->_shapes.__begin_;
            v16 = end - begin;
            if ((v16 + 1) >> 61)
            {
              std::vector<PKPoint>::__throw_length_error[abi:ne200100]();
            }

            v17 = cap - begin;
            v18 = v17 >> 2;
            if (v17 >> 2 <= (v16 + 1))
            {
              v18 = v16 + 1;
            }

            if (v17 >= 0x7FFFFFFFFFFFFFF8)
            {
              v19 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v19 = v18;
            }

            if (v19)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<PKPhysicsShape *>>(&v4->_shapes, v19);
            }

            v20 = (8 * v16);
            *v20 = v11;
            v14 = 8 * v16 + 8;
            v21 = v4->_shapes.__begin_;
            v22 = v4->_shapes.__end_ - v21;
            v23 = (v20 - v22);
            memcpy(v20 - v22, v21, v22);
            v24 = v4->_shapes.__begin_;
            v4->_shapes.__begin_ = v23;
            v4->_shapes.__end_ = v14;
            v4->_shapes.__cap_ = 0;
            if (v24)
            {
              operator delete(v24);
            }

            v5 = v7;
          }

          else
          {
            *end = v11;
            v14 = (end + 1);
          }

          v4->_shapes.__end_ = v14;
        }

        v25 = [v9 _shapes];
        v25[1] = *v25;
        ++v8;
      }

      while (v8 != v29);
      v6 = [v5 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v6);
  }

  v4->_shapeType = 7;
  return v4;
}

- (PKPhysicsBody)initWithCircleOfRadius:(double)a3 center:(CGPoint)a4
{
  v5 = [(PKPhysicsBody *)self init:*&a4.x];
  v6 = a3;
  addCircleBody(v5, v6, &v8);
}

- (PKPhysicsBody)initWithRectangleOfSize:(CGSize)a3
{
  edgeRadius = self->_edgeRadius;
  *&edgeRadius = edgeRadius;
  return [(PKPhysicsBody *)self initWithRectangleOfSize:a3.width center:a3.height edgeRadius:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), edgeRadius];
}

- (PKPhysicsBody)initWithRectangleOfSize:(CGSize)a3 center:(CGPoint)a4
{
  edgeRadius = self->_edgeRadius;
  *&edgeRadius = edgeRadius;
  return [(PKPhysicsBody *)self initWithRectangleOfSize:a3.width center:a3.height edgeRadius:a4.x, a4.y, edgeRadius];
}

+ (id)initWithQuadTree:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(PKPhysicsBody);
  v5 = v4;
  v4->_shapeType = 8;
  v7 = v3[1];
  v6 = v3[2];
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = v4->_quadTree.__cntrl_;
  v5->_quadTree.__ptr_ = v7;
  v5->_quadTree.__cntrl_ = v6;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }

  v9 = v5;
  v9->_dynamicType = 1;
  v9->_bodyDef.type = 1;
  operator new();
}

+ (id)initWithMarchingCubes:(void *)a3 pixelFrame:(CGRect)a4
{
  v6 = a4;
  v4 = PKCGrid::physicsBodyFromMarchingCubes(a3, &v6);

  return v4;
}

+ (id)bodyWithBodies:(id)a3
{
  v3 = a3;
  v4 = [[PKPhysicsBody alloc] initWithBodies:v3];

  return v4;
}

+ (id)bodyWithCircleOfRadius:(double)a3
{
  v4 = [PKPhysicsBody alloc];
  v5 = [(PKPhysicsBody *)v4 initWithCircleOfRadius:a3 center:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];

  return v5;
}

+ (id)bodyWithCircleOfRadius:(double)a3 center:(CGPoint)a4
{
  v4 = [[PKPhysicsBody alloc] initWithCircleOfRadius:a3 center:a4.x, a4.y];

  return v4;
}

+ (id)bodyWithRectangleOfSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [PKPhysicsBody alloc];
  v6 = [(PKPhysicsBody *)v5 initWithRectangleOfSize:width center:height, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];

  return v6;
}

+ (id)bodyWithRectangleOfSize:(CGSize)a3 edgeRadius:(double)a4
{
  height = a3.height;
  width = a3.width;
  v7 = [PKPhysicsBody alloc];
  *&v8 = a4;
  v9 = [(PKPhysicsBody *)v7 initWithRectangleOfSize:width center:height edgeRadius:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), v8];

  return v9;
}

+ (id)bodyWithRectangleOfSize:(CGSize)a3 center:(CGPoint)a4
{
  v4 = [[PKPhysicsBody alloc] initWithRectangleOfSize:a3.width center:a3.height, a4.x, a4.y];

  return v4;
}

+ (id)bodyWithRectangleOfSize:(CGSize)a3 center:(CGPoint)a4 edgeRadius:(double)a5
{
  y = a4.y;
  x = a4.x;
  height = a3.height;
  width = a3.width;
  v10 = [PKPhysicsBody alloc];
  *&v11 = a5;
  v12 = [(PKPhysicsBody *)v10 initWithRectangleOfSize:width center:height edgeRadius:x, y, v11];

  return v12;
}

+ (id)bodyWithEdgeFromPoint:(CGPoint)a3 toPoint:(CGPoint)a4
{
  v4 = [[PKPhysicsBody alloc] initWithEdgeFromPoint:a3.x toPoint:a3.y, a4.x, a4.y];

  return v4;
}

+ (id)bodyWithPolygonFromPath:(CGPath *)a3
{
  if (!CGPathIsEllipse() || (width = v13.size.width, height = v13.size.height, v6 = v13.size.width, v7 = v13.size.height, (COERCE_UNSIGNED_INT(v6 - v7) & 0x60000000) != 0))
  {
    PKPathCreateFromSimplifiedCGPath();
  }

  x = v13.origin.x;
  y = v13.origin.y;
  MidX = CGRectGetMidX(*(&width - 2));
  v11 = [a1 bodyWithCircleOfRadius:(v6 * 0.5) center:{MidX, CGRectGetMidY(v13)}];

  return v11;
}

+ (id)bodyWithEdgeChainFromPath:(CGPath *)a3
{
  v3 = [[PKPhysicsBody alloc] initWithEdgeChainFromPath:a3];

  return v3;
}

+ (id)bodyWithEdgeLoopFromPath:(CGPath *)a3
{
  v3 = [[PKPhysicsBody alloc] initWithEdgeLoopFromPath:a3];

  return v3;
}

- (NSObject)representedObject
{
  WeakRetained = objc_loadWeakRetained(&self->_representedObject);

  return WeakRetained;
}

- (void)setPinned:(BOOL)a3
{
  self->_isPinned = a3;
  v10 = !self->_allowsRotation && !a3;
  self->_bodyDef.fixedRotation = v10;
  body = self->_body;
  if (body)
  {
    b2Body::SetFixedRotation(body, v10, v3, v4, v5, v6, v7, v8, v9);
  }
}

- (void)setPosition:(CGPoint)a3
{
  y = a3.y;
  v5 = a3.x * PKGet_INV_PTM_RATIO();
  v6 = y * PKGet_INV_PTM_RATIO();
  v10.x = v5;
  v10.y = v6;
  if ((LODWORD(v5) & 0x7FFFFFFFu) <= 0x7F7FFFFF && (LODWORD(v6) & 0x7FFFFFFFu) < 0x7F800000)
  {
    body = self->_body;
    if (body)
    {
      v9 = atan2f(body->var8.var1.var0, body->var8.var1.var1);
      b2Body::SetTransform(body, &v10, v9);
    }

    self->_bodyDef.position = v10;
    [(PKPhysicsBody *)self setResting:0];
  }
}

- (CGPoint)position
{
  body = self->_body;
  if (body)
  {
    p_var0 = &body->var8.var0;
  }

  else
  {
    p_var0 = &self->_bodyDef.position;
  }

  x = p_var0->x;
  y = p_var0->y;
  v6 = (x * PKGet_PTM_RATIO());
  v7 = (y * PKGet_PTM_RATIO());
  v8 = v6;
  result.y = v7;
  result.x = v8;
  return result;
}

- (void)set_allowSleep:(BOOL)a3
{
  body = self->_body;
  if (body)
  {
    b2Body::SetSleepingAllowed(body, a3);
  }

  self->_bodyDef.allowSleep = a3;
}

- (BOOL)_allowSleep
{
  body = self->_body;
  if (body)
  {
    LOBYTE(v4) = b2Body::IsSleepingAllowed(body);
  }

  else
  {
    return self->_bodyDef.allowSleep;
  }

  return v4;
}

- (void)setRotation:(double)a3
{
  if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v11 = v6;
    v12 = v5;
    v13 = v3;
    v14 = v4;
    body = self->_body;
    if (body)
    {
      var0 = body->var8.var0;
      v9 = a3;
      b2Body::SetTransform(body, &var0, v9);
    }

    else
    {
      v9 = a3;
    }

    self->_bodyDef.angle = v9;
    [(PKPhysicsBody *)self setResting:0];
  }
}

- (double)rotation
{
  body = self->_body;
  if (body)
  {
    return atan2f(body->var8.var1.var0, body->var8.var1.var1);
  }

  else
  {
    return self->_bodyDef.angle;
  }
}

- (void)setLinearDamping:(double)a3
{
  body = self->_body;
  v4 = a3;
  if (body)
  {
    *(&body->var30 + 1) = v4;
  }

  self->_bodyDef.linearDamping = v4;
}

- (double)linearDamping
{
  body = self->_body;
  if (body)
  {
    p_linearDamping = &body->var30 + 1;
  }

  else
  {
    p_linearDamping = &self->_bodyDef.linearDamping;
  }

  return *p_linearDamping;
}

- (void)setAngularDamping:(double)a3
{
  body = self->_body;
  v4 = a3;
  if (body)
  {
    *&body[1].var0 = v4;
  }

  self->_bodyDef.angularDamping = v4;
}

- (double)angularDamping
{
  body = self->_body;
  if (body)
  {
    p_var0 = &body[1].var0;
  }

  else
  {
    p_var0 = &self->_bodyDef.angularDamping;
  }

  return *p_var0;
}

- (void)applyForce:(CGPoint)a3 atPoint:(CGPoint)a4
{
  body = self->_body;
  if (body)
  {
    x = a4.x;
    v19 = a3.x;
    y = a3.y;
    v18 = PKGet_INV_PTM_RATIO();
    v6 = PKGet_INV_PTM_RATIO();
    v7.f64[0] = v19;
    v7.f64[1] = y;
    v21 = vcvt_f32_f64(vmulq_f64(v7, vcvtq_f64_f32(__PAIR64__(LODWORD(v6), LODWORD(v18)))));
    v8 = PKGet_INV_PTM_RATIO();
    PKGet_INV_PTM_RATIO();
    v9 = vcge_s32((*&v21 & 0x7FFFFFFF7FFFFFFFLL), vneg_f32(0x7F0000007FLL));
    if (((v9.i32[0] | v9.i32[1]) & 1) == 0 && body->var5 == 2)
    {
      v10 = x * v8;
      if ((b2Body::IsAwake(body) & 1) == 0)
      {
        b2Body::SetAwake(body, 1);
      }

      _V2.S[1] = v21.i32[1];
      *(&body->var15 + 4) = vadd_f32(*(&body->var15 + 4), v21);
      _S0 = v10 - body->var10.var2.var0.var1;
      __asm { FMLA            S1, S0, V2.S[1] }

      *(&body->var16 + 1) = *(&body->var16 + 1) + _S1;
    }
  }
}

- (void)applyForce:(CGPoint)a3
{
  body = self->_body;
  if (body)
  {
    x = a3.x;
    y = a3.y;
    v8 = PKGet_INV_PTM_RATIO();
    v4 = PKGet_INV_PTM_RATIO();
    v5.f64[0] = x;
    v5.f64[1] = y;
    v6 = vcvt_f32_f64(vmulq_f64(v5, vcvtq_f64_f32(__PAIR64__(LODWORD(v4), LODWORD(v8)))));
    v7 = vcge_s32((*&v6 & 0x7FFFFFFF7FFFFFFFLL), vneg_f32(0x7F0000007FLL));
    if (((v7.i32[0] | v7.i32[1]) & 1) == 0 && body->var5 == 2)
    {
      if ((b2Body::IsAwake(body) & 1) == 0)
      {
        b2Body::SetAwake(body, 1);
      }

      *(&body->var15 + 4) = vadd_f32(*(&body->var15 + 4), v6);
    }
  }
}

- (void)applyTorque:(double)a3
{
  body = self->_body;
  v4 = a3;
  if (body)
  {
    v5 = COERCE_UNSIGNED_INT(fabs(a3)) <= 0x7F7FFFFF;
  }

  else
  {
    v5 = 0;
  }

  if (v5 && body->var5 == 2)
  {
    if ((b2Body::IsAwake(self->_body) & 1) == 0)
    {
      b2Body::SetAwake(body, 1);
    }

    *(&body->var16 + 1) = *(&body->var16 + 1) + v4;
  }
}

- (void)applyImpulse:(CGVector)a3 atPoint:(CGPoint)a4
{
  body = self->_body;
  if (body)
  {
    x = a4.x;
    dx = a3.dx;
    dy = a3.dy;
    v18 = PKGet_INV_PTM_RATIO();
    v6 = PKGet_INV_PTM_RATIO();
    v7.f64[0] = dx;
    v7.f64[1] = dy;
    v21 = vcvt_f32_f64(vmulq_f64(v7, vcvtq_f64_f32(__PAIR64__(LODWORD(v6), LODWORD(v18)))));
    v8 = PKGet_INV_PTM_RATIO();
    PKGet_INV_PTM_RATIO();
    v9 = vcge_s32((*&v21 & 0x7FFFFFFF7FFFFFFFLL), vneg_f32(0x7F0000007FLL));
    if (((v9.i32[0] | v9.i32[1]) & 1) == 0 && body->var5 == 2)
    {
      v10 = x * v8;
      if ((b2Body::IsAwake(body) & 1) == 0)
      {
        b2Body::SetAwake(body, 1);
      }

      _V3.S[1] = v21.i32[1];
      *&body->var14 = vadd_f32(vmul_n_f32(v21, body->var27), *&body->var14);
      _S0 = v10 - body->var10.var2.var0.var1;
      __asm { FMLA            S1, S0, V3.S[1] }

      *&body->var15 = *&body->var15 + (*&body->var30 * _S1);
    }
  }
}

- (void)applyImpulse:(CGVector)a3
{
  body = self->_body;
  if (body)
  {
    var1 = body->var10.var2.var0.var1;
    dx = a3.dx;
    dy = a3.dy;
    v16 = PKGet_INV_PTM_RATIO();
    v5 = PKGet_INV_PTM_RATIO();
    v6.f64[0] = dx;
    v6.f64[1] = dy;
    v7 = vcvt_f32_f64(vmulq_f64(v6, vcvtq_f64_f32(__PAIR64__(LODWORD(v5), LODWORD(v16)))));
    v8 = vcge_s32((*&v7 & 0x7FFFFFFF7FFFFFFFLL), vneg_f32(0x7F0000007FLL));
    if (((v8.i32[0] | v8.i32[1]) & 1) == 0 && body->var5 == 2)
    {
      v19 = v7;
      if ((b2Body::IsAwake(body) & 1) == 0)
      {
        b2Body::SetAwake(body, 1);
      }

      _V3.S[1] = v19.i32[1];
      *&body->var14 = vadd_f32(vmul_n_f32(v19, body->var27), *&body->var14);
      _S0 = var1 - body->var10.var2.var0.var1;
      __asm { FMLA            S1, S0, V3.S[1] }

      *&body->var15 = *&body->var15 + (*&body->var30 * _S1);
    }
  }
}

- (void)applyAngularImpulse:(double)a3
{
  body = self->_body;
  v4 = a3;
  if (body)
  {
    v5 = COERCE_UNSIGNED_INT(fabs(a3)) <= 0x7F7FFFFF;
  }

  else
  {
    v5 = 0;
  }

  if (v5 && body->var5 == 2)
  {
    if ((b2Body::IsAwake(self->_body) & 1) == 0)
    {
      b2Body::SetAwake(body, 1);
    }

    *&body->var15 = *&body->var15 + (*&body->var30 * v4);
  }
}

- (void)applyUnscaledForce:(CGVector)a3 atPoint:(CGPoint)a4
{
  body = self->_body;
  if (body)
  {
    y = a4.y;
    x = a4.x;
    dx = a3.dx;
    dy = a3.dy;
    v15 = dy;
    v9 = dy;
    v10 = PKGet_INV_PTM_RATIO();
    v11 = PKGet_INV_PTM_RATIO();
    if ((LODWORD(dx) & 0x7FFFFFFFu) <= 0x7F7FFFFF && (LODWORD(v9) & 0x7FFFFFFFu) <= 0x7F7FFFFF && body->var5 == 2)
    {
      v12 = x * v10;
      v13 = y * v11;
      if ((b2Body::IsAwake(body) & 1) == 0)
      {
        b2Body::SetAwake(body, 1);
      }

      *(&body->var15 + 1) = *(&body->var15 + 1) + dx;
      v14.f32[0] = v15;
      v14.f32[1] = ((v12 - body->var10.var2.var0.var1) * v15) - ((v13 - body->var10.var2.var0.var2) * dx);
      body->var16 = vadd_f32(body->var16, v14);
    }
  }
}

- (void)applyUnscaledForce:(CGVector)a3
{
  body = self->_body;
  if (body)
  {
    dx = a3.dx;
    dy = a3.dy;
    if ((LODWORD(dx) & 0x7FFFFFFFu) <= 0x7F7FFFFF && COERCE_UNSIGNED_INT(fabs(a3.dy)) <= 0x7F7FFFFF && body->var5 == 2)
    {
      if ((b2Body::IsAwake(self->_body) & 1) == 0)
      {
        b2Body::SetAwake(body, 1);
      }

      v6 = *&body->var16 + dy;
      *(&body->var15 + 1) = *(&body->var15 + 1) + dx;
      *&body->var16 = v6;
    }
  }
}

- (void)applyUnscaledImpulse:(CGVector)a3 atPoint:(CGPoint)a4
{
  body = self->_body;
  if (body)
  {
    x = a4.x;
    dy = a3.dy;
    v17 = vcvt_f32_f64(a3);
    v7 = PKGet_INV_PTM_RATIO();
    PKGet_INV_PTM_RATIO();
    v8 = vcge_s32((*&v17 & 0x7FFFFFFF7FFFFFFFLL), vneg_f32(0x7F0000007FLL));
    if (((v8.i32[0] | v8.i32[1]) & 1) == 0 && body->var5 == 2)
    {
      v9 = x * v7;
      if ((b2Body::IsAwake(body) & 1) == 0)
      {
        b2Body::SetAwake(body, 1);
      }

      _V3.S[1] = v17.i32[1];
      *&body->var14 = vadd_f32(vmul_n_f32(v17, body->var27), *&body->var14);
      _S0 = v9 - body->var10.var2.var0.var1;
      __asm { FMLA            S1, S0, V3.S[1] }

      *&body->var15 = *&body->var15 + (*&body->var30 * _S1);
    }
  }
}

- (void)applyUnscaledImpulse:(CGVector)a3
{
  body = self->_body;
  if (body)
  {
    dy = a3.dy;
    v5 = vcvt_f32_f64(a3);
    v6 = vcge_s32((*&v5 & 0x7FFFFFFF7FFFFFFFLL), vneg_f32(0x7F0000007FLL));
    if (((v6.i32[0] | v6.i32[1]) & 1) == 0 && body->var5 == 2)
    {
      v15 = v5;
      var1 = body->var10.var2.var0.var1;
      if ((b2Body::IsAwake(body) & 1) == 0)
      {
        b2Body::SetAwake(body, 1);
      }

      _V3.S[1] = v15.i32[1];
      *&body->var14 = vadd_f32(vmul_n_f32(v15, body->var27), *&body->var14);
      _S0 = var1 - body->var10.var2.var0.var1;
      __asm { FMLA            S1, S0, V3.S[1] }

      *&body->var15 = *&body->var15 + (*&body->var30 * _S1);
    }
  }
}

- (void)setUsesPreciseCollisionDetection:(BOOL)a3
{
  self->_bodyDef.bullet = a3;
  body = self->_body;
  if (body)
  {
    b2Body::SetBullet(body, a3);
  }
}

- (void)setAffectedByGravity:(BOOL)a3
{
  self->_bodyDef._sk_affectedByGravity = a3;
  body = self->_body;
  if (body)
  {
    body->var0 = a3;
  }
}

- (void)setCategoryBitMask:(unsigned int)a3
{
  self->_bodyDef._sk_categoryBitMask = a3;
  body = self->_body;
  if (body)
  {
    b2Body::SetCategoryBitMask(body, a3);
  }
}

- (void)setFieldBitMask:(unsigned int)a3
{
  self->_bodyDef._sk_fieldCategoryBitMask = a3;
  body = self->_body;
  if (body)
  {
    body->var1 = a3;
  }
}

- (void)setCollisionBitMask:(unsigned int)a3
{
  self->_bodyDef._sk_collisionBitMask = a3;
  body = self->_body;
  if (body)
  {
    b2Body::SetCollisionBitMask(body, a3);
  }
}

- (void)setContactTestBitMask:(unsigned int)a3
{
  self->_bodyDef._sk_intersectionCallbackBitMask = a3;
  body = self->_body;
  if (body)
  {
    b2Body::SetIntersectionCallbackBitMask(body, a3);
  }
}

- (void)setVelocity:(CGVector)a3
{
  dy = a3.dy;
  v5 = a3.dx * PKGet_INV_PTM_RATIO();
  v6 = dy * PKGet_INV_PTM_RATIO();
  if ((LODWORD(v5) & 0x7FFFFFFFu) <= 0x7F7FFFFF && (LODWORD(v6) & 0x7FFFFFFFu) < 0x7F800000)
  {
    self->_bodyDef.linearVelocity.x = v5;
    self->_bodyDef.linearVelocity.y = v6;
    body = self->_body;
    if (body)
    {
      if (body->var5)
      {
        if (((v6 * v6) + (v5 * v5)) > 0.0)
        {
          b2Body::SetAwake(body, 1);
        }

        body->var14 = v5;
        *(&body->var14 + 1) = v6;
      }
    }
  }
}

- (CGVector)velocity
{
  body = self->_body;
  p_linearVelocity = &self->_bodyDef.linearVelocity;
  p_var14 = &body->var14;
  v5 = body == 0;
  if (body)
  {
    p_y = &body->var14 + 1;
  }

  else
  {
    p_y = &self->_bodyDef.linearVelocity.y;
  }

  if (!v5)
  {
    p_linearVelocity = p_var14;
  }

  x = p_linearVelocity->x;
  v8 = *p_y;
  v9 = x * PKGet_PTM_RATIO();
  v10 = (v8 * PKGet_PTM_RATIO());
  v11 = v9;
  result.dy = v10;
  result.dx = v11;
  return result;
}

- (void)setAngularVelocity:(double)a3
{
  if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v3 = a3;
    self->_bodyDef.angularVelocity = v3;
    body = self->_body;
    if (body)
    {
      v5 = (LODWORD(v3) & 0x7FFFFFFFu) >= 0x7F800000 ? 0.0 : v3;
      if (body->var5)
      {
        if ((v5 * v5) > 0.0)
        {
          b2Body::SetAwake(self->_body, 1);
        }

        *&body->var15 = v5;
      }
    }
  }
}

- (double)angularVelocity
{
  body = self->_body;
  if (body)
  {
    p_var15 = &body->var15;
  }

  else
  {
    p_var15 = &self->_bodyDef.angularVelocity;
  }

  return *p_var15;
}

- (void)setAllowsRotation:(BOOL)a3
{
  self->_allowsRotation = a3;
  if (a3)
  {
    v11 = 0;
  }

  else
  {
    v11 = ![(PKPhysicsBody *)self pinned];
  }

  self->_bodyDef.fixedRotation = v11;
  body = self->_body;
  if (body)
  {

    b2Body::SetFixedRotation(body, v11, v3, v4, v5, v6, v7, v8, v9);
  }
}

- (BOOL)isResting
{
  body = self->_body;
  if (body)
  {
    IsAwake = b2Body::IsAwake(body);
  }

  else
  {
    IsAwake = self->_bodyDef.awake;
  }

  return (IsAwake & 1) == 0;
}

- (void)setResting:(BOOL)a3
{
  self->_bodyDef.awake = !a3;
  body = self->_body;
  if (body)
  {
    b2Body::SetAwake(body, !a3);
  }
}

- (NSArray)joints
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

- (double)mass
{
  begin = self->_shapes.__begin_;
  if (begin != self->_shapes.__end_)
  {
    v5 = 0.0;
    while (1)
    {
      v6 = *begin;
      var1 = (*begin)->var1;
      if (var1)
      {
        break;
      }

      var0 = v6->var0.var0;
      if (v6->var0.var0)
      {
        [(PKPhysicsBody *)self density];
        v9.n128_f32[0] = v9.n128_f64[0];
        (*(*var0 + 64))(var0, v11, v9);
        goto LABEL_7;
      }

LABEL_8:
      if (++begin == self->_shapes.__end_)
      {
        return v5;
      }
    }

    v2.n128_u32[0] = *(var1 + 2);
    (*(**(var1 + 4) + 64))(*(var1 + 4), v11, v2);
LABEL_7:
    v2.n128_f64[0] = v11[0];
    v5 = v5 + v11[0];
    goto LABEL_8;
  }

  return 0.0;
}

- (void)setMass:(double)a3
{
  [(PKPhysicsBody *)self mass];
  v6 = v5;
  [(PKPhysicsBody *)self density];
  v8 = v7 / v6 * a3;

  [(PKPhysicsBody *)self setDensity:v8];
}

- (void)setDensity:(double)a3
{
  begin = self->_shapes.__begin_;
  end = self->_shapes.__end_;
  if (begin != end)
  {
    *&a3 = a3;
    v11 = (LODWORD(a3) & 0x7FFFFFFF) == 0;
    if ((LODWORD(a3) - 1) < 0x7FFFFF)
    {
      v11 = 1;
    }

    v13 = ((LODWORD(a3) & 0x7FFFFFFFu) - 0x800000) >> 24 < 0x7F && SLODWORD(a3) >= 0 || v11;
    do
    {
      v14 = *begin;
      v14->var0.var4 = *&a3;
      var1 = v14->var1;
      if (var1)
      {
        if ((v13 & 1) == 0)
        {
          [PKPhysicsBody setDensity:];
        }

        *(var1 + 2) = LODWORD(a3);
      }

      ++begin;
    }

    while (begin != end);
  }

  body = self->_body;
  if (body)
  {

    b2Body::ResetMassData(body, a3, v3, v4, v5, v6, v7, v8);
  }
}

- (double)density
{
  begin = self->_shapes.__begin_;
  if (self->_shapes.__end_ == begin)
  {
    return 0.0;
  }

  else
  {
    return (*begin)->var0.var4;
  }
}

- (double)area
{
  [(PKPhysicsBody *)self density];
  if (v3 == 0.0)
  {
    return 0.0;
  }

  [(PKPhysicsBody *)self mass];
  v5 = v4;
  [(PKPhysicsBody *)self density];
  return v5 / v6;
}

- (double)radius
{
  begin = self->_shapes.__begin_;
  if (self->_shapes.__end_ == begin)
  {
    return 0.0;
  }

  else
  {
    return *((*begin)->var0.var0 + 3);
  }
}

- (void)reapplyScale:(double)a3 yScale:(double)a4
{
  if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&a4 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    begin = self->_shapes.__begin_;
    end = self->_shapes.__end_;
    if (begin != end)
    {
      v7 = a3;
      v8 = a4;
      do
      {
        v9 = *begin;
        var1 = (*begin)->var1;
        if (var1)
        {
          PKPhysicsReapplyScaleOnFixture(v9, var1, v7, v8);
        }

        else
        {
          v9->var5 = v7;
          v9->var6 = v8;
        }

        ++begin;
      }

      while (begin != end);
    }

    body = self->_body;
    if (body)
    {
      v12 = atan2f(body->var8.var1.var0, body->var8.var1.var1);

      b2Body::SetTransform(body, &body->var8.var0, v12);
    }
  }
}

- (void)setRadius:(double)a3
{
  if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    begin = self->_shapes.__begin_;
    end = self->_shapes.__end_;
    if (begin != end)
    {
      v6 = a3;
      do
      {
        v7 = *begin++;
        *(*(*(v7 + 40) + 32) + 12) = v6;
      }

      while (begin != end);
    }

    body = self->_body;
    v9 = atan2f(body->var8.var1.var0, body->var8.var1.var1);

    b2Body::SetTransform(body, &body->var8.var0, v9);
  }
}

- (void)setRestitution:(double)a3
{
  begin = self->_shapes.__begin_;
  end = self->_shapes.__end_;
  if (begin != end)
  {
    v5 = a3;
    do
    {
      v6 = *begin;
      v6->var0.var3 = v5;
      var1 = v6->var1;
      if (var1)
      {
        *(var1 + 11) = v5;
      }

      ++begin;
    }

    while (begin != end);
  }
}

- (double)restitution
{
  begin = self->_shapes.__begin_;
  if (self->_shapes.__end_ == begin)
  {
    return 0.0;
  }

  else
  {
    return (*begin)->var0.var3;
  }
}

- (void)setFriction:(double)a3
{
  begin = self->_shapes.__begin_;
  end = self->_shapes.__end_;
  if (begin != end)
  {
    v5 = a3;
    do
    {
      v6 = *begin;
      v6->var0.var2 = v5;
      var1 = v6->var1;
      if (var1)
      {
        *(var1 + 10) = v5;
      }

      ++begin;
    }

    while (begin != end);
  }
}

- (double)friction
{
  begin = self->_shapes.__begin_;
  if (self->_shapes.__end_ == begin)
  {
    return 0.0;
  }

  else
  {
    return (*begin)->var0.var2;
  }
}

- (void)setCharge:(double)a3
{
  if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v3 = a3;
    self->_bodyDef.charge = v3;
    body = self->_body;
    if (body)
    {
      b2Body::SetCharge(body, v3);
    }
  }
}

- (double)charge
{
  body = self->_body;
  if (body)
  {
    return b2Body::GetCharge(body);
  }

  else
  {
    return self->_bodyDef.charge;
  }
}

- (void)setDynamic:(BOOL)a3
{
  if (a3)
  {
    dynamicType = self->_dynamicType;
  }

  else
  {
    dynamicType = 0;
  }

  self->_bodyDef.type = dynamicType;
  body = self->_body;
  if (body)
  {
    b2Body::SetType(body, dynamicType, v3, v4, v5, v6, v7, v8, v9);
  }
}

- (id)copy
{
  v3 = MEMORY[0x25F8C01C0](self, a2);

  return [(PKPhysicsBody *)self copyWithZone:v3];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = v4;
  *(v4 + 164) = self->_shapeType;
  *(v4 + 256) = self->_edgeRadius;
  *(v4 + 248) = self->_radius;
  *(v4 + 200) = self->_p0;
  *(v4 + 216) = self->_p1;
  *(v4 + 232) = self->_size;
  ptr = self->_pathPtr.__ptr_;
  cntrl = self->_pathPtr.__cntrl_;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  v8 = *(v4 + 176);
  v5->_pathPtr.__ptr_ = ptr;
  v5->_pathPtr.__cntrl_ = cntrl;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v10 = self->_outline.__ptr_;
  v9 = self->_outline.__cntrl_;
  if (v9)
  {
    atomic_fetch_add_explicit(v9 + 1, 1uLL, memory_order_relaxed);
  }

  v11 = v5->_outline.__cntrl_;
  v5->_outline.__ptr_ = v10;
  v5->_outline.__cntrl_ = v9;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  [(PKPhysicsBody *)v5 setDynamic:[(PKPhysicsBody *)self isDynamic]];
  [(PKPhysicsBody *)v5 setUsesPreciseCollisionDetection:[(PKPhysicsBody *)self usesPreciseCollisionDetection]];
  [(PKPhysicsBody *)v5 setAllowsRotation:[(PKPhysicsBody *)self allowsRotation]];
  shapeType = self->_shapeType;
  if (shapeType > 4)
  {
    if (shapeType <= 6)
    {
      if (shapeType != 5)
      {
        v14 = v5->_pathPtr.__cntrl_;
        v27[0] = v5->_pathPtr.__ptr_;
        v27[1] = v14;
        if (v14)
        {
          atomic_fetch_add_explicit(v14 + 1, 1uLL, memory_order_relaxed);
        }

        addEdgeLoop(v5, v27);
      }

      v16 = v5->_pathPtr.__cntrl_;
      v28[0] = v5->_pathPtr.__ptr_;
      v28[1] = v16;
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      addEdgeChain(v5, v28);
    }

    if (shapeType == 7)
    {
      begin = self->_shapes.__begin_;
      if (begin != self->_shapes.__end_)
      {
        v24 = xmmword_25E7EAD90;
        do
        {
          var0 = (*begin)->var0.var0;
          v20 = var0[1].i32[0];
          if (v20 <= 1)
          {
            if (!v20)
            {
              v22 = var0[1].f32[1];
              v26.x = 0.0;
              v26.y = 0.0;
              addCircleBody(v5, v22, &v26);
            }

            if (v20 == 1)
            {
              v21 = vcvtq_f64_f32(var0[2]);
              v25 = vcvtq_f64_f32(var0[3]);
              v26 = v21;
              addEdge(v5, &v26, &v25);
            }
          }

          else
          {
            switch(v20)
            {
              case 2:
                operator new();
              case 3:
                operator new();
              case 4:
                NSLog(&cfstr_NeedToImplemen_0.isa, v24);
                break;
            }
          }

          ++begin;
        }

        while (begin != self->_shapes.__end_);
      }
    }

    else
    {
      if (shapeType != 8)
      {
        goto LABEL_47;
      }

      NSLog(&cfstr_NeedToImplemen.isa);
    }
  }

  else
  {
    if (shapeType <= 2)
    {
      if (shapeType == 1)
      {
        radius = self->_radius;
        addCircleBody(v5, radius, &self->_p0);
      }

      if (shapeType == 2)
      {
        edgeRadius = v5->_edgeRadius;
        addRectangle(v5, &v5->_size, &v5->_p0, edgeRadius);
      }

LABEL_47:
      NSLog(&cfstr_EncodeError.isa);
      __assert_rtn("[PKPhysicsBody copyWithZone:]", "PKPhysicsBody.mm", 1593, "false");
    }

    if (shapeType != 3)
    {
      addEdge(v5, &v5->_p0, &v5->_p1);
    }

    v17 = v5->_pathPtr.__cntrl_;
    v29[0] = v5->_pathPtr.__ptr_;
    v29[1] = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    addPolygonFromPath(v5, v29);
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }
  }

  [(PKPhysicsBody *)self friction];
  [(PKPhysicsBody *)v5 setFriction:?];
  [(PKPhysicsBody *)self charge];
  [(PKPhysicsBody *)v5 setCharge:?];
  [(PKPhysicsBody *)self restitution];
  [(PKPhysicsBody *)v5 setRestitution:?];
  [(PKPhysicsBody *)self density];
  [(PKPhysicsBody *)v5 setDensity:?];
  [(PKPhysicsBody *)v5 setAffectedByGravity:[(PKPhysicsBody *)self affectedByGravity]];
  [(PKPhysicsBody *)v5 setCategoryBitMask:[(PKPhysicsBody *)self categoryBitMask]];
  [(PKPhysicsBody *)v5 setCollisionBitMask:[(PKPhysicsBody *)self collisionBitMask]];
  [(PKPhysicsBody *)v5 setContactTestBitMask:[(PKPhysicsBody *)self contactTestBitMask]];
  [(PKPhysicsBody *)v5 setFieldBitMask:[(PKPhysicsBody *)self fieldBitMask]];
  [(PKPhysicsBody *)v5 setPinned:[(PKPhysicsBody *)self pinned]];
  [(PKPhysicsBody *)self mass];
  [(PKPhysicsBody *)v5 setMass:?];
  [(PKPhysicsBody *)self angularDamping];
  [(PKPhysicsBody *)v5 setAngularDamping:?];
  [(PKPhysicsBody *)self linearDamping];
  [(PKPhysicsBody *)v5 setLinearDamping:?];
  [(PKPhysicsBody *)self velocity];
  [(PKPhysicsBody *)v5 setVelocity:?];
  [(PKPhysicsBody *)self angularVelocity];
  [(PKPhysicsBody *)v5 setAngularVelocity:?];
  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  WeakRetained = objc_loadWeakRetained(&self->_representedObject);
  v5 = [v3 stringWithFormat:@"%@", WeakRetained];

  v6 = objc_loadWeakRetained(&self->_representedObject);
  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_representedObject);
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = objc_loadWeakRetained(&self->_representedObject);
      [v9 description];
    }

    else
    {
      v11 = MEMORY[0x277CCACA8];
      v9 = objc_loadWeakRetained(&self->_representedObject);
      [v11 stringWithFormat:@"%luxp", v9];
    }
    v10 = ;
  }

  else
  {
    v10 = v5;
  }

  v12 = self->_shapeType - 1;
  if (v12 > 7)
  {
    v13 = @"<Unknown>";
  }

  else
  {
    v13 = off_279A38910[v12];
  }

  v14 = MEMORY[0x277CCACA8];
  v15 = [(PKPhysicsBody *)self _descriptionClassName];
  v16 = [v14 stringWithFormat:@"<%@> type:%@ representedObject:[%@]", v15, v13, v10];

  return v16;
}

- (id)allContactedBodies
{
  v3 = [MEMORY[0x277CBEB18] array];
  body = self->_body;
  if (body)
  {
    for (i = *&body->var24; i; i = i[3])
    {
      v6 = i[1];
      if (*i)
      {
        v7 = v6 == 0;
      }

      else
      {
        v7 = 1;
      }

      if (!v7 && (*(v6 + 12) & 2) != 0 && *(*i + 240))
      {
        [v3 addObject:?];
      }
    }
  }

  return v3;
}

- (id).cxx_construct
{
  b2BodyDef::b2BodyDef(&self->_bodyDef);
  self->_shapes.__begin_ = 0;
  self->_shapes.__end_ = 0;
  self->_shapes.__cap_ = 0;
  self->_outline.__ptr_ = 0;
  self->_outline.__cntrl_ = 0;
  self->_pathPtr = 0u;
  self->_quadTree = 0u;
  return self;
}

- (BOOL)active
{
  body = self->_body;
  if (body)
  {
    LOBYTE(v4) = b2Body::IsActive(body);
  }

  else
  {
    return self->_bodyDef.active;
  }

  return v4;
}

- (void)setActive:(BOOL)a3
{
  self->_bodyDef.active = a3;
  if (self->_body)
  {
    v3 = a3;
    WeakRetained = objc_loadWeakRetained(&self->_world);

    if (WeakRetained)
    {
      v6 = objc_loadWeakRetained(&self->_world);
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __37__PKPhysicsBody_Internal__setActive___block_invoke;
      v8[3] = &unk_279A388F0;
      v8[4] = self;
      v9 = v3;
      [v6 _runBlockOutsideOfTimeStep:v8];
    }

    else
    {
      body = self->_body;

      b2Body::SetActive(body, v3);
    }
  }
}

- (id)_world
{
  WeakRetained = objc_loadWeakRetained(&self->_world);

  return WeakRetained;
}

- (shared_ptr<QuadTree>)_quadTree
{
  cntrl = self->_quadTree.__cntrl_;
  *v2 = self->_quadTree.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (b2BodyDef)_bodyDef
{
  v3 = *&self->active;
  *&retstr->angle = *&self->charge;
  *&retstr->charge = v3;
  *&retstr->active = *&self[1]._sk_affectedByGravity;
  v4 = *&self->angle;
  *&retstr->_sk_affectedByGravity = *&self->_sk_intersectionCallbackBitMask;
  *&retstr->_sk_intersectionCallbackBitMask = v4;
  return self;
}

- (void)set_bodyDef:(b2BodyDef *)a3
{
  *&self->_bodyDef._sk_affectedByGravity = *&a3->_sk_affectedByGravity;
  v3 = *&a3->_sk_intersectionCallbackBitMask;
  v4 = *&a3->angle;
  v5 = *&a3->active;
  *&self->_bodyDef.charge = *&a3->charge;
  *&self->_bodyDef.active = v5;
  *&self->_bodyDef._sk_intersectionCallbackBitMask = v3;
  *&self->_bodyDef.angle = v4;
}

@end
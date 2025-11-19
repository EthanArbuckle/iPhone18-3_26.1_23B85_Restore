@interface PKPhysicsField
- (BOOL)isEnabled;
- (BOOL)isOverride;
- (NSObject)representedObject;
- (PKPhysicsField)init;
- (double)direction;
- (float)falloff;
- (float)minimumRadius;
- (float)strength;
- (id).cxx_construct;
- (shared_ptr<PKCField>)_field;
- (unsigned)categoryBitMask;
- (void)dealloc;
- (void)setCategoryBitMask:(unsigned int)a3;
- (void)setDirection:(PKPhysicsField *)self;
- (void)setEnabled:(BOOL)a3;
- (void)setFalloff:(float)a3;
- (void)setMinimumRadius:(float)a3;
- (void)setOverride:(BOOL)a3;
- (void)setRegion:(id)a3;
- (void)setRepresentedObject:(id)a3;
- (void)setStrength:(float)a3;
- (void)set_field:(shared_ptr<PKCField>)a3;
@end

@implementation PKPhysicsField

- (PKPhysicsField)init
{
  ++fieldCount;
  v10.receiver = self;
  v10.super_class = PKPhysicsField;
  v2 = [(PKPhysicsField *)&v10 init];
  v3 = v2;
  if (v2)
  {
    __asm { FMOV            V0.4S, #1.0 }

    *v2->_scale = _Q0;
    [(PKPhysicsField *)v2 setMinimumRadius:5.87747298e-39];
  }

  return v3;
}

- (void)dealloc
{
  --fieldCount;
  cntrl = self->_field.__cntrl_;
  self->_field.__ptr_ = 0;
  self->_field.__cntrl_ = 0;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }

  v4.receiver = self;
  v4.super_class = PKPhysicsField;
  [(PKPhysicsField *)&v4 dealloc];
}

- (shared_ptr<PKCField>)_field
{
  cntrl = self->_field.__cntrl_;
  *v2 = self->_field.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (void)set_field:(shared_ptr<PKCField>)a3
{
  ptr = *a3.__ptr_;
  v5 = *(a3.__ptr_ + 1);
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_field.__cntrl_;
  self->_field.__ptr_ = ptr;
  self->_field.__cntrl_ = v5;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
    ptr = self->_field.__ptr_;
  }

  if (ptr)
  {
    region = self->_region;

    setRegionOnField(ptr, region);
  }
}

- (void)setRegion:(id)a3
{
  v6 = a3;
  objc_storeStrong(&self->_region, a3);
  ptr = self->_field.__ptr_;
  if (ptr)
  {
    setRegionOnField(ptr, self->_region);
  }
}

- (void)setRepresentedObject:(id)a3
{
  v5 = a3;
  ptr = self->_field.__ptr_;
  if (ptr)
  {
    setRepresentedObjectOnField(ptr, v5);
  }
}

- (NSObject)representedObject
{
  ptr = self->_field.__ptr_;
  if (ptr)
  {
    ptr = fieldRepresentedObject(ptr);
    v2 = vars8;
  }

  return ptr;
}

- (float)strength
{
  ptr = self->_field.__ptr_;
  if (ptr)
  {
    return *(ptr + 49);
  }

  else
  {
    return 1.0;
  }
}

- (void)setStrength:(float)a3
{
  ptr = self->_field.__ptr_;
  if (ptr)
  {
    *(ptr + 49) = a3;
  }
}

- (void)setDirection:(PKPhysicsField *)self
{
  ptr = self->_field.__ptr_;
  if (ptr)
  {
    *(ptr + 14) = v2;
  }
}

- (double)direction
{
  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = *(v1 + 224);
  }

  else
  {
    *&v2 = 0;
  }

  return *&v2;
}

- (float)falloff
{
  ptr = self->_field.__ptr_;
  if (ptr)
  {
    return *(ptr + 51);
  }

  else
  {
    return 1.0;
  }
}

- (void)setFalloff:(float)a3
{
  ptr = self->_field.__ptr_;
  if (ptr)
  {
    *(ptr + 51) = a3;
  }
}

- (BOOL)isEnabled
{
  ptr = self->_field.__ptr_;
  if (ptr)
  {
    LOBYTE(ptr) = *(ptr + 244);
  }

  return ptr & 1;
}

- (void)setEnabled:(BOOL)a3
{
  ptr = self->_field.__ptr_;
  if (ptr)
  {
    *(ptr + 244) = a3;
  }
}

- (unsigned)categoryBitMask
{
  ptr = self->_field.__ptr_;
  if (ptr)
  {
    return *(ptr + 60);
  }

  else
  {
    return 0;
  }
}

- (void)setCategoryBitMask:(unsigned int)a3
{
  ptr = self->_field.__ptr_;
  if (ptr)
  {
    *(ptr + 60) = a3;
  }
}

- (BOOL)isOverride
{
  ptr = self->_field.__ptr_;
  if (ptr)
  {
    LOBYTE(ptr) = *(ptr + 200);
  }

  return ptr & 1;
}

- (void)setOverride:(BOOL)a3
{
  ptr = self->_field.__ptr_;
  if (ptr)
  {
    *(ptr + 200) = a3;
  }
}

- (float)minimumRadius
{
  ptr = self->_field.__ptr_;
  if (!ptr)
  {
    return 0.00000011921;
  }

  v3 = *(ptr + 52);
  return v3 / PKGet_INV_PTM_RATIO();
}

- (void)setMinimumRadius:(float)a3
{
  ptr = self->_field.__ptr_;
  if (ptr)
  {
    *(ptr + 52) = PKGet_INV_PTM_RATIO() * a3;
  }
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end
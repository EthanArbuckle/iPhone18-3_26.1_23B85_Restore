@interface VKLabelNavRoadLabel
- (Mercator2<double>)mercatorPoint;
- (VKLabelNavFeature)navFeature;
- (VKLabelNavRoadLabel)initWithNavFeature:(id)feature label:(const void *)label navLabelType:(int)type;
- (id).cxx_construct;
- (id)description;
- (id)displayGroup;
- (unsigned)renderOrder;
- (void)setRenderOrder:(unsigned __int16)order;
@end

@implementation VKLabelNavRoadLabel

- (VKLabelNavFeature)navFeature
{
  WeakRetained = objc_loadWeakRetained(&self->_navFeature);

  return WeakRetained;
}

- (id)displayGroup
{
  displayGroup = self->_displayGroup;
  if (!displayGroup)
  {
    if (self->_displayID)
    {
      v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"DI$_%X", self->_displayID];
      WeakRetained = self->_displayGroup;
      self->_displayGroup = v4;
    }

    else
    {
      if ([(VKLabelNavRoadLabel *)self isShieldLabel])
      {
        v6 = objc_alloc(MEMORY[0x1E696AEC0]);
        WeakRetained = objc_loadWeakRetained(&self->_navFeature);
        shieldDisplayGroup = [WeakRetained shieldDisplayGroup];
        v8 = [v6 initWithFormat:@"SH$_%@", shieldDisplayGroup];
      }

      else
      {
        if (![(VKLabelNavRoadLabel *)self isJunctionLabel])
        {
          WeakRetained = objc_loadWeakRetained(&self->_navFeature);
          name = [WeakRetained name];
          v12 = self->_displayGroup;
          self->_displayGroup = name;

          goto LABEL_10;
        }

        v9 = objc_alloc(MEMORY[0x1E696AEC0]);
        WeakRetained = objc_loadWeakRetained(&self->_navFeature);
        shieldDisplayGroup = [WeakRetained name];
        v8 = [v9 initWithFormat:@"JC$_%@", shieldDisplayGroup];
      }

      v10 = self->_displayGroup;
      self->_displayGroup = v8;
    }

LABEL_10:

    displayGroup = self->_displayGroup;
  }

  return displayGroup;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 8) = 0;
  *(self + 9) = 0;
  return self;
}

- (Mercator2<double>)mercatorPoint
{
  mercatorPoint = self->_mercatorPoint;
  *v2 = mercatorPoint;
  result._e[0] = mercatorPoint._e[0];
  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  displayGroup = [(VKLabelNavRoadLabel *)self displayGroup];
  WeakRetained = objc_loadWeakRetained(&self->_navFeature);
  weakRetained = [v3 stringWithFormat:@"%@, (%@)", displayGroup, WeakRetained];

  return weakRetained;
}

- (unsigned)renderOrder
{
  ptr = self->_label.__ptr_;
  if (ptr)
  {
    return *(*(ptr + 38) + 558);
  }

  else
  {
    return 0;
  }
}

- (void)setRenderOrder:(unsigned __int16)order
{
  ptr = self->_label.__ptr_;
  if (ptr)
  {
    (*(**(ptr + 38) + 832))(*(ptr + 38), order);
  }
}

- (VKLabelNavRoadLabel)initWithNavFeature:(id)feature label:(const void *)label navLabelType:(int)type
{
  featureCopy = feature;
  v16.receiver = self;
  v16.super_class = VKLabelNavRoadLabel;
  v9 = [(VKLabelNavRoadLabel *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_navFeature, featureCopy);
    v10->_navLabelType = type;
    v12 = *label;
    v11 = *(label + 1);
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    cntrl = v10->_label.__cntrl_;
    v10->_label.__ptr_ = v12;
    v10->_label.__cntrl_ = v11;
    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](cntrl);
    }

    v14 = v10;
  }

  return v10;
}

@end
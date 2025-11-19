@interface VKRouteEtaDescription
- (BOOL)isEqual:(id)a3;
- (VKRouteEtaDescription)initWithEtaText:(id)a3 etaAdvisoryStyleAttributes:(id)a4;
- (VKRouteEtaDescription)initWithEtaText:(id)a3 etaAdvisoryStyleAttributes:(id)a4 routeEtaType:(int64_t)a5;
- (VKRouteEtaDescription)initWithEtaText:(id)a3 etaAdvisoryStyleAttributes:(id)a4 routeEtaType:(int64_t)a5 shieldText:(id)a6 shieldType:(int)a7;
- (VKRouteEtaDescription)initWithEtaText:(id)a3 glyphType:(unsigned __int8)a4;
- (id).cxx_construct;
- (id)_initWithEtaText:(id)a3 styleAttributes:(id)a4 routeEtaType:(int64_t)a5;
- (int64_t)compare:(id)a3;
- (unint64_t)hash;
- (void)setImageProvider:(id)a3 withKey:(id)a4;
@end

@implementation VKRouteEtaDescription

- (id).cxx_construct
{
  *(self + 1) = &unk_1F2A3D108;
  *(self + 2) = 0;
  *(self + 7) = &unk_1F2A3D108;
  *(self + 8) = 0;
  return self;
}

- (void)setImageProvider:(id)a3 withKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  imageProvider = self->_imageProvider;
  self->_imageProvider = v6;
  v10 = v6;

  customImageKey = self->_customImageKey;
  self->_customImageKey = v7;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  if ([v4 routeEtaType] != self->_routeEtaType)
  {
    if ([v4 routeEtaType] < self->_routeEtaType)
    {
      v6 = -1;
    }

    else
    {
      v6 = 1;
    }

    goto LABEL_32;
  }

  if ([v4 glyphType] != self->_glyphType)
  {
    if ([v4 glyphType] < self->_glyphType)
    {
      v6 = -1;
    }

    else
    {
      v6 = 1;
    }

    goto LABEL_32;
  }

  if (!self->_styleAttributes)
  {
    styleAttributes = 0;
    goto LABEL_14;
  }

  v5 = [v4 styleAttributes];
  if (!v5)
  {
    styleAttributes = self->_styleAttributes;
LABEL_14:
    v8 = [v4 styleAttributes];

    if (styleAttributes != v8)
    {
      if (self->_styleAttributes)
      {
        v6 = 1;
      }

      else
      {
        v6 = -1;
      }

      goto LABEL_32;
    }

    goto LABEL_18;
  }

LABEL_18:
  if (!self->_styleAttributes)
  {
    goto LABEL_31;
  }

  v9 = [v4 styleAttributes];

  if (!v9)
  {
    goto LABEL_31;
  }

  v10 = [(GEOFeatureStyleAttributes *)self->_styleAttributes featureStyleAttributesPtr];
  v12 = *v10;
  v11 = v10[1];
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = [v4 styleAttributes];
  v14 = [v13 featureStyleAttributesPtr];
  v15 = *v14;
  v16 = v14[1];
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    v17 = geo::codec::featureStyleAttributesCompare(v12, v15);
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }

  else
  {
    v17 = geo::codec::featureStyleAttributesCompare(v12, v15);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  v6 = v17 > 0 ? -1 : 1;
  if (!v17)
  {
LABEL_31:
    v18 = [v4 etaText];
    v6 = [v18 compare:self->_etaText._obj];
  }

LABEL_32:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_etaText._obj hash];
  v4 = ((v3 << 6) + (v3 >> 2) + self->_glyphType - 0x61C8864680B583EBLL) ^ v3;
  styleAttributes = self->_styleAttributes;
  if (styleAttributes && [(GEOFeatureStyleAttributes *)styleAttributes featureStyleAttributes])
  {
    [(GEOFeatureStyleAttributes *)self->_styleAttributes featureStyleAttributes];
    v4 ^= (v4 << 6) - 0x61C8864680B583EBLL + (v4 >> 2) + featureStyleAttributesHash();
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = v5 == objc_opt_class() && [(VKRouteEtaDescription *)self compare:v4]== 0;
  }

  return v6;
}

- (id)_initWithEtaText:(id)a3 styleAttributes:(id)a4 routeEtaType:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = VKRouteEtaDescription;
  v10 = [(VKRouteEtaDescription *)&v16 init];
  v11 = v10;
  if (v10)
  {
    geo::_retain_ptr<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::reset(&v10->_etaText, v8);
    objc_storeStrong(&v11->_styleAttributes, a4);
    v11->_routeEtaType = a5;
    imageProvider = v11->_imageProvider;
    v11->_imageProvider = 0;

    customImageKey = v11->_customImageKey;
    v11->_customImageKey = 0;

    v14 = v11;
  }

  return v11;
}

- (VKRouteEtaDescription)initWithEtaText:(id)a3 etaAdvisoryStyleAttributes:(id)a4 routeEtaType:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [objc_alloc(MEMORY[0x1E69A1DB0]) initWithGEOStyleAttributes:v9];
  v11 = [(VKRouteEtaDescription *)self _initWithEtaText:v8 styleAttributes:v10 routeEtaType:a5];

  return v11;
}

- (VKRouteEtaDescription)initWithEtaText:(id)a3 etaAdvisoryStyleAttributes:(id)a4 routeEtaType:(int64_t)a5 shieldText:(id)a6 shieldType:(int)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = [objc_alloc(MEMORY[0x1E69A1DB0]) initWithGEOStyleAttributes:v13];
  v16 = [(VKRouteEtaDescription *)self _initWithEtaText:v12 styleAttributes:v15 routeEtaType:a5];
  v17 = v16;
  if (v14)
  {
    geo::_retain_ptr<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::reset(&v16->_shieldText, v14);
  }

  v17->_shieldType = a7;

  return v17;
}

- (VKRouteEtaDescription)initWithEtaText:(id)a3 etaAdvisoryStyleAttributes:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [objc_alloc(MEMORY[0x1E69A1DB0]) initWithGEOStyleAttributes:v7];
  v9 = [(VKRouteEtaDescription *)self _initWithEtaText:v6 styleAttributes:v8 routeEtaType:0];

  return v9;
}

- (VKRouteEtaDescription)initWithEtaText:(id)a3 glyphType:(unsigned __int8)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(VKRouteEtaDescription *)self initWithEtaText:v6];
  v7->_glyphType = v4;
  if (v4 == 1)
  {
    v8 = [objc_alloc(MEMORY[0x1E69A1DB0]) initWithAttributes:{65618, 3, 0}];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(VKRouteEtaDescription *)v7 _initWithEtaText:v6 styleAttributes:v8 routeEtaType:0];

  return v9;
}

@end
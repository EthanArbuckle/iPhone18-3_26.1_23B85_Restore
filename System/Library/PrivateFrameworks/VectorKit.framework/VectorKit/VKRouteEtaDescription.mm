@interface VKRouteEtaDescription
- (BOOL)isEqual:(id)equal;
- (VKRouteEtaDescription)initWithEtaText:(id)text etaAdvisoryStyleAttributes:(id)attributes;
- (VKRouteEtaDescription)initWithEtaText:(id)text etaAdvisoryStyleAttributes:(id)attributes routeEtaType:(int64_t)type;
- (VKRouteEtaDescription)initWithEtaText:(id)text etaAdvisoryStyleAttributes:(id)attributes routeEtaType:(int64_t)type shieldText:(id)shieldText shieldType:(int)shieldType;
- (VKRouteEtaDescription)initWithEtaText:(id)text glyphType:(unsigned __int8)type;
- (id).cxx_construct;
- (id)_initWithEtaText:(id)text styleAttributes:(id)attributes routeEtaType:(int64_t)type;
- (int64_t)compare:(id)compare;
- (unint64_t)hash;
- (void)setImageProvider:(id)provider withKey:(id)key;
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

- (void)setImageProvider:(id)provider withKey:(id)key
{
  providerCopy = provider;
  keyCopy = key;
  imageProvider = self->_imageProvider;
  self->_imageProvider = providerCopy;
  v10 = providerCopy;

  customImageKey = self->_customImageKey;
  self->_customImageKey = keyCopy;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  if ([compareCopy routeEtaType] != self->_routeEtaType)
  {
    if ([compareCopy routeEtaType] < self->_routeEtaType)
    {
      v6 = -1;
    }

    else
    {
      v6 = 1;
    }

    goto LABEL_32;
  }

  if ([compareCopy glyphType] != self->_glyphType)
  {
    if ([compareCopy glyphType] < self->_glyphType)
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

  styleAttributes = [compareCopy styleAttributes];
  if (!styleAttributes)
  {
    styleAttributes = self->_styleAttributes;
LABEL_14:
    styleAttributes2 = [compareCopy styleAttributes];

    if (styleAttributes != styleAttributes2)
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

  styleAttributes3 = [compareCopy styleAttributes];

  if (!styleAttributes3)
  {
    goto LABEL_31;
  }

  featureStyleAttributesPtr = [(GEOFeatureStyleAttributes *)self->_styleAttributes featureStyleAttributesPtr];
  v12 = *featureStyleAttributesPtr;
  v11 = featureStyleAttributesPtr[1];
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  styleAttributes4 = [compareCopy styleAttributes];
  featureStyleAttributesPtr2 = [styleAttributes4 featureStyleAttributesPtr];
  v15 = *featureStyleAttributesPtr2;
  v16 = featureStyleAttributesPtr2[1];
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
    etaText = [compareCopy etaText];
    v6 = [etaText compare:self->_etaText._obj];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = v5 == objc_opt_class() && [(VKRouteEtaDescription *)self compare:equalCopy]== 0;
  }

  return v6;
}

- (id)_initWithEtaText:(id)text styleAttributes:(id)attributes routeEtaType:(int64_t)type
{
  textCopy = text;
  attributesCopy = attributes;
  v16.receiver = self;
  v16.super_class = VKRouteEtaDescription;
  v10 = [(VKRouteEtaDescription *)&v16 init];
  v11 = v10;
  if (v10)
  {
    geo::_retain_ptr<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::reset(&v10->_etaText, textCopy);
    objc_storeStrong(&v11->_styleAttributes, attributes);
    v11->_routeEtaType = type;
    imageProvider = v11->_imageProvider;
    v11->_imageProvider = 0;

    customImageKey = v11->_customImageKey;
    v11->_customImageKey = 0;

    v14 = v11;
  }

  return v11;
}

- (VKRouteEtaDescription)initWithEtaText:(id)text etaAdvisoryStyleAttributes:(id)attributes routeEtaType:(int64_t)type
{
  textCopy = text;
  attributesCopy = attributes;
  v10 = [objc_alloc(MEMORY[0x1E69A1DB0]) initWithGEOStyleAttributes:attributesCopy];
  v11 = [(VKRouteEtaDescription *)self _initWithEtaText:textCopy styleAttributes:v10 routeEtaType:type];

  return v11;
}

- (VKRouteEtaDescription)initWithEtaText:(id)text etaAdvisoryStyleAttributes:(id)attributes routeEtaType:(int64_t)type shieldText:(id)shieldText shieldType:(int)shieldType
{
  textCopy = text;
  attributesCopy = attributes;
  shieldTextCopy = shieldText;
  v15 = [objc_alloc(MEMORY[0x1E69A1DB0]) initWithGEOStyleAttributes:attributesCopy];
  v16 = [(VKRouteEtaDescription *)self _initWithEtaText:textCopy styleAttributes:v15 routeEtaType:type];
  v17 = v16;
  if (shieldTextCopy)
  {
    geo::_retain_ptr<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::reset(&v16->_shieldText, shieldTextCopy);
  }

  v17->_shieldType = shieldType;

  return v17;
}

- (VKRouteEtaDescription)initWithEtaText:(id)text etaAdvisoryStyleAttributes:(id)attributes
{
  textCopy = text;
  attributesCopy = attributes;
  v8 = [objc_alloc(MEMORY[0x1E69A1DB0]) initWithGEOStyleAttributes:attributesCopy];
  v9 = [(VKRouteEtaDescription *)self _initWithEtaText:textCopy styleAttributes:v8 routeEtaType:0];

  return v9;
}

- (VKRouteEtaDescription)initWithEtaText:(id)text glyphType:(unsigned __int8)type
{
  typeCopy = type;
  textCopy = text;
  v7 = [(VKRouteEtaDescription *)self initWithEtaText:textCopy];
  v7->_glyphType = typeCopy;
  if (typeCopy == 1)
  {
    v8 = [objc_alloc(MEMORY[0x1E69A1DB0]) initWithAttributes:{65618, 3, 0}];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(VKRouteEtaDescription *)v7 _initWithEtaText:textCopy styleAttributes:v8 routeEtaType:0];

  return v9;
}

@end
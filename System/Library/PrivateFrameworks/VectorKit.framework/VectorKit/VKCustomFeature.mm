@interface VKCustomFeature
- (VKCustomFeature)initWithCoder:(id)coder;
- (id).cxx_construct;
- (id)_initWithCoordinate:(id)coordinate isInjected:(BOOL)injected;
- (id)dataSource;
- (id)initLineWithCoordinates:(id *)coordinates count:(unint64_t)count;
- (id)setImageProvider:withKey:;
- (signed)venueFloorOrdinal;
- (uint64_t)setImageProvider:withKey:;
- (unint64_t)businessID;
- (unint64_t)venueBuildingID;
- (unint64_t)venueComponentID;
- (unint64_t)venueID;
- (unint64_t)venueLevelID;
- (unsigned)clusteringMode;
- (void)encodeWithCoder:(id)coder;
- (void)lineFeature;
- (void)pointFeature;
- (void)setAnnotationText:(id)text locale:(id)locale;
- (void)setBuildingFaceAzimuth:(float)azimuth;
- (void)setBuildingHeight:(float)height;
- (void)setBusinessID:(unint64_t)d;
- (void)setClusteringMode:(unsigned __int8)mode;
- (void)setElevationOffset:(double)offset;
- (void)setFeatureRegion:(id)region;
- (void)setImageProvider:(id)provider withKey:(id)key;
- (void)setImageProvider:withKey:;
- (void)setPlaceholderIconWithSize:(CGSize)size anchorPoint:(CGPoint)point isRound:(BOOL)round;
- (void)setStyleAttributes:(id)attributes;
- (void)setText:(id)text locale:(id)locale;
- (void)setTextDisplayMode:(unsigned __int8)mode;
- (void)setVenueBuildingID:(unint64_t)d;
- (void)setVenueComponentID:(unint64_t)d;
- (void)setVenueFloorOrdinal:(signed __int16)ordinal;
- (void)setVenueID:(unint64_t)d;
- (void)setVenueLevelID:(unint64_t)d;
@end

@implementation VKCustomFeature

- (void)pointFeature
{
  if (*(self->_feature.__ptr_ + 8))
  {
    return 0;
  }

  else
  {
    return self->_feature.__ptr_;
  }
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 7) = &unk_1F2A1F320;
  *(self + 8) = 0;
  return self;
}

- (VKCustomFeature)initWithCoder:(id)coder
{
  v56 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeInt32ForKey:@"featureType"];
  if (v5 == 1)
  {
    v49 = 0;
    v12 = [coderCopy decodeBytesForKey:@"coordinates" returnedLength:&v49];
    0x18 = [(VKCustomFeature *)self initLineWithCoordinates:v12 count:v49 / 0x18];
  }

  else
  {
    if (v5)
    {
      selfCopy = 0;
      goto LABEL_34;
    }

    [coderCopy decodeDoubleForKey:@"latitude"];
    v7 = v6;
    [coderCopy decodeDoubleForKey:@"longitude"];
    v9 = v8;
    if ([coderCopy containsValueForKey:@"altitude"])
    {
      [coderCopy decodeDoubleForKey:@"altitude"];
      v11 = v10;
    }

    else
    {
      v11 = 1.79769313e308;
    }

    0x18 = [(VKCustomFeature *)self initWithCoordinate3D:v7, v9, v11];
    pointFeature = [(VKCustomFeature *)0x18 pointFeature];
    [coderCopy decodeFloatForKey:@"elevationOffset"];
    [(VKCustomFeature *)0x18 setElevationOffset:v16];
    if ([coderCopy containsValueForKey:@"buildingHeight"])
    {
      [coderCopy decodeFloatForKey:@"buildingHeight"];
      [(VKCustomFeature *)0x18 setBuildingHeight:?];
    }

    if ([coderCopy containsValueForKey:@"buildingFaceAzimuth"])
    {
      [coderCopy decodeFloatForKey:@"buildingFaceAzimuth"];
      [(VKCustomFeature *)0x18 setBuildingFaceAzimuth:?];
    }

    -[VKCustomFeature setBusinessID:](0x18, "setBusinessID:", [coderCopy decodeInt64ForKey:@"businessId"]);
    -[VKCustomFeature setVenueID:](0x18, "setVenueID:", [coderCopy decodeInt64ForKey:@"venueId"]);
    -[VKCustomFeature setVenueLevelID:](0x18, "setVenueLevelID:", [coderCopy decodeInt64ForKey:@"venueLevelId"]);
    -[VKCustomFeature setVenueComponentID:](0x18, "setVenueComponentID:", [coderCopy decodeInt64ForKey:@"venueComponentId"]);
    -[VKCustomFeature setVenueFloorOrdinal:](0x18, "setVenueFloorOrdinal:", [coderCopy decodeInt64ForKey:@"venueFloorOrdinal"]);
    v17 = MEMORY[0x1E695DFD8];
    v18 = objc_opt_class();
    v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
    v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"iconElements"];

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v21 = v20;
    v22 = [v21 countByEnumeratingWithState:&v50 objects:v55 count:16];
    if (v22)
    {
      v23 = *v51;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v51 != v23)
          {
            objc_enumerationMutation(v21);
          }

          element = [*(*(&v50 + 1) + 8 * i) element];
          md::LabelExternalPointFeature::setPlaceholderIcon(pointFeature, element, (element + 8), *(element + 16));
        }

        v22 = [v21 countByEnumeratingWithState:&v50 objects:v55 count:16];
      }

      while (v22);
    }
  }

  -[VKCustomFeature setFeatureID:](0x18, "setFeatureID:", [coderCopy decodeInt64ForKey:@"featureId"]);
  [coderCopy decodeFloatForKey:@"minZoom"];
  [(VKCustomFeature *)0x18 setMinZoom:?];
  [coderCopy decodeFloatForKey:@"maxZoom"];
  [(VKCustomFeature *)0x18 setMaxZoom:?];
  -[VKCustomFeature setSortKey:](0x18, "setSortKey:", [coderCopy decodeInt32ForKey:@"sortKey"]);
  -[VKCustomFeature setTextDisplayMode:](0x18, "setTextDisplayMode:", [coderCopy decodeInt32ForKey:@"textDisplayMode"]);
  v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"styleAttributes"];
  [(VKCustomFeature *)0x18 setStyleAttributes:v26];
  v27 = MEMORY[0x1E695DFD8];
  v28 = objc_opt_class();
  v29 = [v27 setWithObjects:{v28, objc_opt_class(), 0}];
  v30 = [coderCopy decodeObjectOfClasses:v29 forKey:@"textElements"];

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v31 = v30;
  v32 = [v31 countByEnumeratingWithState:&v45 objects:v54 count:16];
  if (v32)
  {
    v33 = *v46;
    do
    {
      for (j = 0; j != v32; ++j)
      {
        if (*v46 != v33)
        {
          objc_enumerationMutation(v31);
        }

        element2 = [*(*(&v45 + 1) + 8 * j) element];
        v36 = *element2;
        v37 = *(element2 + 1);
        if (*(element2 + 31) >= 0)
        {
          v38 = (element2 + 8);
        }

        else
        {
          v38 = *(element2 + 8);
        }

        v39 = *(element2 + 55);
        v42 = *(element2 + 32);
        v40 = (element2 + 32);
        v41 = v42;
        if (v39 >= 0)
        {
          v43 = v40;
        }

        else
        {
          v43 = v41;
        }

        md::LabelExternalFeature::addTextForZoom(0x18->_feature.__ptr_, v36, v37, v38, v43);
      }

      v32 = [v31 countByEnumeratingWithState:&v45 objects:v54 count:16];
    }

    while (v32);
  }

  self = 0x18;
  selfCopy = self;
LABEL_34:

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  ptr = self->_feature.__ptr_;
  if (ptr)
  {
    v32 = coderCopy;
    [coderCopy encodeInt32:*(ptr + 8) forKey:@"featureType"];
    v7 = self->_feature.__ptr_;
    v8 = 72;
    if (*(v7 + 112))
    {
      v8 = 76;
    }

    LODWORD(v6) = *(v7 + v8);
    [v32 encodeFloat:@"minZoom" forKey:v6];
    LODWORD(v9) = *(self->_feature.__ptr_ + 20);
    [v32 encodeFloat:@"maxZoom" forKey:v9];
    [v32 encodeInt32:*(self->_feature.__ptr_ + 21) forKey:@"sortKey"];
    if (*(self->_feature.__ptr_ + 88) - 1 < 3)
    {
      v10 = (*(self->_feature.__ptr_ + 88) - 1) + 1;
    }

    else
    {
      v10 = 0;
    }

    [v32 encodeInt32:v10 forKey:@"textDisplayMode"];
    [v32 encodeInt64:*(self->_feature.__ptr_ + 2) forKey:@"featureId"];
    styleAttributes = [(VKCustomFeature *)self styleAttributes];
    [v32 encodeObject:styleAttributes forKey:@"styleAttributes"];

    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v13 = self->_feature.__ptr_;
    v14 = *(v13 + 6);
    for (i = *(v13 + 7); v14 != i; v14 += 104)
    {
      v16 = [[VKLabelExternalTextElement alloc] initWithTextElement:v14];
      [v12 addObject:v16];
    }

    [v32 encodeObject:v12 forKey:@"textElements"];
    pointFeature = [(VKCustomFeature *)self pointFeature];
    v18 = pointFeature;
    if (pointFeature)
    {
      v19 = pointFeature[24];
      if (pointFeature[25] == v19)
      {
        md::LabelPoint::NullPoint(pointFeature);
        v19 = &md::LabelPoint::NullPoint(void)::kNullLabelPoint;
      }

      md::LabelPoint::coordinate(&v33, v19);
      [v32 encodeDouble:@"latitude" forKey:v33.f64[0]];
      v20 = [v32 encodeDouble:@"longitude" forKey:v33.f64[1]];
      v22 = v18[24];
      if (v18[25] == v22)
      {
        md::LabelPoint::NullPoint(v20);
        v22 = &md::LabelPoint::NullPoint(void)::kNullLabelPoint;
      }

      if (*(v22 + 10) != 3.4028e38)
      {
        v23 = v18[24];
        if (v18[25] == v23)
        {
          md::LabelPoint::NullPoint(v20);
          v23 = &md::LabelPoint::NullPoint(void)::kNullLabelPoint;
        }

        v24 = *(v23 + 10);
        if (v24 == 3.4028e38)
        {
          v31 = std::__throw_bad_optional_access[abi:nn200100]();

          _Unwind_Resume(v31);
        }

        [v32 encodeDouble:@"altitude" forKey:v24];
      }

      LODWORD(v21) = *(v18 + 58);
      [v32 encodeFloat:@"elevationOffset" forKey:v21];
      if (*(v18 + 220) == 1)
      {
        LODWORD(v25) = *(v18 + 54);
        [v32 encodeFloat:@"buildingHeight" forKey:v25];
      }

      if (*(v18 + 228) == 1)
      {
        LODWORD(v25) = *(v18 + 56);
        [v32 encodeFloat:@"buildingFaceAzimuth" forKey:v25];
      }

      [v32 encodeInt64:v18[23] forKey:@"businessId"];
      [v32 encodeInt64:v18[31] forKey:@"venueId"];
      [v32 encodeInt64:v18[33] forKey:@"venueLevelId"];
      [v32 encodeInt64:v18[34] forKey:@"venueComponentId"];
      [v32 encodeInt64:*(v18 + 140) forKey:@"venueFloorOrdinal"];
      v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v27 = v18[44];
      for (j = v18[45]; v27 != j; v27 += 20)
      {
        v29 = [[VKLabelExternalIconElement alloc] initWithIconElement:v27];
        [v26 addObject:v29];
      }

      [v32 encodeObject:v26 forKey:@"iconElements"];
    }

    lineFeature = [(VKCustomFeature *)self lineFeature];
    if (lineFeature)
    {
      [v32 encodeBytes:lineFeature[23] length:lineFeature[24] - lineFeature[23] forKey:@"coordinates"];
    }

    coderCopy = v32;
  }
}

- (unsigned)clusteringMode
{
  if (![(VKCustomFeature *)self pointFeature])
  {
    return 0;
  }

  pointFeature = [(VKCustomFeature *)self pointFeature];
  if (pointFeature[239] != 1)
  {
    return 0;
  }

  if (pointFeature[238])
  {
    return 1;
  }

  return 2;
}

- (void)setClusteringMode:(unsigned __int8)mode
{
  modeCopy = mode;
  if ([(VKCustomFeature *)self pointFeature])
  {
    pointFeature = [(VKCustomFeature *)self pointFeature];
    if (modeCopy == 1)
    {
      v6 = 257;
    }

    else
    {
      v6 = 256;
    }

    if (!modeCopy)
    {
      v6 = 0;
    }

    pointFeature[119] = v6;
  }
}

- (void)setElevationOffset:(double)offset
{
  if ([(VKCustomFeature *)self pointFeature])
  {
    pointFeature = [(VKCustomFeature *)self pointFeature];
    offsetCopy = offset;
    pointFeature[58] = offsetCopy;
  }
}

- (void)setBuildingFaceAzimuth:(float)azimuth
{
  if ([(VKCustomFeature *)self pointFeature])
  {
    pointFeature = [(VKCustomFeature *)self pointFeature];
    pointFeature[56] = azimuth;
    *(pointFeature + 228) = 1;
  }
}

- (void)setBuildingHeight:(float)height
{
  if ([(VKCustomFeature *)self pointFeature])
  {
    pointFeature = [(VKCustomFeature *)self pointFeature];
    pointFeature[54] = height;
    *(pointFeature + 220) = 1;
  }
}

- (void)setPlaceholderIconWithSize:(CGSize)size anchorPoint:(CGPoint)point isRound:(BOOL)round
{
  y = point.y;
  x = point.x;
  height = size.height;
  width = size.width;
  if ([(VKCustomFeature *)self pointFeature])
  {
    pointFeature = [(VKCustomFeature *)self pointFeature];
    *&v12 = width;
    *&v13 = height;
    v17 = __PAIR64__(v13, v12);
    *&v14 = x;
    *&v15 = height - y;
    v16 = __PAIR64__(v15, v14);
    md::LabelExternalPointFeature::setPlaceholderIcon(pointFeature, &v17, &v16, round);
  }
}

- (void)setAnnotationText:(id)text locale:(id)locale
{
  textCopy = text;
  localeCopy = locale;
  if ([(VKCustomFeature *)self pointFeature])
  {
    v7 = textCopy;
    if ([v7 length] >= 0xC9)
    {
      v8 = [v7 rangeOfComposedCharacterSequenceAtIndex:199];
      v10 = [v7 substringToIndex:v8 + v9];

      v7 = v10;
    }

    md::LabelExternalFeature::addTextForZoom(-[VKCustomFeature pointFeature](self, "pointFeature"), 0, 2, [v7 UTF8String], objc_msgSend(localeCopy, "UTF8String"));
  }
}

- (signed)venueFloorOrdinal
{
  if ([(VKCustomFeature *)self pointFeature])
  {
    return *([(VKCustomFeature *)self pointFeature]+ 280);
  }

  else
  {
    return 0;
  }
}

- (void)setVenueFloorOrdinal:(signed __int16)ordinal
{
  if ([(VKCustomFeature *)self pointFeature])
  {
    *([(VKCustomFeature *)self pointFeature]+ 280) = ordinal;
  }
}

- (unint64_t)venueComponentID
{
  result = [(VKCustomFeature *)self pointFeature];
  if (result)
  {
    return *([(VKCustomFeature *)self pointFeature]+ 272);
  }

  return result;
}

- (void)setVenueComponentID:(unint64_t)d
{
  if ([(VKCustomFeature *)self pointFeature])
  {
    *([(VKCustomFeature *)self pointFeature]+ 272) = d;
  }
}

- (unint64_t)venueLevelID
{
  result = [(VKCustomFeature *)self pointFeature];
  if (result)
  {
    return *([(VKCustomFeature *)self pointFeature]+ 264);
  }

  return result;
}

- (void)setVenueLevelID:(unint64_t)d
{
  if ([(VKCustomFeature *)self pointFeature])
  {
    *([(VKCustomFeature *)self pointFeature]+ 264) = d;
  }
}

- (unint64_t)venueBuildingID
{
  result = [(VKCustomFeature *)self pointFeature];
  if (result)
  {
    return *([(VKCustomFeature *)self pointFeature]+ 256);
  }

  return result;
}

- (void)setVenueBuildingID:(unint64_t)d
{
  if ([(VKCustomFeature *)self pointFeature])
  {
    *([(VKCustomFeature *)self pointFeature]+ 256) = d;
  }
}

- (unint64_t)venueID
{
  result = [(VKCustomFeature *)self pointFeature];
  if (result)
  {
    return *([(VKCustomFeature *)self pointFeature]+ 248);
  }

  return result;
}

- (void)setVenueID:(unint64_t)d
{
  if ([(VKCustomFeature *)self pointFeature])
  {
    *([(VKCustomFeature *)self pointFeature]+ 248) = d;
  }
}

- (unint64_t)businessID
{
  result = [(VKCustomFeature *)self pointFeature];
  if (result)
  {
    return *([(VKCustomFeature *)self pointFeature]+ 184);
  }

  return result;
}

- (void)setBusinessID:(unint64_t)d
{
  if ([(VKCustomFeature *)self pointFeature])
  {
    *([(VKCustomFeature *)self pointFeature]+ 184) = d;
  }
}

- (void)setFeatureRegion:(id)region
{
  regionCopy = region;
  if ([(VKCustomFeature *)self pointFeature])
  {
    objc_storeStrong(([(VKCustomFeature *)self pointFeature]+ 240), region);
  }
}

- (void)setText:(id)text locale:(id)locale
{
  textCopy = text;
  localeCopy = locale;
  v12 = textCopy;
  v8 = v12;
  if ([v12 length] >= 0xC9)
  {
    v9 = [v12 rangeOfComposedCharacterSequenceAtIndex:199];
    v11 = [v12 substringToIndex:v9 + v10];

    v8 = v11;
  }

  md::LabelExternalFeature::addTextForZoom(self->_feature.__ptr_, 0, 0, [v8 UTF8String], objc_msgSend(localeCopy, "UTF8String"));
}

- (void)setTextDisplayMode:(unsigned __int8)mode
{
  if (mode >= 4u)
  {
    modeCopy = 0;
  }

  else
  {
    modeCopy = mode;
  }

  *(self->_feature.__ptr_ + 88) = modeCopy;
}

- (void)setStyleAttributes:(id)attributes
{
  attributesCopy = attributes;
  if (attributesCopy)
  {
    objc_storeStrong(&self->_featureStyleAttributesPtr._obj, attributes);

    ptr = self->_feature.__ptr_;
    featureStyleAttributesPtr = [attributesCopy featureStyleAttributesPtr];
    v7 = *featureStyleAttributesPtr;
    v8 = featureStyleAttributesPtr[1];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = *(ptr + 5);
    *(ptr + 4) = v7;
    *(ptr + 5) = v8;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v9);
    }

    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v8);
    }
  }

  else
  {
    obj = self->_featureStyleAttributesPtr._obj;
    self->_featureStyleAttributesPtr._obj = 0;
  }
}

- (id)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (void)setImageProvider:(id)provider withKey:(id)key
{
  v21[4] = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  keyCopy = key;
  if (self->_imageProvider != providerCopy || ![(NSString *)self->_imageKey isEqualToString:keyCopy])
  {
    objc_storeStrong(&self->_imageProvider, provider);
    objc_storeStrong(&self->_imageKey, key);
    if (self->_imageProvider && (imageKey = self->_imageKey) != 0)
    {
      memset(&v19, 0, sizeof(v19));
      v20[3] = 0;
      std::string::__assign_external(&v19, [(NSString *)imageKey UTF8String]);
      v10 = self->_imageProvider;
      v11 = self->_imageKey;
      v21[0] = &unk_1F2A1F2D8;
      v21[1] = v10;
      v21[2] = v11;
      v21[3] = v21;
      std::__function::__value_func<CGImage * ()(gm::Matrix<unsigned int,2,1>,float)>::swap[abi:nn200100](v21, v20);
      std::__function::__value_func<CGImage * ()(gm::Matrix<unsigned int,2,1>,float)>::~__value_func[abi:nn200100](v21);
      ptr = self->_feature.__ptr_;
      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v17, v19.__r_.__value_.__l.__data_, v19.__r_.__value_.__l.__size_);
      }

      else
      {
        v17 = v19;
      }

      std::__function::__value_func<CGImage * ()(gm::Matrix<unsigned int,2,1>,float)>::__value_func[abi:nn200100](v18, v20);
      std::string::operator=(ptr + 5, &v17);
      std::function<CGImage * ()(gm::Matrix<unsigned int,2,1>,float)>::operator=(ptr + 18, v18);
      std::__function::__value_func<CGImage * ()(gm::Matrix<unsigned int,2,1>,float)>::~__value_func[abi:nn200100](v18);
      if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v17.__r_.__value_.__l.__data_);
      }

      std::__function::__value_func<CGImage * ()(gm::Matrix<unsigned int,2,1>,float)>::~__value_func[abi:nn200100](v20);
      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        v14 = v19.__r_.__value_.__r.__words[0];
        goto LABEL_14;
      }
    }

    else
    {
      v13 = self->_feature.__ptr_;
      memset(&__str, 0, sizeof(__str));
      v16[3] = 0;
      std::string::operator=(v13 + 5, &__str);
      std::function<CGImage * ()(gm::Matrix<unsigned int,2,1>,float)>::operator=(v13 + 18, v16);
      std::__function::__value_func<CGImage * ()(gm::Matrix<unsigned int,2,1>,float)>::~__value_func[abi:nn200100](v16);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        v14 = __str.__r_.__value_.__r.__words[0];
LABEL_14:
        operator delete(v14);
      }
    }
  }
}

- (uint64_t)setImageProvider:withKey:
{
  LODWORD(a6) = *a3;
  LODWORD(a4) = *a2;
  LODWORD(a5) = a2[1];
  return [*(self + 8) imageForCustomImageKey:*(self + 16) suggestedSize:*&a4 contentScale:{*&a5, a6}];
}

- (void)setImageProvider:withKey:
{

  JUMPOUT(0x1B8C62190);
}

- (id)setImageProvider:withKey:
{
  *a2 = &unk_1F2A1F2D8;
  a2[1] = *(self + 8);
  result = *(self + 16);
  a2[2] = result;
  return result;
}

- (id)initLineWithCoordinates:(id *)coordinates count:(unint64_t)count
{
  v5.receiver = self;
  v5.super_class = VKCustomFeature;
  if ([(VKCustomFeature *)&v5 init])
  {
    operator new();
  }

  return 0;
}

- (id)_initWithCoordinate:(id)coordinate isInjected:(BOOL)injected
{
  var1 = coordinate.var1;
  var0 = coordinate.var0;
  v10.receiver = self;
  v10.super_class = VKCustomFeature;
  v6 = [(VKCustomFeature *)&v10 init];
  v7 = v6;
  if (fabs(var1 + 180.0) >= 0.00000001 || fabs(var0 + 180.0) >= 0.00000001)
  {
    if (v6)
    {
      _ZNSt3__115allocate_sharedB8nn200100IN2md25LabelExternalPointFeatureENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
    }

    v8 = 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)lineFeature
{
  if (*(self->_feature.__ptr_ + 8) == 1)
  {
    return self->_feature.__ptr_;
  }

  else
  {
    return 0;
  }
}

@end
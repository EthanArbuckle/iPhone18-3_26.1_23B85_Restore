@interface VKCustomFeature
- (VKCustomFeature)initWithCoder:(id)a3;
- (id).cxx_construct;
- (id)_initWithCoordinate:(id)a3 isInjected:(BOOL)a4;
- (id)dataSource;
- (id)initLineWithCoordinates:(id *)a3 count:(unint64_t)a4;
- (id)setImageProvider:withKey:;
- (signed)venueFloorOrdinal;
- (uint64_t)setImageProvider:withKey:;
- (unint64_t)businessID;
- (unint64_t)venueBuildingID;
- (unint64_t)venueComponentID;
- (unint64_t)venueID;
- (unint64_t)venueLevelID;
- (unsigned)clusteringMode;
- (void)encodeWithCoder:(id)a3;
- (void)lineFeature;
- (void)pointFeature;
- (void)setAnnotationText:(id)a3 locale:(id)a4;
- (void)setBuildingFaceAzimuth:(float)a3;
- (void)setBuildingHeight:(float)a3;
- (void)setBusinessID:(unint64_t)a3;
- (void)setClusteringMode:(unsigned __int8)a3;
- (void)setElevationOffset:(double)a3;
- (void)setFeatureRegion:(id)a3;
- (void)setImageProvider:(id)a3 withKey:(id)a4;
- (void)setImageProvider:withKey:;
- (void)setPlaceholderIconWithSize:(CGSize)a3 anchorPoint:(CGPoint)a4 isRound:(BOOL)a5;
- (void)setStyleAttributes:(id)a3;
- (void)setText:(id)a3 locale:(id)a4;
- (void)setTextDisplayMode:(unsigned __int8)a3;
- (void)setVenueBuildingID:(unint64_t)a3;
- (void)setVenueComponentID:(unint64_t)a3;
- (void)setVenueFloorOrdinal:(signed __int16)a3;
- (void)setVenueID:(unint64_t)a3;
- (void)setVenueLevelID:(unint64_t)a3;
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

- (VKCustomFeature)initWithCoder:(id)a3
{
  v56 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeInt32ForKey:@"featureType"];
  if (v5 == 1)
  {
    v49 = 0;
    v12 = [v4 decodeBytesForKey:@"coordinates" returnedLength:&v49];
    v13 = [(VKCustomFeature *)self initLineWithCoordinates:v12 count:v49 / 0x18];
  }

  else
  {
    if (v5)
    {
      v14 = 0;
      goto LABEL_34;
    }

    [v4 decodeDoubleForKey:@"latitude"];
    v7 = v6;
    [v4 decodeDoubleForKey:@"longitude"];
    v9 = v8;
    if ([v4 containsValueForKey:@"altitude"])
    {
      [v4 decodeDoubleForKey:@"altitude"];
      v11 = v10;
    }

    else
    {
      v11 = 1.79769313e308;
    }

    v13 = [(VKCustomFeature *)self initWithCoordinate3D:v7, v9, v11];
    v15 = [(VKCustomFeature *)v13 pointFeature];
    [v4 decodeFloatForKey:@"elevationOffset"];
    [(VKCustomFeature *)v13 setElevationOffset:v16];
    if ([v4 containsValueForKey:@"buildingHeight"])
    {
      [v4 decodeFloatForKey:@"buildingHeight"];
      [(VKCustomFeature *)v13 setBuildingHeight:?];
    }

    if ([v4 containsValueForKey:@"buildingFaceAzimuth"])
    {
      [v4 decodeFloatForKey:@"buildingFaceAzimuth"];
      [(VKCustomFeature *)v13 setBuildingFaceAzimuth:?];
    }

    -[VKCustomFeature setBusinessID:](v13, "setBusinessID:", [v4 decodeInt64ForKey:@"businessId"]);
    -[VKCustomFeature setVenueID:](v13, "setVenueID:", [v4 decodeInt64ForKey:@"venueId"]);
    -[VKCustomFeature setVenueLevelID:](v13, "setVenueLevelID:", [v4 decodeInt64ForKey:@"venueLevelId"]);
    -[VKCustomFeature setVenueComponentID:](v13, "setVenueComponentID:", [v4 decodeInt64ForKey:@"venueComponentId"]);
    -[VKCustomFeature setVenueFloorOrdinal:](v13, "setVenueFloorOrdinal:", [v4 decodeInt64ForKey:@"venueFloorOrdinal"]);
    v17 = MEMORY[0x1E695DFD8];
    v18 = objc_opt_class();
    v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
    v20 = [v4 decodeObjectOfClasses:v19 forKey:@"iconElements"];

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

          v25 = [*(*(&v50 + 1) + 8 * i) element];
          md::LabelExternalPointFeature::setPlaceholderIcon(v15, v25, (v25 + 8), *(v25 + 16));
        }

        v22 = [v21 countByEnumeratingWithState:&v50 objects:v55 count:16];
      }

      while (v22);
    }
  }

  -[VKCustomFeature setFeatureID:](v13, "setFeatureID:", [v4 decodeInt64ForKey:@"featureId"]);
  [v4 decodeFloatForKey:@"minZoom"];
  [(VKCustomFeature *)v13 setMinZoom:?];
  [v4 decodeFloatForKey:@"maxZoom"];
  [(VKCustomFeature *)v13 setMaxZoom:?];
  -[VKCustomFeature setSortKey:](v13, "setSortKey:", [v4 decodeInt32ForKey:@"sortKey"]);
  -[VKCustomFeature setTextDisplayMode:](v13, "setTextDisplayMode:", [v4 decodeInt32ForKey:@"textDisplayMode"]);
  v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"styleAttributes"];
  [(VKCustomFeature *)v13 setStyleAttributes:v26];
  v27 = MEMORY[0x1E695DFD8];
  v28 = objc_opt_class();
  v29 = [v27 setWithObjects:{v28, objc_opt_class(), 0}];
  v30 = [v4 decodeObjectOfClasses:v29 forKey:@"textElements"];

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

        v35 = [*(*(&v45 + 1) + 8 * j) element];
        v36 = *v35;
        v37 = *(v35 + 1);
        if (*(v35 + 31) >= 0)
        {
          v38 = (v35 + 8);
        }

        else
        {
          v38 = *(v35 + 8);
        }

        v39 = *(v35 + 55);
        v42 = *(v35 + 32);
        v40 = (v35 + 32);
        v41 = v42;
        if (v39 >= 0)
        {
          v43 = v40;
        }

        else
        {
          v43 = v41;
        }

        md::LabelExternalFeature::addTextForZoom(v13->_feature.__ptr_, v36, v37, v38, v43);
      }

      v32 = [v31 countByEnumeratingWithState:&v45 objects:v54 count:16];
    }

    while (v32);
  }

  self = v13;
  v14 = self;
LABEL_34:

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  ptr = self->_feature.__ptr_;
  if (ptr)
  {
    v32 = v4;
    [v4 encodeInt32:*(ptr + 8) forKey:@"featureType"];
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
    v11 = [(VKCustomFeature *)self styleAttributes];
    [v32 encodeObject:v11 forKey:@"styleAttributes"];

    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v13 = self->_feature.__ptr_;
    v14 = *(v13 + 6);
    for (i = *(v13 + 7); v14 != i; v14 += 104)
    {
      v16 = [[VKLabelExternalTextElement alloc] initWithTextElement:v14];
      [v12 addObject:v16];
    }

    [v32 encodeObject:v12 forKey:@"textElements"];
    v17 = [(VKCustomFeature *)self pointFeature];
    v18 = v17;
    if (v17)
    {
      v19 = v17[24];
      if (v17[25] == v19)
      {
        md::LabelPoint::NullPoint(v17);
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

    v30 = [(VKCustomFeature *)self lineFeature];
    if (v30)
    {
      [v32 encodeBytes:v30[23] length:v30[24] - v30[23] forKey:@"coordinates"];
    }

    v4 = v32;
  }
}

- (unsigned)clusteringMode
{
  if (![(VKCustomFeature *)self pointFeature])
  {
    return 0;
  }

  v3 = [(VKCustomFeature *)self pointFeature];
  if (v3[239] != 1)
  {
    return 0;
  }

  if (v3[238])
  {
    return 1;
  }

  return 2;
}

- (void)setClusteringMode:(unsigned __int8)a3
{
  v3 = a3;
  if ([(VKCustomFeature *)self pointFeature])
  {
    v5 = [(VKCustomFeature *)self pointFeature];
    if (v3 == 1)
    {
      v6 = 257;
    }

    else
    {
      v6 = 256;
    }

    if (!v3)
    {
      v6 = 0;
    }

    v5[119] = v6;
  }
}

- (void)setElevationOffset:(double)a3
{
  if ([(VKCustomFeature *)self pointFeature])
  {
    v5 = [(VKCustomFeature *)self pointFeature];
    v6 = a3;
    v5[58] = v6;
  }
}

- (void)setBuildingFaceAzimuth:(float)a3
{
  if ([(VKCustomFeature *)self pointFeature])
  {
    v5 = [(VKCustomFeature *)self pointFeature];
    v5[56] = a3;
    *(v5 + 228) = 1;
  }
}

- (void)setBuildingHeight:(float)a3
{
  if ([(VKCustomFeature *)self pointFeature])
  {
    v5 = [(VKCustomFeature *)self pointFeature];
    v5[54] = a3;
    *(v5 + 220) = 1;
  }
}

- (void)setPlaceholderIconWithSize:(CGSize)a3 anchorPoint:(CGPoint)a4 isRound:(BOOL)a5
{
  y = a4.y;
  x = a4.x;
  height = a3.height;
  width = a3.width;
  if ([(VKCustomFeature *)self pointFeature])
  {
    v11 = [(VKCustomFeature *)self pointFeature];
    *&v12 = width;
    *&v13 = height;
    v17 = __PAIR64__(v13, v12);
    *&v14 = x;
    *&v15 = height - y;
    v16 = __PAIR64__(v15, v14);
    md::LabelExternalPointFeature::setPlaceholderIcon(v11, &v17, &v16, a5);
  }
}

- (void)setAnnotationText:(id)a3 locale:(id)a4
{
  v11 = a3;
  v6 = a4;
  if ([(VKCustomFeature *)self pointFeature])
  {
    v7 = v11;
    if ([v7 length] >= 0xC9)
    {
      v8 = [v7 rangeOfComposedCharacterSequenceAtIndex:199];
      v10 = [v7 substringToIndex:v8 + v9];

      v7 = v10;
    }

    md::LabelExternalFeature::addTextForZoom(-[VKCustomFeature pointFeature](self, "pointFeature"), 0, 2, [v7 UTF8String], objc_msgSend(v6, "UTF8String"));
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

- (void)setVenueFloorOrdinal:(signed __int16)a3
{
  if ([(VKCustomFeature *)self pointFeature])
  {
    *([(VKCustomFeature *)self pointFeature]+ 280) = a3;
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

- (void)setVenueComponentID:(unint64_t)a3
{
  if ([(VKCustomFeature *)self pointFeature])
  {
    *([(VKCustomFeature *)self pointFeature]+ 272) = a3;
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

- (void)setVenueLevelID:(unint64_t)a3
{
  if ([(VKCustomFeature *)self pointFeature])
  {
    *([(VKCustomFeature *)self pointFeature]+ 264) = a3;
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

- (void)setVenueBuildingID:(unint64_t)a3
{
  if ([(VKCustomFeature *)self pointFeature])
  {
    *([(VKCustomFeature *)self pointFeature]+ 256) = a3;
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

- (void)setVenueID:(unint64_t)a3
{
  if ([(VKCustomFeature *)self pointFeature])
  {
    *([(VKCustomFeature *)self pointFeature]+ 248) = a3;
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

- (void)setBusinessID:(unint64_t)a3
{
  if ([(VKCustomFeature *)self pointFeature])
  {
    *([(VKCustomFeature *)self pointFeature]+ 184) = a3;
  }
}

- (void)setFeatureRegion:(id)a3
{
  v5 = a3;
  if ([(VKCustomFeature *)self pointFeature])
  {
    objc_storeStrong(([(VKCustomFeature *)self pointFeature]+ 240), a3);
  }
}

- (void)setText:(id)a3 locale:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12 = v6;
  v8 = v12;
  if ([v12 length] >= 0xC9)
  {
    v9 = [v12 rangeOfComposedCharacterSequenceAtIndex:199];
    v11 = [v12 substringToIndex:v9 + v10];

    v8 = v11;
  }

  md::LabelExternalFeature::addTextForZoom(self->_feature.__ptr_, 0, 0, [v8 UTF8String], objc_msgSend(v7, "UTF8String"));
}

- (void)setTextDisplayMode:(unsigned __int8)a3
{
  if (a3 >= 4u)
  {
    v3 = 0;
  }

  else
  {
    v3 = a3;
  }

  *(self->_feature.__ptr_ + 88) = v3;
}

- (void)setStyleAttributes:(id)a3
{
  v11 = a3;
  if (v11)
  {
    objc_storeStrong(&self->_featureStyleAttributesPtr._obj, a3);

    ptr = self->_feature.__ptr_;
    v6 = [v11 featureStyleAttributesPtr];
    v7 = *v6;
    v8 = v6[1];
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

- (void)setImageProvider:(id)a3 withKey:(id)a4
{
  v21[4] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (self->_imageProvider != v7 || ![(NSString *)self->_imageKey isEqualToString:v8])
  {
    objc_storeStrong(&self->_imageProvider, a3);
    objc_storeStrong(&self->_imageKey, a4);
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
  return [*(a1 + 8) imageForCustomImageKey:*(a1 + 16) suggestedSize:*&a4 contentScale:{*&a5, a6}];
}

- (void)setImageProvider:withKey:
{

  JUMPOUT(0x1B8C62190);
}

- (id)setImageProvider:withKey:
{
  *a2 = &unk_1F2A1F2D8;
  a2[1] = *(a1 + 8);
  result = *(a1 + 16);
  a2[2] = result;
  return result;
}

- (id)initLineWithCoordinates:(id *)a3 count:(unint64_t)a4
{
  v5.receiver = self;
  v5.super_class = VKCustomFeature;
  if ([(VKCustomFeature *)&v5 init])
  {
    operator new();
  }

  return 0;
}

- (id)_initWithCoordinate:(id)a3 isInjected:(BOOL)a4
{
  var1 = a3.var1;
  var0 = a3.var0;
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
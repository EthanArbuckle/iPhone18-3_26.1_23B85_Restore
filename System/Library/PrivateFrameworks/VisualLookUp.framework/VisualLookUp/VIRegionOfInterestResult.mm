@interface VIRegionOfInterestResult
- (BOOL)isEqual:(id)equal;
- (CGRect)normalizedBoundingBox;
- (VIRegionOfInterestResult)initWithNormalizedBoundingBox:(CGRect)box glyphName:(id)name resultItems:(id)items searchSections:(id)sections;
- (VIRegionOfInterestResult)initWithNormalizedBoundingBox:(CGRect)box resultItems:(id)items searchSections:(id)sections;
- (unint64_t)hash;
@end

@implementation VIRegionOfInterestResult

- (VIRegionOfInterestResult)initWithNormalizedBoundingBox:(CGRect)box resultItems:(id)items searchSections:(id)sections
{
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  itemsCopy = items;
  sectionsCopy = sections;
  v29.receiver = self;
  v29.super_class = VIRegionOfInterestResult;
  v13 = [(VIRegionOfInterestResult *)&v29 init];
  v14 = v13;
  if (v13)
  {
    v13->_normalizedBoundingBox.origin.x = x;
    v13->_normalizedBoundingBox.origin.y = y;
    v13->_normalizedBoundingBox.size.width = width;
    v13->_normalizedBoundingBox.size.height = height;
    v15 = x * 1000.0;
    v16 = llroundf(v15);
    v17 = y * 1000.0;
    v18 = llroundf(v17);
    v19 = width * 1000.0;
    v20 = height * 1000.0;
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lx", (2654435761 * v16) ^ (2654435761 * v18) ^ (2654435761 * llroundf(v20)) ^ (2654435761 * llroundf(v19))];
    regionID = v14->_regionID;
    v14->_regionID = v21;

    glyphName = v14->_glyphName;
    v14->_glyphName = &stru_1F553A170;

    v24 = [itemsCopy copy];
    resultItems = v14->_resultItems;
    v14->_resultItems = v24;

    v26 = [sectionsCopy copy];
    searchSections = v14->_searchSections;
    v14->_searchSections = v26;
  }

  return v14;
}

- (VIRegionOfInterestResult)initWithNormalizedBoundingBox:(CGRect)box glyphName:(id)name resultItems:(id)items searchSections:(id)sections
{
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  nameCopy = name;
  itemsCopy = items;
  sectionsCopy = sections;
  v32.receiver = self;
  v32.super_class = VIRegionOfInterestResult;
  v17 = [(VIRegionOfInterestResult *)&v32 init];
  v18 = v17;
  if (v17)
  {
    v17->_normalizedBoundingBox.origin.x = x;
    v17->_normalizedBoundingBox.origin.y = y;
    v17->_normalizedBoundingBox.size.width = width;
    v17->_normalizedBoundingBox.size.height = height;
    v19 = x * 1000.0;
    v20 = llroundf(v19);
    v21 = y * 1000.0;
    v22 = llroundf(v21);
    v23 = width * 1000.0;
    v24 = height * 1000.0;
    v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lx", (2654435761 * v20) ^ (2654435761 * v22) ^ (2654435761 * llroundf(v24)) ^ (2654435761 * llroundf(v23))];
    regionID = v18->_regionID;
    v18->_regionID = v25;

    objc_storeStrong(&v18->_glyphName, name);
    v27 = [itemsCopy copy];
    resultItems = v18->_resultItems;
    v18->_resultItems = v27;

    v29 = [sectionsCopy copy];
    searchSections = v18->_searchSections;
    v18->_searchSections = v29;
  }

  return v18;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    resultItems = self->_resultItems;
    resultItems = [(VIRegionOfInterestResult *)v6 resultItems];
    if (VIObjectIsEqual(resultItems, resultItems))
    {
      searchSections = self->_searchSections;
      searchSections = [(VIRegionOfInterestResult *)v6 searchSections];
      if (VIObjectIsEqual(searchSections, searchSections))
      {
        [(VIRegionOfInterestResult *)v6 normalizedBoundingBox];
        v17.origin.x = v11;
        v17.origin.y = v12;
        v17.size.width = v13;
        v17.size.height = v14;
        v15 = CGRectEqualToRect(self->_normalizedBoundingBox, v17);
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_resultItems hash];
  v4 = [(NSArray *)self->_searchSections hash];
  v7.i64[0] = *&self->_normalizedBoundingBox.origin.x;
  v8.i64[0] = *&self->_normalizedBoundingBox.origin.y;
  width = self->_normalizedBoundingBox.size.width;
  height = self->_normalizedBoundingBox.size.height;
  x = -*v7.i64;
  if (*v7.i64 >= 0.0)
  {
    x = self->_normalizedBoundingBox.origin.x;
  }

  *v5.i64 = floor(x + 0.5);
  v12 = (x - *v5.i64) * 1.84467441e19;
  *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
  v13.f64[0] = NAN;
  v13.f64[1] = NAN;
  v14 = vnegq_f64(v13);
  v17 = vbslq_s8(v14, v6, v5);
  v15 = 2654435761u * *v17.i64;
  v16 = v15 + v12;
  *v17.i64 = fabs(v12);
  if (v12 <= 0.0)
  {
    v16 = v15;
  }

  v18 = v15 - *v17.i64;
  if (v12 >= 0.0)
  {
    v18 = v16;
  }

  if (*v8.i64 < 0.0)
  {
    *v8.i64 = -*v8.i64;
  }

  *v17.i64 = floor(*v8.i64 + 0.5);
  v19 = (*v8.i64 - *v17.i64) * 1.84467441e19;
  *v6.i64 = *v17.i64 - trunc(*v17.i64 * 5.42101086e-20) * 1.84467441e19;
  v20 = vbslq_s8(v14, v6, v17);
  v21 = 2654435761u * *v20.i64;
  v22 = v21 + v19;
  if (v19 <= 0.0)
  {
    v22 = 2654435761u * *v20.i64;
  }

  v23 = v21 - fabs(v19);
  if (v19 >= 0.0)
  {
    v23 = v22;
  }

  if (width < 0.0)
  {
    width = -width;
  }

  *v8.i64 = floor(width + 0.5);
  v24 = (width - *v8.i64) * 1.84467441e19;
  *v20.i64 = *v8.i64 - trunc(*v8.i64 * 5.42101086e-20) * 1.84467441e19;
  v25 = vbslq_s8(v14, v20, v8);
  v26 = 2654435761u * *v25.i64;
  v27 = v26 + v24;
  if (v24 <= 0.0)
  {
    v27 = 2654435761u * *v25.i64;
  }

  v28 = v26 - fabs(v24);
  if (v24 >= 0.0)
  {
    v28 = v27;
  }

  if (height < 0.0)
  {
    height = -height;
  }

  *v7.i64 = floor(height + 0.5);
  v29 = height - *v7.i64;
  *v25.i64 = *v7.i64 - trunc(*v7.i64 * 5.42101086e-20) * 1.84467441e19;
  v7.i64[0] = vbslq_s8(v14, v25, v7).i64[0];
  v30 = v29 * 1.84467441e19;
  v31 = 2654435761u * *v7.i64;
  v32 = v31 + v30;
  if (v30 <= 0.0)
  {
    v32 = 2654435761u * *v7.i64;
  }

  v33 = v31 - fabs(v30);
  if (v30 >= 0.0)
  {
    v33 = v32;
  }

  return v4 ^ v3 ^ v18 ^ v23 ^ v28 ^ v33;
}

- (CGRect)normalizedBoundingBox
{
  x = self->_normalizedBoundingBox.origin.x;
  y = self->_normalizedBoundingBox.origin.y;
  width = self->_normalizedBoundingBox.size.width;
  height = self->_normalizedBoundingBox.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end
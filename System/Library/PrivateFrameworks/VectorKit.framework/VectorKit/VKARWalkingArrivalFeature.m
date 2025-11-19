@interface VKARWalkingArrivalFeature
- (BOOL)isEqual:(id)a3;
- (VKARWalkingArrivalFeature)initWithARInfo:(id)a3 iconStyleAttributes:(id)a4;
- (VKARWalkingArrivalFeature)initWithGeocentricPosition:(Geocentric<double>)a3 iconStyleAttributes:(id)a4;
- (VKARWalkingArrivalFeature)initWithPosition:(id)a3 iconStyleAttributes:(id)a4;
- (VKARWalkingArrivalFeature)initWithStoreFront:(id)a3 iconStyleAttributes:(id)a4;
- (VKARWalkingArrivalFeature)initWithStoreFronts:(id)a3 iconStyleAttributes:(id)a4;
- (id)_stringForAttributes;
- (id)description;
@end

@implementation VKARWalkingArrivalFeature

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  arInfo = self->_arInfo;
  v7 = [(VKARWalkingArrivalFeature *)self _stringForAttributes];
  v8 = [v3 stringWithFormat:@"<%@: %p arInfo:%@ styleAttributes:%@ storeFronts:%@>", v5, self, arInfo, v7, self->_storeFronts];

  return v8;
}

- (id)_stringForAttributes
{
  if (self->_styleAttributes)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:{3 * -[GEOFeatureStyleAttributes countAttrs](self->_styleAttributes, "countAttrs")}];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    [v3 appendFormat:@"<%@: %p", v5, self];

    [v3 appendString:@" attrs:["];
    for (i = 0; i < [(GEOFeatureStyleAttributes *)self->_styleAttributes countAttrs]; ++i)
    {
      v7 = [(GEOFeatureStyleAttributes *)self->_styleAttributes attributeAtIndex:i];
      [v3 appendFormat:@"(%d, %d)", *v7, v7[1]];
      if (i + 1 < [(GEOFeatureStyleAttributes *)self->_styleAttributes countAttrs])
      {
        [v3 appendString:{@", "}];
      }
    }

    [v3 appendString:@"]>"];
    v8 = [MEMORY[0x1E696AEC0] stringWithString:v3];
  }

  else
  {
    v8 = &stru_1F2A61C40;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = VKARWalkingArrivalFeature;
  if ([(VKARWalkingFeature *)&v17 isEqual:v4]&& (v5 = objc_opt_class(), v5 == objc_opt_class()))
  {
    v8 = v4;
    v9 = v8;
    if (self->_arInfo == v8[4] && ((storeFronts = self->_storeFronts, [v8 storeFronts], v11 = objc_claimAutoreleasedReturnValue(), v12 = storeFronts, v13 = v11, !(v12 | v13)) || (v14 = v13, v15 = objc_msgSend(v12, "isEqual:", v13), v14, v12, v14, (v15 & 1) != 0)))
    {
      v16 = [v9 styleAttributes];
      v6 = GeoCodecsFeatureStyleAttributesCompare() == 0;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (VKARWalkingArrivalFeature)initWithStoreFronts:(id)a3 iconStyleAttributes:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = VKARWalkingArrivalFeature;
  v9 = [(VKARWalkingFeature *)&v13 initWithType:1];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_storeFronts, a3);
    objc_storeStrong(&v10->_styleAttributes, a4);
    v11 = v10;
  }

  return v10;
}

- (VKARWalkingArrivalFeature)initWithStoreFront:(id)a3 iconStyleAttributes:(id)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v11[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v9 = [(VKARWalkingArrivalFeature *)self initWithStoreFronts:v8 iconStyleAttributes:v7];

  return v9;
}

- (VKARWalkingArrivalFeature)initWithGeocentricPosition:(Geocentric<double>)a3 iconStyleAttributes:(id)a4
{
  v4 = a3.var0[2];
  v5 = a3.var0[1];
  v6 = a3.var0[0];
  v8 = a4;
  v9 = 0;
  v15 = xmmword_1B33B0710;
  do
  {
    *(&v16 + v9) = *(&v15 + v9);
    ++v9;
  }

  while (v9 != 3);
  *v18 = v6;
  *&v18[1] = v5;
  *&v18[2] = v4;
  v19 = v16;
  v20 = v17;
  v21 = 0x3FF0000000000000;
  v22 = 0u;
  v23 = 0u;
  v10 = MEMORY[0x1E695DEC8];
  v11 = [[VKARWalkingArrivalStoreFront alloc] initWithOrientedRect:v18];
  v12 = [v10 arrayWithObjects:{v11, 0}];

  v13 = [(VKARWalkingArrivalFeature *)self initWithStoreFronts:v12 iconStyleAttributes:v8];
  return v13;
}

- (VKARWalkingArrivalFeature)initWithPosition:(id)a3 iconStyleAttributes:(id)a4
{
  var2 = a3.var2;
  v7 = a3.var1 * 0.0174532925;
  v8 = __sincos_stret(a3.var0 * 0.0174532925);
  v9 = 6378137.0 / sqrt(v8.__sinval * v8.__sinval * -0.00669437999 + 1.0);
  v10 = __sincos_stret(v7);

  return [(VKARWalkingArrivalFeature *)self initWithGeocentricPosition:a4 iconStyleAttributes:(v9 + var2) * v8.__cosval * v10.__cosval, (v9 + var2) * v8.__cosval * v10.__sinval, (var2 + v9 * 0.99330562) * v8.__sinval];
}

- (VKARWalkingArrivalFeature)initWithARInfo:(id)a3 iconStyleAttributes:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc(MEMORY[0x1E695DF70]);
  v9 = [v6 storefrontFaceGeometrys];
  v10 = [v8 initWithCapacity:{objc_msgSend(v9, "count")}];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = [v6 storefrontFaceGeometrys];
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = *v21;
    do
    {
      v14 = 0;
      do
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = [[VKARWalkingArrivalStoreFront alloc] initWithGEOOrientedBox:*(*(&v20 + 1) + 8 * v14)];
        if (v15)
        {
          [v10 addObject:v15];
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  v16 = [(VKARWalkingArrivalFeature *)self initWithStoreFronts:v10 iconStyleAttributes:v7];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_arInfo, a3);
  }

  return v17;
}

@end
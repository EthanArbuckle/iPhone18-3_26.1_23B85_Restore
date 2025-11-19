@interface _SFPBRFMapCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBRFMapCardSection)initWithDictionary:(id)a3;
- (_SFPBRFMapCardSection)initWithFacade:(id)a3;
- (_SFPBRFMapCardSection)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAnnotations:(id)a3;
- (void)addMarkers:(id)a3;
- (void)addPolyline:(id)a3;
- (void)setAnnotations:(id)a3;
- (void)setMarkers:(id)a3;
- (void)setPolyline:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBRFMapCardSection

- (_SFPBRFMapCardSection)initWithFacade:(id)a3
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBRFMapCardSection *)self init];
  if (v5)
  {
    if ([v4 hasSizeFormat])
    {
      -[_SFPBRFMapCardSection setSizeFormat:](v5, "setSizeFormat:", [v4 sizeFormat]);
    }

    v6 = [v4 markers];
    if (v6)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v7 = 0;
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v8 = [v4 markers];
    v9 = [v8 countByEnumeratingWithState:&v42 objects:v48 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v43;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v43 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [[_SFPBRFMapMarker alloc] initWithFacade:*(*(&v42 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v42 objects:v48 count:16];
      }

      while (v10);
    }

    [(_SFPBRFMapCardSection *)v5 setMarkers:v7];
    v14 = [v4 annotations];
    if (v14)
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v15 = 0;
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v16 = [v4 annotations];
    v17 = [v16 countByEnumeratingWithState:&v38 objects:v47 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v39;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v39 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [[_SFPBRFMapAnnotation alloc] initWithFacade:*(*(&v38 + 1) + 8 * j)];
          if (v21)
          {
            [v15 addObject:v21];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v38 objects:v47 count:16];
      }

      while (v18);
    }

    [(_SFPBRFMapCardSection *)v5 setAnnotations:v15];
    v22 = [v4 polyline];
    v33 = v5;
    if (v22)
    {
      v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v23 = 0;
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v24 = [v4 polyline];
    v25 = [v24 countByEnumeratingWithState:&v34 objects:v46 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v35;
      do
      {
        for (k = 0; k != v26; ++k)
        {
          if (*v35 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = [[_SFPBLatLng alloc] initWithFacade:*(*(&v34 + 1) + 8 * k)];
          if (v29)
          {
            [v23 addObject:v29];
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v34 objects:v46 count:16];
      }

      while (v26);
    }

    v5 = v33;
    [(_SFPBRFMapCardSection *)v33 setPolylines:v23];
    if ([v4 hasCameraDistance])
    {
      [v4 cameraDistance];
      [(_SFPBRFMapCardSection *)v33 setCameraDistance:?];
    }

    if ([v4 hasShowsUserLocation])
    {
      -[_SFPBRFMapCardSection setShowsUserLocation:](v33, "setShowsUserLocation:", [v4 showsUserLocation]);
    }

    v30 = v33;
  }

  v31 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRFMapCardSection)initWithDictionary:(id)a3
{
  v55 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v51.receiver = self;
  v51.super_class = _SFPBRFMapCardSection;
  v5 = [(_SFPBRFMapCardSection *)&v51 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"sizeFormat"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRFMapCardSection setSizeFormat:](v5, "setSizeFormat:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"markers"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v6;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v9 = v7;
      v10 = [v9 countByEnumeratingWithState:&v47 objects:v54 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v48;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v48 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v47 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = [[_SFPBRFMapMarker alloc] initWithDictionary:v14];
              [(_SFPBRFMapCardSection *)v5 addMarkers:v15];
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v47 objects:v54 count:16];
        }

        while (v11);
      }

      v6 = v8;
    }

    v16 = [v4 objectForKeyedSubscript:@"annotations"];
    objc_opt_class();
    v38 = v16;
    if (objc_opt_isKindOfClass())
    {
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v17 = v16;
      v18 = [v17 countByEnumeratingWithState:&v43 objects:v53 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v44;
        do
        {
          for (j = 0; j != v19; ++j)
          {
            if (*v44 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v43 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v23 = [[_SFPBRFMapAnnotation alloc] initWithDictionary:v22];
              [(_SFPBRFMapCardSection *)v5 addAnnotations:v23];
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v43 objects:v53 count:16];
        }

        while (v19);
      }

      v16 = v38;
    }

    v24 = [v4 objectForKeyedSubscript:@"polyline"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v37 = v6;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v25 = v24;
      v26 = [v25 countByEnumeratingWithState:&v39 objects:v52 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v40;
        do
        {
          for (k = 0; k != v27; ++k)
          {
            if (*v40 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v30 = *(*(&v39 + 1) + 8 * k);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v31 = [[_SFPBLatLng alloc] initWithDictionary:v30];
              [(_SFPBRFMapCardSection *)v5 addPolyline:v31];
            }
          }

          v27 = [v25 countByEnumeratingWithState:&v39 objects:v52 count:16];
        }

        while (v27);
      }

      v6 = v37;
      v16 = v38;
    }

    v32 = [v4 objectForKeyedSubscript:@"cameraDistance"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v32 doubleValue];
      [(_SFPBRFMapCardSection *)v5 setCameraDistance:?];
    }

    v33 = [v4 objectForKeyedSubscript:@"showsUserLocation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRFMapCardSection setShowsUserLocation:](v5, "setShowsUserLocation:", [v33 BOOLValue]);
    }

    v34 = v5;
  }

  v35 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRFMapCardSection)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBRFMapCardSection *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBRFMapCardSection *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v50 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_annotations count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v5 = self->_annotations;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v43 objects:v49 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v44;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v44 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v43 + 1) + 8 * i) dictionaryRepresentation];
          if (v10)
          {
            [v4 addObject:v10];
          }

          else
          {
            v11 = [MEMORY[0x1E695DFB0] null];
            [v4 addObject:v11];
          }
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v43 objects:v49 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"annotations"];
  }

  if (self->_cameraDistance != 0.0)
  {
    v12 = MEMORY[0x1E696AD98];
    [(_SFPBRFMapCardSection *)self cameraDistance];
    v13 = [v12 numberWithDouble:?];
    [v3 setObject:v13 forKeyedSubscript:@"cameraDistance"];
  }

  if ([(NSArray *)self->_markers count])
  {
    v14 = [MEMORY[0x1E695DF70] array];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v15 = self->_markers;
    v16 = [(NSArray *)v15 countByEnumeratingWithState:&v39 objects:v48 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v40;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v40 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [*(*(&v39 + 1) + 8 * j) dictionaryRepresentation];
          if (v20)
          {
            [v14 addObject:v20];
          }

          else
          {
            v21 = [MEMORY[0x1E695DFB0] null];
            [v14 addObject:v21];
          }
        }

        v17 = [(NSArray *)v15 countByEnumeratingWithState:&v39 objects:v48 count:16];
      }

      while (v17);
    }

    [v3 setObject:v14 forKeyedSubscript:@"markers"];
  }

  if ([(NSArray *)self->_polylines count])
  {
    v22 = [MEMORY[0x1E695DF70] array];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v23 = self->_polylines;
    v24 = [(NSArray *)v23 countByEnumeratingWithState:&v35 objects:v47 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v36;
      do
      {
        for (k = 0; k != v25; ++k)
        {
          if (*v36 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = [*(*(&v35 + 1) + 8 * k) dictionaryRepresentation];
          if (v28)
          {
            [v22 addObject:v28];
          }

          else
          {
            v29 = [MEMORY[0x1E695DFB0] null];
            [v22 addObject:v29];
          }
        }

        v25 = [(NSArray *)v23 countByEnumeratingWithState:&v35 objects:v47 count:16];
      }

      while (v25);
    }

    [v3 setObject:v22 forKeyedSubscript:@"polyline"];
  }

  if (self->_showsUserLocation)
  {
    v30 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBRFMapCardSection showsUserLocation](self, "showsUserLocation")}];
    [v3 setObject:v30 forKeyedSubscript:@"showsUserLocation"];
  }

  if (self->_sizeFormat)
  {
    v31 = [(_SFPBRFMapCardSection *)self sizeFormat];
    if (v31)
    {
      if (v31 == 1)
      {
        v32 = @"1";
      }

      else
      {
        v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v31];
      }
    }

    else
    {
      v32 = @"0";
    }

    [v3 setObject:v32 forKeyedSubscript:@"sizeFormat"];
  }

  v33 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  sizeFormat = self->_sizeFormat;
  v4 = [(NSArray *)self->_markers hash];
  v5 = [(NSArray *)self->_annotations hash];
  v6 = [(NSArray *)self->_polylines hash];
  cameraDistance = self->_cameraDistance;
  if (cameraDistance == 0.0)
  {
    v12 = 0;
  }

  else
  {
    if (cameraDistance < 0.0)
    {
      cameraDistance = -cameraDistance;
    }

    *v7.i64 = floor(cameraDistance + 0.5);
    v10 = (cameraDistance - *v7.i64) * 1.84467441e19;
    *v8.i64 = *v7.i64 - trunc(*v7.i64 * 5.42101086e-20) * 1.84467441e19;
    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    v12 = 2654435761u * *vbslq_s8(vnegq_f64(v11), v8, v7).i64;
    if (v10 >= 0.0)
    {
      if (v10 > 0.0)
      {
        v12 += v10;
      }
    }

    else
    {
      v12 -= fabs(v10);
    }
  }

  if (self->_showsUserLocation)
  {
    v13 = 2654435761;
  }

  else
  {
    v13 = 0;
  }

  return v4 ^ v5 ^ v6 ^ v12 ^ v13 ^ (2654435761 * sizeFormat);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  sizeFormat = self->_sizeFormat;
  if (sizeFormat != [v4 sizeFormat])
  {
    goto LABEL_18;
  }

  v6 = [(_SFPBRFMapCardSection *)self markers];
  v7 = [v4 markers];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_17;
  }

  v8 = [(_SFPBRFMapCardSection *)self markers];
  if (v8)
  {
    v9 = v8;
    v10 = [(_SFPBRFMapCardSection *)self markers];
    v11 = [v4 markers];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v6 = [(_SFPBRFMapCardSection *)self annotations];
  v7 = [v4 annotations];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_17;
  }

  v13 = [(_SFPBRFMapCardSection *)self annotations];
  if (v13)
  {
    v14 = v13;
    v15 = [(_SFPBRFMapCardSection *)self annotations];
    v16 = [v4 annotations];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v6 = [(_SFPBRFMapCardSection *)self polylines];
  v7 = [v4 polylines];
  if ((v6 != 0) == (v7 == 0))
  {
LABEL_17:

    goto LABEL_18;
  }

  v18 = [(_SFPBRFMapCardSection *)self polylines];
  if (v18)
  {
    v19 = v18;
    v20 = [(_SFPBRFMapCardSection *)self polylines];
    v21 = [v4 polylines];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  cameraDistance = self->_cameraDistance;
  [v4 cameraDistance];
  if (cameraDistance == v26)
  {
    showsUserLocation = self->_showsUserLocation;
    v23 = showsUserLocation == [v4 showsUserLocation];
    goto LABEL_19;
  }

LABEL_18:
  v23 = 0;
LABEL_19:

  return v23;
}

- (void)writeTo:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(_SFPBRFMapCardSection *)self sizeFormat])
  {
    PBDataWriterWriteInt32Field();
  }

  v5 = [(_SFPBRFMapCardSection *)self markers];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v34;
    do
    {
      v9 = 0;
      do
      {
        if (*v34 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v33 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v7);
  }

  v11 = [(_SFPBRFMapCardSection *)self annotations];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v29 objects:v38 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v30;
    do
    {
      v15 = 0;
      do
      {
        if (*v30 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v29 + 1) + 8 * v15);
        PBDataWriterWriteSubmessage();
        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v29 objects:v38 count:16];
    }

    while (v13);
  }

  v17 = [(_SFPBRFMapCardSection *)self polylines];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v18 = [v17 countByEnumeratingWithState:&v25 objects:v37 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v26;
    do
    {
      v21 = 0;
      do
      {
        if (*v26 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v25 + 1) + 8 * v21);
        PBDataWriterWriteSubmessage();
        ++v21;
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v25 objects:v37 count:16];
    }

    while (v19);
  }

  [(_SFPBRFMapCardSection *)self cameraDistance];
  if (v23 != 0.0)
  {
    PBDataWriterWriteDoubleField();
  }

  if ([(_SFPBRFMapCardSection *)self showsUserLocation])
  {
    PBDataWriterWriteBOOLField();
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)addPolyline:(id)a3
{
  v4 = a3;
  polylines = self->_polylines;
  v8 = v4;
  if (!polylines)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_polylines;
    self->_polylines = v6;

    v4 = v8;
    polylines = self->_polylines;
  }

  [(NSArray *)polylines addObject:v4];
}

- (void)setPolyline:(id)a3
{
  v4 = [a3 copy];
  polylines = self->_polylines;
  self->_polylines = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addAnnotations:(id)a3
{
  v4 = a3;
  annotations = self->_annotations;
  v8 = v4;
  if (!annotations)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_annotations;
    self->_annotations = v6;

    v4 = v8;
    annotations = self->_annotations;
  }

  [(NSArray *)annotations addObject:v4];
}

- (void)setAnnotations:(id)a3
{
  v4 = [a3 copy];
  annotations = self->_annotations;
  self->_annotations = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addMarkers:(id)a3
{
  v4 = a3;
  markers = self->_markers;
  v8 = v4;
  if (!markers)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_markers;
    self->_markers = v6;

    v4 = v8;
    markers = self->_markers;
  }

  [(NSArray *)markers addObject:v4];
}

- (void)setMarkers:(id)a3
{
  v4 = [a3 copy];
  markers = self->_markers;
  self->_markers = v4;

  MEMORY[0x1EEE66BB8]();
}

@end
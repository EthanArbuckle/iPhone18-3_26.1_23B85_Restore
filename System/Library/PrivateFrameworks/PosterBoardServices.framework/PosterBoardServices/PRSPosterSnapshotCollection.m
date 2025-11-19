@interface PRSPosterSnapshotCollection
- (BOOL)_populateInterfaceOrientationFromSurfacesIfPossible;
- (BOOL)_populateSalientContentRectFromSurfacesIfPossible;
- (CGRect)salientContentRectangle;
- (PRSPosterSnapshotCollection)initWithBSXPCCoder:(id)a3;
- (PRSPosterSnapshotCollection)initWithPrimaryLayersSnapshot:(id)a3 floatingLayerSnapshot:(id)a4 snapshotScale:(double)a5 interfaceStyle:(int64_t)a6 accessibilityContrast:(int64_t)a7 interfaceOrientation:(int64_t)a8 displayIdentity:(id)a9 salientContentRectangle:(CGRect)a10;
- (void)encodeWithBSXPCCoder:(id)a3;
@end

@implementation PRSPosterSnapshotCollection

- (PRSPosterSnapshotCollection)initWithPrimaryLayersSnapshot:(id)a3 floatingLayerSnapshot:(id)a4 snapshotScale:(double)a5 interfaceStyle:(int64_t)a6 accessibilityContrast:(int64_t)a7 interfaceOrientation:(int64_t)a8 displayIdentity:(id)a9 salientContentRectangle:(CGRect)a10
{
  height = a10.size.height;
  width = a10.size.width;
  y = a10.origin.y;
  x = a10.origin.x;
  v22 = a3;
  v23 = a4;
  v24 = a9;
  v30.receiver = self;
  v30.super_class = PRSPosterSnapshotCollection;
  v25 = [(PRSPosterSnapshotCollection *)&v30 init];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_primaryLayersSnapshot, a3);
    objc_storeStrong(&v26->_floatingLayerSnapshot, a4);
    v26->_snapshotScale = a5;
    v26->_interfaceStyle = a6;
    v26->_accessibilityContrast = a7;
    if (v24)
    {
      v27 = v24;
    }

    else
    {
      v27 = [MEMORY[0x1E699F7A8] mainIdentity];
    }

    snapshotDisplayIdentity = v26->_snapshotDisplayIdentity;
    v26->_snapshotDisplayIdentity = v27;

    v26->_interfaceOrientation = a8;
    v26->_salientContentRectangle.origin.x = x;
    v26->_salientContentRectangle.origin.y = y;
    v26->_salientContentRectangle.size.width = width;
    v26->_salientContentRectangle.size.height = height;
    [(PRSPosterSnapshotCollection *)v26 _populateInterfaceOrientationFromSurfacesIfPossible];
    [(PRSPosterSnapshotCollection *)v26 _populateSalientContentRectFromSurfacesIfPossible];
  }

  return v26;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v5 = a3;
  [v5 encodeObject:self->_primaryLayersSnapshot forKey:@"primaryLayersSnapshot"];
  floatingLayerSnapshot = self->_floatingLayerSnapshot;
  if (floatingLayerSnapshot)
  {
    [v5 encodeObject:floatingLayerSnapshot forKey:@"floatingLayerSnapshot"];
  }

  [v5 encodeDouble:@"snapshotScale" forKey:self->_snapshotScale];
  [v5 encodeInt64:self->_interfaceStyle forKey:@"interfaceStyle"];
  [v5 encodeInt64:self->_accessibilityContrast forKey:@"accessibilityContrast"];
  [v5 encodeObject:self->_snapshotDisplayIdentity forKey:@"snapshotDisplayIdentity"];
  [v5 encodeInt64:self->_interfaceOrientation forKey:@"interfaceOrientation"];
  [v5 encodeCGRect:@"salientContentRectangle" forKey:{self->_salientContentRectangle.origin.x, self->_salientContentRectangle.origin.y, self->_salientContentRectangle.size.width, self->_salientContentRectangle.size.height}];
}

- (PRSPosterSnapshotCollection)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"primaryLayersSnapshot"];
  if (v5)
  {
    if ([v4 containsValueForKey:@"floatingLayerSnapshot"])
    {
      v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"floatingLayerSnapshot"];
    }

    else
    {
      v6 = 0;
    }

    if ([v4 containsValueForKey:@"salientContentRectangle"])
    {
      [v4 decodeCGRectForKey:@"salientContentRectangle"];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;
    }

    else
    {
      v9 = *MEMORY[0x1E695F050];
      v11 = *(MEMORY[0x1E695F050] + 8);
      v13 = *(MEMORY[0x1E695F050] + 16);
      v15 = *(MEMORY[0x1E695F050] + 24);
    }

    [v4 decodeDoubleForKey:@"snapshotScale"];
    v17 = v16;
    v18 = [v4 decodeInt64ForKey:@"interfaceStyle"];
    v19 = [v4 decodeInt64ForKey:@"accessibilityContrast"];
    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"snapshotDisplayIdentity"];
    interfaceOrientation = [v4 decodeUInt64ForKey:@"interfaceOrientation"];
    if ((interfaceOrientation - 1) >= 2)
    {
      if ([(PRSPosterSnapshotCollection *)self _populateInterfaceOrientationFromSurfacesIfPossible])
      {
        interfaceOrientation = self->_interfaceOrientation;
      }

      else
      {
        v22 = [v5 surface];
        v26 = [v22 width];
        v23 = [v5 surface];
        v24 = [v23 height];

        if (v26 <= v24)
        {
          interfaceOrientation = 1;
        }

        else
        {
          interfaceOrientation = 2;
        }
      }
    }

    self = [(PRSPosterSnapshotCollection *)self initWithPrimaryLayersSnapshot:v5 floatingLayerSnapshot:v6 snapshotScale:v18 interfaceStyle:v19 accessibilityContrast:interfaceOrientation interfaceOrientation:v20 displayIdentity:v17 salientContentRectangle:v9, v11, v13, v15];

    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_populateInterfaceOrientationFromSurfacesIfPossible
{
  v3 = [(PRSPosterSnapshot *)self->_primaryLayersSnapshot surface];
  v4 = getkPaperboardIOSurfaceDeviceOrientationPropertiesKey();
  v5 = [v3 attachmentForKey:v4];

  if (v5)
  {
    v6 = getkPaperboardIOSurfaceDeviceOrientationPropertiesKey();
    v7 = [v3 attachmentForKey:v6];
    [v7 unsignedIntegerValue];

    v8 = 1;
    if (BSInterfaceOrientationIsPortrait())
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    self->_interfaceOrientation = v9;
  }

  else
  {
    v10 = [(PRSPosterSnapshot *)self->_floatingLayerSnapshot surface];
    v11 = getkPaperboardIOSurfaceDeviceOrientationPropertiesKey();
    v12 = [v10 attachmentForKey:v11];

    v8 = v12 != 0;
    if (v12)
    {
      v13 = getkPaperboardIOSurfaceDeviceOrientationPropertiesKey();
      v14 = [v10 attachmentForKey:v13];
      [v14 unsignedIntegerValue];

      IsPortrait = BSInterfaceOrientationIsPortrait();
      v16 = 1;
      if (!IsPortrait)
      {
        v16 = 2;
      }

      self->_interfaceOrientation = v16;
    }
  }

  return v8;
}

- (BOOL)_populateSalientContentRectFromSurfacesIfPossible
{
  if (!CGRectIsNull(self->_salientContentRectangle) && !CGRectIsEmpty(self->_salientContentRectangle) && !CGRectIsInfinite(self->_salientContentRectangle))
  {
    return 0;
  }

  v3 = [(PRSPosterSnapshot *)self->_primaryLayersSnapshot surface];
  v4 = getkPaperboardIOSurfaceSalientContentRectPropertiesKey();
  v5 = [v3 attachmentForKey:v4];

  if (v5)
  {
    v6 = getkPaperboardIOSurfaceSalientContentRectPropertiesKey();
    v7 = [v3 attachmentForKey:v6];
    self->_salientContentRectangle.origin.x = soft_CGRectFromString(v7);
    self->_salientContentRectangle.origin.y = v8;
    self->_salientContentRectangle.size.width = v9;
    self->_salientContentRectangle.size.height = v10;
LABEL_8:

    v13 = 1;
    goto LABEL_9;
  }

  v6 = [(PRSPosterSnapshot *)self->_floatingLayerSnapshot surface];
  v11 = getkPaperboardIOSurfaceSalientContentRectPropertiesKey();
  v12 = [v6 attachmentForKey:v11];

  v13 = v12 != 0;
  if (v12)
  {
    v7 = getkPaperboardIOSurfaceSalientContentRectPropertiesKey();
    v14 = [v6 attachmentForKey:v7];
    self->_salientContentRectangle.origin.x = soft_CGRectFromString(v14);
    self->_salientContentRectangle.origin.y = v15;
    self->_salientContentRectangle.size.width = v16;
    self->_salientContentRectangle.size.height = v17;

    goto LABEL_8;
  }

LABEL_9:

  return v13;
}

- (CGRect)salientContentRectangle
{
  x = self->_salientContentRectangle.origin.x;
  y = self->_salientContentRectangle.origin.y;
  width = self->_salientContentRectangle.size.width;
  height = self->_salientContentRectangle.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end
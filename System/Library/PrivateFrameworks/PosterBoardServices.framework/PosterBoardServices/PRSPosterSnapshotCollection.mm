@interface PRSPosterSnapshotCollection
- (BOOL)_populateInterfaceOrientationFromSurfacesIfPossible;
- (BOOL)_populateSalientContentRectFromSurfacesIfPossible;
- (CGRect)salientContentRectangle;
- (PRSPosterSnapshotCollection)initWithBSXPCCoder:(id)coder;
- (PRSPosterSnapshotCollection)initWithPrimaryLayersSnapshot:(id)snapshot floatingLayerSnapshot:(id)layerSnapshot snapshotScale:(double)scale interfaceStyle:(int64_t)style accessibilityContrast:(int64_t)contrast interfaceOrientation:(int64_t)orientation displayIdentity:(id)identity salientContentRectangle:(CGRect)self0;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation PRSPosterSnapshotCollection

- (PRSPosterSnapshotCollection)initWithPrimaryLayersSnapshot:(id)snapshot floatingLayerSnapshot:(id)layerSnapshot snapshotScale:(double)scale interfaceStyle:(int64_t)style accessibilityContrast:(int64_t)contrast interfaceOrientation:(int64_t)orientation displayIdentity:(id)identity salientContentRectangle:(CGRect)self0
{
  height = rectangle.size.height;
  width = rectangle.size.width;
  y = rectangle.origin.y;
  x = rectangle.origin.x;
  snapshotCopy = snapshot;
  layerSnapshotCopy = layerSnapshot;
  identityCopy = identity;
  v30.receiver = self;
  v30.super_class = PRSPosterSnapshotCollection;
  v25 = [(PRSPosterSnapshotCollection *)&v30 init];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_primaryLayersSnapshot, snapshot);
    objc_storeStrong(&v26->_floatingLayerSnapshot, layerSnapshot);
    v26->_snapshotScale = scale;
    v26->_interfaceStyle = style;
    v26->_accessibilityContrast = contrast;
    if (identityCopy)
    {
      mainIdentity = identityCopy;
    }

    else
    {
      mainIdentity = [MEMORY[0x1E699F7A8] mainIdentity];
    }

    snapshotDisplayIdentity = v26->_snapshotDisplayIdentity;
    v26->_snapshotDisplayIdentity = mainIdentity;

    v26->_interfaceOrientation = orientation;
    v26->_salientContentRectangle.origin.x = x;
    v26->_salientContentRectangle.origin.y = y;
    v26->_salientContentRectangle.size.width = width;
    v26->_salientContentRectangle.size.height = height;
    [(PRSPosterSnapshotCollection *)v26 _populateInterfaceOrientationFromSurfacesIfPossible];
    [(PRSPosterSnapshotCollection *)v26 _populateSalientContentRectFromSurfacesIfPossible];
  }

  return v26;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_primaryLayersSnapshot forKey:@"primaryLayersSnapshot"];
  floatingLayerSnapshot = self->_floatingLayerSnapshot;
  if (floatingLayerSnapshot)
  {
    [coderCopy encodeObject:floatingLayerSnapshot forKey:@"floatingLayerSnapshot"];
  }

  [coderCopy encodeDouble:@"snapshotScale" forKey:self->_snapshotScale];
  [coderCopy encodeInt64:self->_interfaceStyle forKey:@"interfaceStyle"];
  [coderCopy encodeInt64:self->_accessibilityContrast forKey:@"accessibilityContrast"];
  [coderCopy encodeObject:self->_snapshotDisplayIdentity forKey:@"snapshotDisplayIdentity"];
  [coderCopy encodeInt64:self->_interfaceOrientation forKey:@"interfaceOrientation"];
  [coderCopy encodeCGRect:@"salientContentRectangle" forKey:{self->_salientContentRectangle.origin.x, self->_salientContentRectangle.origin.y, self->_salientContentRectangle.size.width, self->_salientContentRectangle.size.height}];
}

- (PRSPosterSnapshotCollection)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"primaryLayersSnapshot"];
  if (v5)
  {
    if ([coderCopy containsValueForKey:@"floatingLayerSnapshot"])
    {
      v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"floatingLayerSnapshot"];
    }

    else
    {
      v6 = 0;
    }

    if ([coderCopy containsValueForKey:@"salientContentRectangle"])
    {
      [coderCopy decodeCGRectForKey:@"salientContentRectangle"];
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

    [coderCopy decodeDoubleForKey:@"snapshotScale"];
    v17 = v16;
    v18 = [coderCopy decodeInt64ForKey:@"interfaceStyle"];
    v19 = [coderCopy decodeInt64ForKey:@"accessibilityContrast"];
    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"snapshotDisplayIdentity"];
    interfaceOrientation = [coderCopy decodeUInt64ForKey:@"interfaceOrientation"];
    if ((interfaceOrientation - 1) >= 2)
    {
      if ([(PRSPosterSnapshotCollection *)self _populateInterfaceOrientationFromSurfacesIfPossible])
      {
        interfaceOrientation = self->_interfaceOrientation;
      }

      else
      {
        surface = [v5 surface];
        width = [surface width];
        surface2 = [v5 surface];
        height = [surface2 height];

        if (width <= height)
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

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)_populateInterfaceOrientationFromSurfacesIfPossible
{
  surface = [(PRSPosterSnapshot *)self->_primaryLayersSnapshot surface];
  v4 = getkPaperboardIOSurfaceDeviceOrientationPropertiesKey();
  v5 = [surface attachmentForKey:v4];

  if (v5)
  {
    v6 = getkPaperboardIOSurfaceDeviceOrientationPropertiesKey();
    v7 = [surface attachmentForKey:v6];
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
    surface2 = [(PRSPosterSnapshot *)self->_floatingLayerSnapshot surface];
    v11 = getkPaperboardIOSurfaceDeviceOrientationPropertiesKey();
    v12 = [surface2 attachmentForKey:v11];

    v8 = v12 != 0;
    if (v12)
    {
      v13 = getkPaperboardIOSurfaceDeviceOrientationPropertiesKey();
      v14 = [surface2 attachmentForKey:v13];
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

  surface = [(PRSPosterSnapshot *)self->_primaryLayersSnapshot surface];
  v4 = getkPaperboardIOSurfaceSalientContentRectPropertiesKey();
  v5 = [surface attachmentForKey:v4];

  if (v5)
  {
    surface2 = getkPaperboardIOSurfaceSalientContentRectPropertiesKey();
    v7 = [surface attachmentForKey:surface2];
    self->_salientContentRectangle.origin.x = soft_CGRectFromString(v7);
    self->_salientContentRectangle.origin.y = v8;
    self->_salientContentRectangle.size.width = v9;
    self->_salientContentRectangle.size.height = v10;
LABEL_8:

    v13 = 1;
    goto LABEL_9;
  }

  surface2 = [(PRSPosterSnapshot *)self->_floatingLayerSnapshot surface];
  v11 = getkPaperboardIOSurfaceSalientContentRectPropertiesKey();
  v12 = [surface2 attachmentForKey:v11];

  v13 = v12 != 0;
  if (v12)
  {
    v7 = getkPaperboardIOSurfaceSalientContentRectPropertiesKey();
    v14 = [surface2 attachmentForKey:v7];
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
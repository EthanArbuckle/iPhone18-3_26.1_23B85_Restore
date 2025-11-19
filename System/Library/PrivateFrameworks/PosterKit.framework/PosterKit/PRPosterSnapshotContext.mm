@interface PRPosterSnapshotContext
+ (id)contextFromSnapshotBundleContextProvider:(id)a3;
+ (id)contextFromSnapshotDescriptor:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CGRect)canvasBounds;
- (CGRect)salientContentRectangle;
- (PRPosterSnapshotContext)initWithInterfaceOrientation:(int64_t)a3 userInterfaceStyle:(int64_t)a4 accessibilityContrast:(int64_t)a5 canvasBounds:(CGRect)a6 snapshotDefinitionIdentifier:(id)a7 salientContentRectangle:(CGRect)a8 contentOcclusionRectangles:(id)a9;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation PRPosterSnapshotContext

- (PRPosterSnapshotContext)initWithInterfaceOrientation:(int64_t)a3 userInterfaceStyle:(int64_t)a4 accessibilityContrast:(int64_t)a5 canvasBounds:(CGRect)a6 snapshotDefinitionIdentifier:(id)a7 salientContentRectangle:(CGRect)a8 contentOcclusionRectangles:(id)a9
{
  height = a8.size.height;
  width = a8.size.width;
  y = a8.origin.y;
  x = a8.origin.x;
  v14 = a6.size.height;
  v15 = a6.size.width;
  v16 = a6.origin.y;
  v17 = a6.origin.x;
  v22 = a7;
  v23 = a9;
  v31.receiver = self;
  v31.super_class = PRPosterSnapshotContext;
  v24 = [(PRPosterSnapshotContext *)&v31 init];
  v25 = v24;
  if (v24)
  {
    v24->_interfaceOrientation = a3;
    v24->_userInterfaceStyle = a4;
    v24->_accessibilityContrast = a5;
    v24->_canvasBounds.origin.x = v17;
    v24->_canvasBounds.origin.y = v16;
    v24->_canvasBounds.size.width = v15;
    v24->_canvasBounds.size.height = v14;
    v26 = [v22 copy];
    snapshotDefinitionIdentifier = v25->_snapshotDefinitionIdentifier;
    v25->_snapshotDefinitionIdentifier = v26;

    v25->_salientContentRectangle.origin.x = x;
    v25->_salientContentRectangle.origin.y = y;
    v25->_salientContentRectangle.size.width = width;
    v25->_salientContentRectangle.size.height = height;
    v28 = [v23 copy];
    contentOcclusionRectangles = v25->_contentOcclusionRectangles;
    v25->_contentOcclusionRectangles = v28;
  }

  return v25;
}

+ (id)contextFromSnapshotBundleContextProvider:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [v4 interfaceOrientation];
    v6 = [v4 userInterfaceStyle];
    v7 = [v4 accessibilityContrast];
    [v4 assetSize];
    v9 = v8;
    [v4 assetSize];
    v11 = v10;
    v12 = [v4 snapshotDefinitionIdentifier];
    [v4 salientContentRectangle];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v21 = [PRPosterContentOcclusionRectSet alloc];
    v22 = [v4 contentOcclusionRectangles];

    v23 = [v22 allRects];
    v24 = [(PRPosterContentOcclusionRectSet *)v21 initWithNameToRectMap:v23];

    v25 = [[a1 alloc] initWithInterfaceOrientation:v5 userInterfaceStyle:v6 accessibilityContrast:v7 canvasBounds:v12 snapshotDefinitionIdentifier:v24 salientContentRectangle:0.0 contentOcclusionRectangles:{0.0, v9, v11, v14, v16, v18, v20}];
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

+ (id)contextFromSnapshotDescriptor:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [v4 sceneDescriptor];
    v6 = [v4 output];

    v7 = [v5 interfaceOrientation];
    v8 = [v5 userInterfaceStyle];
    v9 = [v5 accessibilityContrast];
    [v5 canvasBounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = [v6 snapshotDefinitionIdentifier];
    [v5 salientContentRectangle];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v27 = [PRPosterContentOcclusionRectSet alloc];
    v28 = [v5 contentOcclusionRectangles];
    v29 = [v28 allRects];
    v30 = [(PRPosterContentOcclusionRectSet *)v27 initWithNameToRectMap:v29];

    v31 = [[a1 alloc] initWithInterfaceOrientation:v7 userInterfaceStyle:v8 accessibilityContrast:v9 canvasBounds:v18 snapshotDefinitionIdentifier:v30 salientContentRectangle:v11 contentOcclusionRectangles:{v13, v15, v17, v20, v22, v24, v26}];
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = self;
  interfaceOrientation = v3->_interfaceOrientation;
  userInterfaceStyle = v3->_userInterfaceStyle;
  accessibilityContrast = v3->_accessibilityContrast;
  snapshotDefinitionIdentifier = v3->_snapshotDefinitionIdentifier;
  contentOcclusionRectangles = v3->_contentOcclusionRectangles;
  x = v3->_canvasBounds.origin.x;
  y = v3->_canvasBounds.origin.y;
  width = v3->_canvasBounds.size.width;
  height = v3->_canvasBounds.size.height;
  v13 = v3->_salientContentRectangle.origin.x;
  v14 = v3->_salientContentRectangle.origin.y;
  v15 = v3->_salientContentRectangle.size.width;
  v16 = v3->_salientContentRectangle.size.height;

  return [(PRPosterSnapshotContext *)v3 initWithInterfaceOrientation:interfaceOrientation userInterfaceStyle:userInterfaceStyle accessibilityContrast:accessibilityContrast canvasBounds:snapshotDefinitionIdentifier snapshotDefinitionIdentifier:contentOcclusionRectangles salientContentRectangle:x contentOcclusionRectangles:y, width, height, v13, v14, v15, v16];
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [v3 appendInteger:self->_interfaceOrientation];
  v5 = [v3 appendInteger:self->_userInterfaceStyle];
  v6 = [v3 appendInteger:self->_accessibilityContrast];
  v7 = [v3 appendCGRect:{self->_canvasBounds.origin.x, self->_canvasBounds.origin.y, self->_canvasBounds.size.width, self->_canvasBounds.size.height}];
  v8 = [v3 appendString:self->_snapshotDefinitionIdentifier];
  v9 = [v3 appendCGRect:{self->_salientContentRectangle.origin.x, self->_salientContentRectangle.origin.y, self->_salientContentRectangle.size.width, self->_salientContentRectangle.size.height}];
  v10 = [v3 appendObject:self->_contentOcclusionRectangles];
  v11 = [v3 hash];

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    v5 = NSClassFromString(&cfstr_Prpostersnapsh.isa);
    v6 = v4;
    if (v5)
    {
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    v9 = v7;

    if (v9 && (interfaceOrientation = self->_interfaceOrientation, interfaceOrientation == [(PRPosterSnapshotContext *)v9 interfaceOrientation]) && (userInterfaceStyle = self->_userInterfaceStyle, userInterfaceStyle == [(PRPosterSnapshotContext *)v9 userInterfaceStyle]) && (accessibilityContrast = self->_accessibilityContrast, accessibilityContrast == [(PRPosterSnapshotContext *)v9 accessibilityContrast]) && ([(PRPosterSnapshotContext *)v9 canvasBounds], v25.origin.x = v13, v25.origin.y = v14, v25.size.width = v15, v25.size.height = v16, CGRectEqualToRect(self->_canvasBounds, v25)) && ([(PRPosterSnapshotContext *)v9 snapshotDefinitionIdentifier], v17 = objc_claimAutoreleasedReturnValue(), v18 = BSEqualStrings(), v17, v18) && ([(PRPosterSnapshotContext *)v9 salientContentRectangle], v26.origin.x = v19, v26.origin.y = v20, v26.size.width = v21, v26.size.height = v22, CGRectEqualToRect(self->_salientContentRectangle, v26)))
    {
      v23 = [(PRPosterSnapshotContext *)v9 contentOcclusionRectangles];
      v8 = BSEqualObjects();
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (CGRect)canvasBounds
{
  x = self->_canvasBounds.origin.x;
  y = self->_canvasBounds.origin.y;
  width = self->_canvasBounds.size.width;
  height = self->_canvasBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
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
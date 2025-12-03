@interface PRPosterSnapshotContext
+ (id)contextFromSnapshotBundleContextProvider:(id)provider;
+ (id)contextFromSnapshotDescriptor:(id)descriptor;
- (BOOL)isEqual:(id)equal;
- (CGRect)canvasBounds;
- (CGRect)salientContentRectangle;
- (PRPosterSnapshotContext)initWithInterfaceOrientation:(int64_t)orientation userInterfaceStyle:(int64_t)style accessibilityContrast:(int64_t)contrast canvasBounds:(CGRect)bounds snapshotDefinitionIdentifier:(id)identifier salientContentRectangle:(CGRect)rectangle contentOcclusionRectangles:(id)rectangles;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation PRPosterSnapshotContext

- (PRPosterSnapshotContext)initWithInterfaceOrientation:(int64_t)orientation userInterfaceStyle:(int64_t)style accessibilityContrast:(int64_t)contrast canvasBounds:(CGRect)bounds snapshotDefinitionIdentifier:(id)identifier salientContentRectangle:(CGRect)rectangle contentOcclusionRectangles:(id)rectangles
{
  height = rectangle.size.height;
  width = rectangle.size.width;
  y = rectangle.origin.y;
  x = rectangle.origin.x;
  v14 = bounds.size.height;
  v15 = bounds.size.width;
  v16 = bounds.origin.y;
  v17 = bounds.origin.x;
  identifierCopy = identifier;
  rectanglesCopy = rectangles;
  v31.receiver = self;
  v31.super_class = PRPosterSnapshotContext;
  v24 = [(PRPosterSnapshotContext *)&v31 init];
  v25 = v24;
  if (v24)
  {
    v24->_interfaceOrientation = orientation;
    v24->_userInterfaceStyle = style;
    v24->_accessibilityContrast = contrast;
    v24->_canvasBounds.origin.x = v17;
    v24->_canvasBounds.origin.y = v16;
    v24->_canvasBounds.size.width = v15;
    v24->_canvasBounds.size.height = v14;
    v26 = [identifierCopy copy];
    snapshotDefinitionIdentifier = v25->_snapshotDefinitionIdentifier;
    v25->_snapshotDefinitionIdentifier = v26;

    v25->_salientContentRectangle.origin.x = x;
    v25->_salientContentRectangle.origin.y = y;
    v25->_salientContentRectangle.size.width = width;
    v25->_salientContentRectangle.size.height = height;
    v28 = [rectanglesCopy copy];
    contentOcclusionRectangles = v25->_contentOcclusionRectangles;
    v25->_contentOcclusionRectangles = v28;
  }

  return v25;
}

+ (id)contextFromSnapshotBundleContextProvider:(id)provider
{
  if (provider)
  {
    providerCopy = provider;
    interfaceOrientation = [providerCopy interfaceOrientation];
    userInterfaceStyle = [providerCopy userInterfaceStyle];
    accessibilityContrast = [providerCopy accessibilityContrast];
    [providerCopy assetSize];
    v9 = v8;
    [providerCopy assetSize];
    v11 = v10;
    snapshotDefinitionIdentifier = [providerCopy snapshotDefinitionIdentifier];
    [providerCopy salientContentRectangle];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v21 = [PRPosterContentOcclusionRectSet alloc];
    contentOcclusionRectangles = [providerCopy contentOcclusionRectangles];

    allRects = [contentOcclusionRectangles allRects];
    v24 = [(PRPosterContentOcclusionRectSet *)v21 initWithNameToRectMap:allRects];

    v25 = [[self alloc] initWithInterfaceOrientation:interfaceOrientation userInterfaceStyle:userInterfaceStyle accessibilityContrast:accessibilityContrast canvasBounds:snapshotDefinitionIdentifier snapshotDefinitionIdentifier:v24 salientContentRectangle:0.0 contentOcclusionRectangles:{0.0, v9, v11, v14, v16, v18, v20}];
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

+ (id)contextFromSnapshotDescriptor:(id)descriptor
{
  if (descriptor)
  {
    descriptorCopy = descriptor;
    sceneDescriptor = [descriptorCopy sceneDescriptor];
    output = [descriptorCopy output];

    interfaceOrientation = [sceneDescriptor interfaceOrientation];
    userInterfaceStyle = [sceneDescriptor userInterfaceStyle];
    accessibilityContrast = [sceneDescriptor accessibilityContrast];
    [sceneDescriptor canvasBounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    snapshotDefinitionIdentifier = [output snapshotDefinitionIdentifier];
    [sceneDescriptor salientContentRectangle];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v27 = [PRPosterContentOcclusionRectSet alloc];
    contentOcclusionRectangles = [sceneDescriptor contentOcclusionRectangles];
    allRects = [contentOcclusionRectangles allRects];
    v30 = [(PRPosterContentOcclusionRectSet *)v27 initWithNameToRectMap:allRects];

    v31 = [[self alloc] initWithInterfaceOrientation:interfaceOrientation userInterfaceStyle:userInterfaceStyle accessibilityContrast:accessibilityContrast canvasBounds:snapshotDefinitionIdentifier snapshotDefinitionIdentifier:v30 salientContentRectangle:v11 contentOcclusionRectangles:{v13, v15, v17, v20, v22, v24, v26}];
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  interfaceOrientation = selfCopy->_interfaceOrientation;
  userInterfaceStyle = selfCopy->_userInterfaceStyle;
  accessibilityContrast = selfCopy->_accessibilityContrast;
  snapshotDefinitionIdentifier = selfCopy->_snapshotDefinitionIdentifier;
  contentOcclusionRectangles = selfCopy->_contentOcclusionRectangles;
  x = selfCopy->_canvasBounds.origin.x;
  y = selfCopy->_canvasBounds.origin.y;
  width = selfCopy->_canvasBounds.size.width;
  height = selfCopy->_canvasBounds.size.height;
  v13 = selfCopy->_salientContentRectangle.origin.x;
  v14 = selfCopy->_salientContentRectangle.origin.y;
  v15 = selfCopy->_salientContentRectangle.size.width;
  v16 = selfCopy->_salientContentRectangle.size.height;

  return [(PRPosterSnapshotContext *)selfCopy initWithInterfaceOrientation:interfaceOrientation userInterfaceStyle:userInterfaceStyle accessibilityContrast:accessibilityContrast canvasBounds:snapshotDefinitionIdentifier snapshotDefinitionIdentifier:contentOcclusionRectangles salientContentRectangle:x contentOcclusionRectangles:y, width, height, v13, v14, v15, v16];
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  v4 = [builder appendInteger:self->_interfaceOrientation];
  v5 = [builder appendInteger:self->_userInterfaceStyle];
  v6 = [builder appendInteger:self->_accessibilityContrast];
  v7 = [builder appendCGRect:{self->_canvasBounds.origin.x, self->_canvasBounds.origin.y, self->_canvasBounds.size.width, self->_canvasBounds.size.height}];
  v8 = [builder appendString:self->_snapshotDefinitionIdentifier];
  v9 = [builder appendCGRect:{self->_salientContentRectangle.origin.x, self->_salientContentRectangle.origin.y, self->_salientContentRectangle.size.width, self->_salientContentRectangle.size.height}];
  v10 = [builder appendObject:self->_contentOcclusionRectangles];
  v11 = [builder hash];

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    v5 = NSClassFromString(&cfstr_Prpostersnapsh.isa);
    v6 = equalCopy;
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
      contentOcclusionRectangles = [(PRPosterSnapshotContext *)v9 contentOcclusionRectangles];
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
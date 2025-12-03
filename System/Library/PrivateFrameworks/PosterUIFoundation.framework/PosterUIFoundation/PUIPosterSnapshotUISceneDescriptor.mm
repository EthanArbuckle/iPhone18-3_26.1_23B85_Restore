@interface PUIPosterSnapshotUISceneDescriptor
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSceneDescriptor:(id)descriptor;
- (CGRect)canvasBounds;
- (CGRect)salientContentRectangle;
- (NSString)description;
- (PUIPosterSnapshotUISceneDescriptor)init;
- (PUIPosterSnapshotUISceneDescriptor)initWithBSXPCCoder:(id)coder;
- (PUIPosterSnapshotUISceneDescriptor)initWithCoder:(id)coder;
- (PUIPosterSnapshotUISceneDescriptor)initWithDisplayConfiguration:(id)configuration;
- (PUIPosterSnapshotUISceneDescriptor)initWithDisplayConfiguration:(id)configuration canvasBounds:(CGRect)bounds interfaceOrientation:(int64_t)orientation deviceOrientation:(int64_t)deviceOrientation userInterfaceStyle:(int64_t)style accessibilityContrast:(int64_t)contrast salientContentRectangle:(CGRect)rectangle contentOcclusionRectangles:(id)self0;
- (id)copyWithAccessibilityContrast:(int64_t)contrast;
- (id)copyWithCanvasBounds:(CGRect)bounds;
- (id)copyWithContentOcclusionRectangles:(id)rectangles;
- (id)copyWithInterfaceOrientation:(int64_t)orientation deviceOrientation:(int64_t)deviceOrientation;
- (id)copyWithSalientContentRectangle:(CGRect)rectangle;
- (id)copyWithUserInterfaceStyle:(int64_t)style;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PUIPosterSnapshotUISceneDescriptor

- (PUIPosterSnapshotUISceneDescriptor)init
{
  pui_sharedDisplayMonitor = [MEMORY[0x1E699FB10] pui_sharedDisplayMonitor];
  mainConfiguration = [pui_sharedDisplayMonitor mainConfiguration];
  v5 = [(PUIPosterSnapshotUISceneDescriptor *)self initWithDisplayConfiguration:mainConfiguration];

  return v5;
}

- (PUIPosterSnapshotUISceneDescriptor)initWithDisplayConfiguration:(id)configuration
{
  configurationCopy = configuration;
  [configurationCopy bounds];
  v5 = [PUIPosterSnapshotUISceneDescriptor initWithDisplayConfiguration:"initWithDisplayConfiguration:canvasBounds:interfaceOrientation:deviceOrientation:userInterfaceStyle:accessibilityContrast:salientContentRectangle:contentOcclusionRectangles:" canvasBounds:configurationCopy interfaceOrientation:0 deviceOrientation:0 userInterfaceStyle:0 accessibilityContrast:-1 salientContentRectangle:0 contentOcclusionRectangles:?];

  return v5;
}

- (PUIPosterSnapshotUISceneDescriptor)initWithDisplayConfiguration:(id)configuration canvasBounds:(CGRect)bounds interfaceOrientation:(int64_t)orientation deviceOrientation:(int64_t)deviceOrientation userInterfaceStyle:(int64_t)style accessibilityContrast:(int64_t)contrast salientContentRectangle:(CGRect)rectangle contentOcclusionRectangles:(id)self0
{
  height = rectangle.size.height;
  width = rectangle.size.width;
  y = rectangle.origin.y;
  x = rectangle.origin.x;
  v19 = bounds.size.height;
  v20 = bounds.size.width;
  v21 = bounds.origin.y;
  v22 = bounds.origin.x;
  configurationCopy = configuration;
  rectanglesCopy = rectangles;
  if (!configurationCopy)
  {
    [PUIPosterSnapshotUISceneDescriptor initWithDisplayConfiguration:a2 canvasBounds:? interfaceOrientation:? deviceOrientation:? userInterfaceStyle:? accessibilityContrast:? salientContentRectangle:? contentOcclusionRectangles:?];
  }

  if (v20 <= 0.0)
  {
    [PUIPosterSnapshotUISceneDescriptor initWithDisplayConfiguration:a2 canvasBounds:? interfaceOrientation:? deviceOrientation:? userInterfaceStyle:? accessibilityContrast:? salientContentRectangle:? contentOcclusionRectangles:?];
  }

  if (v19 <= 0.0)
  {
    [PUIPosterSnapshotUISceneDescriptor initWithDisplayConfiguration:a2 canvasBounds:? interfaceOrientation:? deviceOrientation:? userInterfaceStyle:? accessibilityContrast:? salientContentRectangle:? contentOcclusionRectangles:?];
  }

  v27 = rectanglesCopy;
  v35.receiver = self;
  v35.super_class = PUIPosterSnapshotUISceneDescriptor;
  v28 = [(PUIPosterSnapshotUISceneDescriptor *)&v35 init];
  v29 = v28;
  if (v28)
  {
    v28->_userInterfaceStyle = style;
    v28->_interfaceOrientation = orientation;
    v28->_deviceOrientation = deviceOrientation;
    v28->_accessibilityContrast = contrast;
    v30 = [configurationCopy copy];
    displayConfiguration = v29->_displayConfiguration;
    v29->_displayConfiguration = v30;

    v29->_canvasBounds.origin.x = v22;
    v29->_canvasBounds.origin.y = v21;
    v29->_canvasBounds.size.width = v20;
    v29->_canvasBounds.size.height = v19;
    v29->_salientContentRectangle.origin.x = x;
    v29->_salientContentRectangle.origin.y = y;
    v29->_salientContentRectangle.size.width = width;
    v29->_salientContentRectangle.size.height = height;
    v32 = [v27 copy];
    contentOcclusionRectangles = v29->_contentOcclusionRectangles;
    v29->_contentOcclusionRectangles = v32;
  }

  return v29;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy)
  {
    v6 = equalCopy == self || [(PUIPosterSnapshotUISceneDescriptor *)self isEqualToSceneDescriptor:equalCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqualToSceneDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v5 = descriptorCopy;
  if (self == descriptorCopy)
  {
    v30 = 1;
  }

  else if (descriptorCopy)
  {
    v6 = MEMORY[0x1E698E6A0];
    v7 = objc_opt_self();
    v8 = [v6 builderWithObject:v5 ofExpectedClass:v7];

    displayConfiguration = [(PUIPosterSnapshotUISceneDescriptor *)self displayConfiguration];
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __63__PUIPosterSnapshotUISceneDescriptor_isEqualToSceneDescriptor___block_invoke;
    v49[3] = &unk_1E7856300;
    v10 = v5;
    v50 = v10;
    v11 = [v8 appendObject:displayConfiguration counterpart:v49];

    interfaceOrientation = self->_interfaceOrientation;
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __63__PUIPosterSnapshotUISceneDescriptor_isEqualToSceneDescriptor___block_invoke_2;
    v47[3] = &unk_1E7856328;
    v13 = v10;
    v48 = v13;
    v14 = [v8 appendUnsignedInteger:interfaceOrientation counterpart:v47];
    deviceOrientation = self->_deviceOrientation;
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __63__PUIPosterSnapshotUISceneDescriptor_isEqualToSceneDescriptor___block_invoke_3;
    v45[3] = &unk_1E7856328;
    v16 = v13;
    v46 = v16;
    v17 = [v8 appendUnsignedInteger:deviceOrientation counterpart:v45];
    userInterfaceStyle = self->_userInterfaceStyle;
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __63__PUIPosterSnapshotUISceneDescriptor_isEqualToSceneDescriptor___block_invoke_4;
    v43[3] = &unk_1E7856328;
    v19 = v16;
    v44 = v19;
    v20 = [v8 appendUnsignedInteger:userInterfaceStyle counterpart:v43];
    accessibilityContrast = self->_accessibilityContrast;
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __63__PUIPosterSnapshotUISceneDescriptor_isEqualToSceneDescriptor___block_invoke_5;
    v41[3] = &unk_1E7856328;
    v22 = v19;
    v42 = v22;
    v23 = [v8 appendUnsignedInteger:accessibilityContrast counterpart:v41];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __63__PUIPosterSnapshotUISceneDescriptor_isEqualToSceneDescriptor___block_invoke_6;
    v39[3] = &unk_1E7856350;
    v24 = v22;
    v40 = v24;
    v25 = [v8 appendCGRect:v39 counterpart:{self->_canvasBounds.origin.x, self->_canvasBounds.origin.y, self->_canvasBounds.size.width, self->_canvasBounds.size.height}];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __63__PUIPosterSnapshotUISceneDescriptor_isEqualToSceneDescriptor___block_invoke_7;
    v37[3] = &unk_1E7856350;
    v26 = v24;
    v38 = v26;
    v27 = [v8 appendCGRect:v37 counterpart:{self->_salientContentRectangle.origin.x, self->_salientContentRectangle.origin.y, self->_salientContentRectangle.size.width, self->_salientContentRectangle.size.height}];
    contentOcclusionRectangles = [(PUIPosterSnapshotUISceneDescriptor *)self contentOcclusionRectangles];
    v32 = MEMORY[0x1E69E9820];
    v33 = 3221225472;
    v34 = __63__PUIPosterSnapshotUISceneDescriptor_isEqualToSceneDescriptor___block_invoke_8;
    v35 = &unk_1E7856300;
    v36 = v26;
    v29 = [v8 appendObject:contentOcclusionRectangles counterpart:&v32];

    v30 = [v8 isEqual];
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

- (id)copyWithInterfaceOrientation:(int64_t)orientation deviceOrientation:(int64_t)deviceOrientation
{
  if ([(PUIPosterSnapshotUISceneDescriptor *)self interfaceOrientation]== orientation && [(PUIPosterSnapshotUISceneDescriptor *)self deviceOrientation]== deviceOrientation)
  {

    return self;
  }

  else
  {
    v7 = objc_alloc(objc_opt_class());
    userInterfaceStyle = self->_userInterfaceStyle;
    accessibilityContrast = self->_accessibilityContrast;
    displayConfiguration = self->_displayConfiguration;
    contentOcclusionRectangles = self->_contentOcclusionRectangles;
    x = self->_canvasBounds.origin.x;
    y = self->_canvasBounds.origin.y;
    width = self->_canvasBounds.size.width;
    height = self->_canvasBounds.size.height;
    v16 = self->_salientContentRectangle.origin.x;
    v17 = self->_salientContentRectangle.origin.y;
    v18 = self->_salientContentRectangle.size.width;
    v19 = self->_salientContentRectangle.size.height;

    return [v7 initWithDisplayConfiguration:displayConfiguration canvasBounds:orientation interfaceOrientation:deviceOrientation deviceOrientation:userInterfaceStyle userInterfaceStyle:accessibilityContrast accessibilityContrast:contentOcclusionRectangles salientContentRectangle:x contentOcclusionRectangles:{y, width, height, v16, v17, v18, v19}];
  }
}

- (id)copyWithUserInterfaceStyle:(int64_t)style
{
  if ([(PUIPosterSnapshotUISceneDescriptor *)self userInterfaceStyle]== style)
  {

    return self;
  }

  else
  {
    v5 = objc_alloc(objc_opt_class());
    interfaceOrientation = self->_interfaceOrientation;
    deviceOrientation = self->_deviceOrientation;
    accessibilityContrast = self->_accessibilityContrast;
    displayConfiguration = self->_displayConfiguration;
    contentOcclusionRectangles = self->_contentOcclusionRectangles;
    x = self->_canvasBounds.origin.x;
    y = self->_canvasBounds.origin.y;
    width = self->_canvasBounds.size.width;
    height = self->_canvasBounds.size.height;
    v15 = self->_salientContentRectangle.origin.x;
    v16 = self->_salientContentRectangle.origin.y;
    v17 = self->_salientContentRectangle.size.width;
    v18 = self->_salientContentRectangle.size.height;

    return [v5 initWithDisplayConfiguration:displayConfiguration canvasBounds:interfaceOrientation interfaceOrientation:deviceOrientation deviceOrientation:style userInterfaceStyle:accessibilityContrast accessibilityContrast:contentOcclusionRectangles salientContentRectangle:x contentOcclusionRectangles:{y, width, height, v15, v16, v17, v18}];
  }
}

- (id)copyWithAccessibilityContrast:(int64_t)contrast
{
  if ([(PUIPosterSnapshotUISceneDescriptor *)self accessibilityContrast]== contrast)
  {

    return self;
  }

  else
  {
    v5 = objc_alloc(objc_opt_class());
    interfaceOrientation = self->_interfaceOrientation;
    deviceOrientation = self->_deviceOrientation;
    userInterfaceStyle = self->_userInterfaceStyle;
    displayConfiguration = self->_displayConfiguration;
    contentOcclusionRectangles = self->_contentOcclusionRectangles;
    x = self->_canvasBounds.origin.x;
    y = self->_canvasBounds.origin.y;
    width = self->_canvasBounds.size.width;
    height = self->_canvasBounds.size.height;
    v15 = self->_salientContentRectangle.origin.x;
    v16 = self->_salientContentRectangle.origin.y;
    v17 = self->_salientContentRectangle.size.width;
    v18 = self->_salientContentRectangle.size.height;

    return [v5 initWithDisplayConfiguration:displayConfiguration canvasBounds:interfaceOrientation interfaceOrientation:deviceOrientation deviceOrientation:userInterfaceStyle userInterfaceStyle:contrast accessibilityContrast:contentOcclusionRectangles salientContentRectangle:x contentOcclusionRectangles:{y, width, height, v15, v16, v17, v18}];
  }
}

- (id)copyWithCanvasBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(PUIPosterSnapshotUISceneDescriptor *)self canvasBounds];
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  if (CGRectEqualToRect(v25, v26))
  {

    return self;
  }

  else
  {
    v8 = objc_alloc(objc_opt_class());
    userInterfaceStyle = self->_userInterfaceStyle;
    interfaceOrientation = self->_interfaceOrientation;
    deviceOrientation = self->_deviceOrientation;
    accessibilityContrast = self->_accessibilityContrast;
    displayConfiguration = self->_displayConfiguration;
    contentOcclusionRectangles = self->_contentOcclusionRectangles;
    v15 = self->_canvasBounds.origin.x;
    v16 = self->_canvasBounds.origin.y;
    v17 = self->_canvasBounds.size.width;
    v18 = self->_canvasBounds.size.height;
    v19 = self->_salientContentRectangle.origin.x;
    v20 = self->_salientContentRectangle.origin.y;
    v21 = self->_salientContentRectangle.size.width;
    v22 = self->_salientContentRectangle.size.height;

    return [v8 initWithDisplayConfiguration:displayConfiguration canvasBounds:interfaceOrientation interfaceOrientation:deviceOrientation deviceOrientation:userInterfaceStyle userInterfaceStyle:accessibilityContrast accessibilityContrast:contentOcclusionRectangles salientContentRectangle:v15 contentOcclusionRectangles:{v16, v17, v18, v19, v20, v21, v22}];
  }
}

- (id)copyWithSalientContentRectangle:(CGRect)rectangle
{
  height = rectangle.size.height;
  width = rectangle.size.width;
  y = rectangle.origin.y;
  x = rectangle.origin.x;
  [(PUIPosterSnapshotUISceneDescriptor *)self salientContentRectangle];
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  if (CGRectEqualToRect(v21, v22))
  {

    return self;
  }

  else
  {
    v8 = objc_alloc(objc_opt_class());
    userInterfaceStyle = self->_userInterfaceStyle;
    interfaceOrientation = self->_interfaceOrientation;
    deviceOrientation = self->_deviceOrientation;
    accessibilityContrast = self->_accessibilityContrast;
    displayConfiguration = self->_displayConfiguration;
    contentOcclusionRectangles = self->_contentOcclusionRectangles;
    v15 = self->_canvasBounds.origin.x;
    v16 = self->_canvasBounds.origin.y;
    v17 = self->_canvasBounds.size.width;
    v18 = self->_canvasBounds.size.height;

    return [v8 initWithDisplayConfiguration:displayConfiguration canvasBounds:interfaceOrientation interfaceOrientation:deviceOrientation deviceOrientation:userInterfaceStyle userInterfaceStyle:accessibilityContrast accessibilityContrast:contentOcclusionRectangles salientContentRectangle:v15 contentOcclusionRectangles:{v16, v17, v18, x, y, width, height}];
  }
}

- (id)copyWithContentOcclusionRectangles:(id)rectangles
{
  rectanglesCopy = rectangles;
  contentOcclusionRectangles = [(PUIPosterSnapshotUISceneDescriptor *)self contentOcclusionRectangles];
  v6 = BSEqualObjects();

  if (v6)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [objc_alloc(objc_opt_class()) initWithDisplayConfiguration:self->_displayConfiguration canvasBounds:self->_interfaceOrientation interfaceOrientation:self->_deviceOrientation deviceOrientation:self->_userInterfaceStyle userInterfaceStyle:self->_accessibilityContrast accessibilityContrast:rectanglesCopy salientContentRectangle:self->_canvasBounds.origin.x contentOcclusionRectangles:{self->_canvasBounds.origin.y, self->_canvasBounds.size.width, self->_canvasBounds.size.height, self->_salientContentRectangle.origin.x, self->_salientContentRectangle.origin.y, self->_salientContentRectangle.size.width, self->_salientContentRectangle.size.height}];
  }

  v8 = selfCopy;

  return v8;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendObject:self->_displayConfiguration withName:@"_displayConfiguration"];
  [(FBSDisplayConfiguration *)self->_displayConfiguration bounds];
  if (!CGRectEqualToRect(v13, self->_canvasBounds))
  {
    v5 = [v3 appendRect:@"_canvasBounds" withName:{self->_canvasBounds.origin.x, self->_canvasBounds.origin.y, self->_canvasBounds.size.width, self->_canvasBounds.size.height}];
  }

  v6 = [v3 appendInteger:self->_accessibilityContrast withName:@"_accessibilityContrast"];
  v7 = [v3 appendInteger:self->_interfaceOrientation withName:@"interfaceOrientation"];
  v8 = [v3 appendInteger:self->_deviceOrientation withName:@"deviceOrientation"];
  v9 = [v3 appendInteger:self->_userInterfaceStyle withName:@"userInterfaceStyle"];
  build = [v3 build];

  return build;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  v4 = [builder appendInteger:self->_accessibilityContrast];
  v5 = [builder appendInteger:self->_interfaceOrientation];
  v6 = [builder appendInteger:self->_deviceOrientation];
  v7 = [builder appendInteger:self->_userInterfaceStyle];
  v8 = [builder appendObject:self->_displayConfiguration];
  v9 = [builder appendCGRect:{self->_canvasBounds.origin.x, self->_canvasBounds.origin.y, self->_canvasBounds.size.width, self->_canvasBounds.size.height}];
  v10 = [builder hash];

  return v10;
}

- (PUIPosterSnapshotUISceneDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_displayConfiguration"];
  [coderCopy decodeCGRectForKey:@"_canvasBounds"];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [coderCopy decodeInt64ForKey:@"_accessibilityContrast"];
  v15 = [coderCopy decodeInt64ForKey:@"_interfaceOrientation"];
  v16 = [coderCopy decodeInt64ForKey:@"_deviceOrientation"];
  v17 = [coderCopy decodeInt64ForKey:@"_userInterfaceStyle"];
  [coderCopy decodeCGRectForKey:@"_salientContentRectangle"];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_contentOcclusionRectangles"];

  v27 = [(PUIPosterSnapshotUISceneDescriptor *)self initWithDisplayConfiguration:v5 canvasBounds:v15 interfaceOrientation:v16 deviceOrientation:v17 userInterfaceStyle:v14 accessibilityContrast:v26 salientContentRectangle:v7 contentOcclusionRectangles:v9, v11, v13, v19, v21, v23, v25];
  return v27;
}

- (void)encodeWithCoder:(id)coder
{
  accessibilityContrast = self->_accessibilityContrast;
  coderCopy = coder;
  [coderCopy encodeInt64:accessibilityContrast forKey:@"_accessibilityContrast"];
  [coderCopy encodeInt64:self->_interfaceOrientation forKey:@"_interfaceOrientation"];
  [coderCopy encodeInt64:self->_deviceOrientation forKey:@"_deviceOrientation"];
  [coderCopy encodeInt64:self->_userInterfaceStyle forKey:@"_userInterfaceStyle"];
  [coderCopy encodeObject:self->_displayConfiguration forKey:@"_displayConfiguration"];
  [coderCopy encodeCGRect:@"_canvasBounds" forKey:{self->_canvasBounds.origin.x, self->_canvasBounds.origin.y, self->_canvasBounds.size.width, self->_canvasBounds.size.height}];
  [coderCopy encodeCGRect:@"_salientContentRectangle" forKey:{self->_salientContentRectangle.origin.x, self->_salientContentRectangle.origin.y, self->_salientContentRectangle.size.width, self->_salientContentRectangle.size.height}];
  [coderCopy encodeObject:self->_contentOcclusionRectangles forKey:@"_contentOcclusionRectangles"];
}

- (PUIPosterSnapshotUISceneDescriptor)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_displayConfiguration"];
  [coderCopy decodeCGRectForKey:@"_canvasBounds"];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [coderCopy decodeInt64ForKey:@"_accessibilityContrast"];
  v15 = [coderCopy decodeInt64ForKey:@"_interfaceOrientation"];
  v16 = [coderCopy decodeInt64ForKey:@"_deviceOrientation"];
  v17 = [coderCopy decodeInt64ForKey:@"_userInterfaceStyle"];
  [coderCopy decodeCGRectForKey:@"_salientContentRectangle"];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_contentOcclusionRectangles"];

  v27 = [(PUIPosterSnapshotUISceneDescriptor *)self initWithDisplayConfiguration:v5 canvasBounds:v15 interfaceOrientation:v16 deviceOrientation:v17 userInterfaceStyle:v14 accessibilityContrast:v26 salientContentRectangle:v7 contentOcclusionRectangles:v9, v11, v13, v19, v21, v23, v25];
  return v27;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  accessibilityContrast = self->_accessibilityContrast;
  coderCopy = coder;
  [coderCopy encodeInt64:accessibilityContrast forKey:@"_accessibilityContrast"];
  [coderCopy encodeInt64:self->_interfaceOrientation forKey:@"_interfaceOrientation"];
  [coderCopy encodeInt64:self->_deviceOrientation forKey:@"_deviceOrientation"];
  [coderCopy encodeInt64:self->_userInterfaceStyle forKey:@"_userInterfaceStyle"];
  [coderCopy encodeObject:self->_displayConfiguration forKey:@"_displayConfiguration"];
  [coderCopy encodeCGRect:@"_canvasBounds" forKey:{self->_canvasBounds.origin.x, self->_canvasBounds.origin.y, self->_canvasBounds.size.width, self->_canvasBounds.size.height}];
  [coderCopy encodeCGRect:@"_salientContentRectangle" forKey:{self->_salientContentRectangle.origin.x, self->_salientContentRectangle.origin.y, self->_salientContentRectangle.size.width, self->_salientContentRectangle.size.height}];
  [coderCopy encodeObject:self->_contentOcclusionRectangles forKey:@"_contentOcclusionRectangles"];
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

- (void)initWithDisplayConfiguration:(char *)a1 canvasBounds:interfaceOrientation:deviceOrientation:userInterfaceStyle:accessibilityContrast:salientContentRectangle:contentOcclusionRectangles:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"canvasBounds.size.height > 0", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithDisplayConfiguration:(char *)a1 canvasBounds:interfaceOrientation:deviceOrientation:userInterfaceStyle:accessibilityContrast:salientContentRectangle:contentOcclusionRectangles:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"canvasBounds.size.width > 0", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithDisplayConfiguration:(char *)a1 canvasBounds:interfaceOrientation:deviceOrientation:userInterfaceStyle:accessibilityContrast:salientContentRectangle:contentOcclusionRectangles:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"displayConfiguration", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end
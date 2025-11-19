@interface PUIPosterSnapshotUISceneDescriptor
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSceneDescriptor:(id)a3;
- (CGRect)canvasBounds;
- (CGRect)salientContentRectangle;
- (NSString)description;
- (PUIPosterSnapshotUISceneDescriptor)init;
- (PUIPosterSnapshotUISceneDescriptor)initWithBSXPCCoder:(id)a3;
- (PUIPosterSnapshotUISceneDescriptor)initWithCoder:(id)a3;
- (PUIPosterSnapshotUISceneDescriptor)initWithDisplayConfiguration:(id)a3;
- (PUIPosterSnapshotUISceneDescriptor)initWithDisplayConfiguration:(id)a3 canvasBounds:(CGRect)a4 interfaceOrientation:(int64_t)a5 deviceOrientation:(int64_t)a6 userInterfaceStyle:(int64_t)a7 accessibilityContrast:(int64_t)a8 salientContentRectangle:(CGRect)a9 contentOcclusionRectangles:(id)a10;
- (id)copyWithAccessibilityContrast:(int64_t)a3;
- (id)copyWithCanvasBounds:(CGRect)a3;
- (id)copyWithContentOcclusionRectangles:(id)a3;
- (id)copyWithInterfaceOrientation:(int64_t)a3 deviceOrientation:(int64_t)a4;
- (id)copyWithSalientContentRectangle:(CGRect)a3;
- (id)copyWithUserInterfaceStyle:(int64_t)a3;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PUIPosterSnapshotUISceneDescriptor

- (PUIPosterSnapshotUISceneDescriptor)init
{
  v3 = [MEMORY[0x1E699FB10] pui_sharedDisplayMonitor];
  v4 = [v3 mainConfiguration];
  v5 = [(PUIPosterSnapshotUISceneDescriptor *)self initWithDisplayConfiguration:v4];

  return v5;
}

- (PUIPosterSnapshotUISceneDescriptor)initWithDisplayConfiguration:(id)a3
{
  v4 = a3;
  [v4 bounds];
  v5 = [PUIPosterSnapshotUISceneDescriptor initWithDisplayConfiguration:"initWithDisplayConfiguration:canvasBounds:interfaceOrientation:deviceOrientation:userInterfaceStyle:accessibilityContrast:salientContentRectangle:contentOcclusionRectangles:" canvasBounds:v4 interfaceOrientation:0 deviceOrientation:0 userInterfaceStyle:0 accessibilityContrast:-1 salientContentRectangle:0 contentOcclusionRectangles:?];

  return v5;
}

- (PUIPosterSnapshotUISceneDescriptor)initWithDisplayConfiguration:(id)a3 canvasBounds:(CGRect)a4 interfaceOrientation:(int64_t)a5 deviceOrientation:(int64_t)a6 userInterfaceStyle:(int64_t)a7 accessibilityContrast:(int64_t)a8 salientContentRectangle:(CGRect)a9 contentOcclusionRectangles:(id)a10
{
  height = a9.size.height;
  width = a9.size.width;
  y = a9.origin.y;
  x = a9.origin.x;
  v19 = a4.size.height;
  v20 = a4.size.width;
  v21 = a4.origin.y;
  v22 = a4.origin.x;
  v25 = a3;
  v26 = a10;
  if (!v25)
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

  v27 = v26;
  v35.receiver = self;
  v35.super_class = PUIPosterSnapshotUISceneDescriptor;
  v28 = [(PUIPosterSnapshotUISceneDescriptor *)&v35 init];
  v29 = v28;
  if (v28)
  {
    v28->_userInterfaceStyle = a7;
    v28->_interfaceOrientation = a5;
    v28->_deviceOrientation = a6;
    v28->_accessibilityContrast = a8;
    v30 = [v25 copy];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = v4 == self || [(PUIPosterSnapshotUISceneDescriptor *)self isEqualToSceneDescriptor:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqualToSceneDescriptor:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v30 = 1;
  }

  else if (v4)
  {
    v6 = MEMORY[0x1E698E6A0];
    v7 = objc_opt_self();
    v8 = [v6 builderWithObject:v5 ofExpectedClass:v7];

    v9 = [(PUIPosterSnapshotUISceneDescriptor *)self displayConfiguration];
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __63__PUIPosterSnapshotUISceneDescriptor_isEqualToSceneDescriptor___block_invoke;
    v49[3] = &unk_1E7856300;
    v10 = v5;
    v50 = v10;
    v11 = [v8 appendObject:v9 counterpart:v49];

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
    v28 = [(PUIPosterSnapshotUISceneDescriptor *)self contentOcclusionRectangles];
    v32 = MEMORY[0x1E69E9820];
    v33 = 3221225472;
    v34 = __63__PUIPosterSnapshotUISceneDescriptor_isEqualToSceneDescriptor___block_invoke_8;
    v35 = &unk_1E7856300;
    v36 = v26;
    v29 = [v8 appendObject:v28 counterpart:&v32];

    v30 = [v8 isEqual];
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

- (id)copyWithInterfaceOrientation:(int64_t)a3 deviceOrientation:(int64_t)a4
{
  if ([(PUIPosterSnapshotUISceneDescriptor *)self interfaceOrientation]== a3 && [(PUIPosterSnapshotUISceneDescriptor *)self deviceOrientation]== a4)
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

    return [v7 initWithDisplayConfiguration:displayConfiguration canvasBounds:a3 interfaceOrientation:a4 deviceOrientation:userInterfaceStyle userInterfaceStyle:accessibilityContrast accessibilityContrast:contentOcclusionRectangles salientContentRectangle:x contentOcclusionRectangles:{y, width, height, v16, v17, v18, v19}];
  }
}

- (id)copyWithUserInterfaceStyle:(int64_t)a3
{
  if ([(PUIPosterSnapshotUISceneDescriptor *)self userInterfaceStyle]== a3)
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

    return [v5 initWithDisplayConfiguration:displayConfiguration canvasBounds:interfaceOrientation interfaceOrientation:deviceOrientation deviceOrientation:a3 userInterfaceStyle:accessibilityContrast accessibilityContrast:contentOcclusionRectangles salientContentRectangle:x contentOcclusionRectangles:{y, width, height, v15, v16, v17, v18}];
  }
}

- (id)copyWithAccessibilityContrast:(int64_t)a3
{
  if ([(PUIPosterSnapshotUISceneDescriptor *)self accessibilityContrast]== a3)
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

    return [v5 initWithDisplayConfiguration:displayConfiguration canvasBounds:interfaceOrientation interfaceOrientation:deviceOrientation deviceOrientation:userInterfaceStyle userInterfaceStyle:a3 accessibilityContrast:contentOcclusionRectangles salientContentRectangle:x contentOcclusionRectangles:{y, width, height, v15, v16, v17, v18}];
  }
}

- (id)copyWithCanvasBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (id)copyWithSalientContentRectangle:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (id)copyWithContentOcclusionRectangles:(id)a3
{
  v4 = a3;
  v5 = [(PUIPosterSnapshotUISceneDescriptor *)self contentOcclusionRectangles];
  v6 = BSEqualObjects();

  if (v6)
  {
    v7 = self;
  }

  else
  {
    v7 = [objc_alloc(objc_opt_class()) initWithDisplayConfiguration:self->_displayConfiguration canvasBounds:self->_interfaceOrientation interfaceOrientation:self->_deviceOrientation deviceOrientation:self->_userInterfaceStyle userInterfaceStyle:self->_accessibilityContrast accessibilityContrast:v4 salientContentRectangle:self->_canvasBounds.origin.x contentOcclusionRectangles:{self->_canvasBounds.origin.y, self->_canvasBounds.size.width, self->_canvasBounds.size.height, self->_salientContentRectangle.origin.x, self->_salientContentRectangle.origin.y, self->_salientContentRectangle.size.width, self->_salientContentRectangle.size.height}];
  }

  v8 = v7;

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
  v10 = [v3 build];

  return v10;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [v3 appendInteger:self->_accessibilityContrast];
  v5 = [v3 appendInteger:self->_interfaceOrientation];
  v6 = [v3 appendInteger:self->_deviceOrientation];
  v7 = [v3 appendInteger:self->_userInterfaceStyle];
  v8 = [v3 appendObject:self->_displayConfiguration];
  v9 = [v3 appendCGRect:{self->_canvasBounds.origin.x, self->_canvasBounds.origin.y, self->_canvasBounds.size.width, self->_canvasBounds.size.height}];
  v10 = [v3 hash];

  return v10;
}

- (PUIPosterSnapshotUISceneDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_displayConfiguration"];
  [v4 decodeCGRectForKey:@"_canvasBounds"];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [v4 decodeInt64ForKey:@"_accessibilityContrast"];
  v15 = [v4 decodeInt64ForKey:@"_interfaceOrientation"];
  v16 = [v4 decodeInt64ForKey:@"_deviceOrientation"];
  v17 = [v4 decodeInt64ForKey:@"_userInterfaceStyle"];
  [v4 decodeCGRectForKey:@"_salientContentRectangle"];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_contentOcclusionRectangles"];

  v27 = [(PUIPosterSnapshotUISceneDescriptor *)self initWithDisplayConfiguration:v5 canvasBounds:v15 interfaceOrientation:v16 deviceOrientation:v17 userInterfaceStyle:v14 accessibilityContrast:v26 salientContentRectangle:v7 contentOcclusionRectangles:v9, v11, v13, v19, v21, v23, v25];
  return v27;
}

- (void)encodeWithCoder:(id)a3
{
  accessibilityContrast = self->_accessibilityContrast;
  v5 = a3;
  [v5 encodeInt64:accessibilityContrast forKey:@"_accessibilityContrast"];
  [v5 encodeInt64:self->_interfaceOrientation forKey:@"_interfaceOrientation"];
  [v5 encodeInt64:self->_deviceOrientation forKey:@"_deviceOrientation"];
  [v5 encodeInt64:self->_userInterfaceStyle forKey:@"_userInterfaceStyle"];
  [v5 encodeObject:self->_displayConfiguration forKey:@"_displayConfiguration"];
  [v5 encodeCGRect:@"_canvasBounds" forKey:{self->_canvasBounds.origin.x, self->_canvasBounds.origin.y, self->_canvasBounds.size.width, self->_canvasBounds.size.height}];
  [v5 encodeCGRect:@"_salientContentRectangle" forKey:{self->_salientContentRectangle.origin.x, self->_salientContentRectangle.origin.y, self->_salientContentRectangle.size.width, self->_salientContentRectangle.size.height}];
  [v5 encodeObject:self->_contentOcclusionRectangles forKey:@"_contentOcclusionRectangles"];
}

- (PUIPosterSnapshotUISceneDescriptor)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_displayConfiguration"];
  [v4 decodeCGRectForKey:@"_canvasBounds"];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [v4 decodeInt64ForKey:@"_accessibilityContrast"];
  v15 = [v4 decodeInt64ForKey:@"_interfaceOrientation"];
  v16 = [v4 decodeInt64ForKey:@"_deviceOrientation"];
  v17 = [v4 decodeInt64ForKey:@"_userInterfaceStyle"];
  [v4 decodeCGRectForKey:@"_salientContentRectangle"];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_contentOcclusionRectangles"];

  v27 = [(PUIPosterSnapshotUISceneDescriptor *)self initWithDisplayConfiguration:v5 canvasBounds:v15 interfaceOrientation:v16 deviceOrientation:v17 userInterfaceStyle:v14 accessibilityContrast:v26 salientContentRectangle:v7 contentOcclusionRectangles:v9, v11, v13, v19, v21, v23, v25];
  return v27;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  accessibilityContrast = self->_accessibilityContrast;
  v5 = a3;
  [v5 encodeInt64:accessibilityContrast forKey:@"_accessibilityContrast"];
  [v5 encodeInt64:self->_interfaceOrientation forKey:@"_interfaceOrientation"];
  [v5 encodeInt64:self->_deviceOrientation forKey:@"_deviceOrientation"];
  [v5 encodeInt64:self->_userInterfaceStyle forKey:@"_userInterfaceStyle"];
  [v5 encodeObject:self->_displayConfiguration forKey:@"_displayConfiguration"];
  [v5 encodeCGRect:@"_canvasBounds" forKey:{self->_canvasBounds.origin.x, self->_canvasBounds.origin.y, self->_canvasBounds.size.width, self->_canvasBounds.size.height}];
  [v5 encodeCGRect:@"_salientContentRectangle" forKey:{self->_salientContentRectangle.origin.x, self->_salientContentRectangle.origin.y, self->_salientContentRectangle.size.width, self->_salientContentRectangle.size.height}];
  [v5 encodeObject:self->_contentOcclusionRectangles forKey:@"_contentOcclusionRectangles"];
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
@interface UIWindowSceneGeometry
+ (void)_calculateEffectiveGeometryForWindowScene:(uint64_t)scene;
- (BOOL)isEqual:(id)equal;
- (CGRect)systemFrame;
- (NSString)debugDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (void)appendDescriptionToStream:(id)stream;
@end

@implementation UIWindowSceneGeometry

- (CGRect)systemFrame
{
  x = self->_systemFrame.origin.x;
  y = self->_systemFrame.origin.y;
  width = self->_systemFrame.size.width;
  height = self->_systemFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

+ (void)_calculateEffectiveGeometryForWindowScene:(uint64_t)scene
{
  v2 = a2;
  objc_opt_self();
  v3 = [UIWindowSceneGeometry alloc];
  if (v3 && (v14.receiver = v3, v14.super_class = UIWindowSceneGeometry, (v4 = objc_msgSendSuper2(&v14, sel_init)) != 0))
  {
    v5 = v4;
    v6 = *(MEMORY[0x1E695F050] + 16);
    *(v4 + 40) = *MEMORY[0x1E695F050];
    *(v4 + 56) = v6;
    _coordinateSpace = [v2 _coordinateSpace];
    v8 = v5[2];
    v5[2] = _coordinateSpace;

    v5[3] = [v2 _interfaceOrientation];
    if (_UIInterfaceOrientationLockIsAvailableForScene(v2))
    {
      _FBSScene = [v2 _FBSScene];
      ui_orientationClientSceneComponent = [_FBSScene ui_orientationClientSceneComponent];

      if (ui_orientationClientSceneComponent)
      {
        isInterfaceOrientationLocked = [ui_orientationClientSceneComponent isInterfaceOrientationLocked];
      }

      else
      {
        isInterfaceOrientationLocked = 0;
      }

      *(v5 + 8) = isInterfaceOrientationLocked;
    }

    _effectiveUISettings = [v2 _effectiveUISettings];
    *(v5 + 9) = [_effectiveUISettings inLiveResize];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [UIWindowSceneGeometry alloc];
  if (v4)
  {
    v10.receiver = v4;
    v10.super_class = UIWindowSceneGeometry;
    v5 = [(UIWindowSceneGeometry *)&v10 init];
    v6 = v5;
    if (v5)
    {
      v7 = *(MEMORY[0x1E695F050] + 16);
      *(v5 + 40) = *MEMORY[0x1E695F050];
      *(v5 + 56) = v7;
    }
  }

  else
  {
    v6 = 0;
  }

  origin = self->_systemFrame.origin;
  *(v6 + 56) = self->_systemFrame.size;
  *(v6 + 40) = origin;
  objc_storeStrong(v6 + 2, self->_coordinateSpace);
  *(v6 + 3) = self->_interfaceOrientation;
  v6[8] = self->_interfaceOrientationLocked;
  v6[9] = self->_interactivelyResizing;
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(v23) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      coordinateSpace = [(UIWindowSceneGeometry *)self coordinateSpace];
      [coordinateSpace bounds];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;
      coordinateSpace2 = [(UIWindowSceneGeometry *)v5 coordinateSpace];
      [coordinateSpace2 bounds];
      v27.origin.x = v16;
      v27.origin.y = v17;
      v27.size.width = v18;
      v27.size.height = v19;
      v26.origin.x = v8;
      v26.origin.y = v10;
      v26.size.width = v12;
      v26.size.height = v14;
      v20 = CGRectEqualToRect(v26, v27);

      if (v20 && (v21 = [(UIWindowSceneGeometry *)self interfaceOrientation], v21 == [(UIWindowSceneGeometry *)v5 interfaceOrientation]) && (v22 = [(UIWindowSceneGeometry *)self isInterfaceOrientationLocked], v22 == [(UIWindowSceneGeometry *)v5 isInterfaceOrientationLocked]))
      {
        isInteractivelyResizing = [(UIWindowSceneGeometry *)self isInteractivelyResizing];
        v23 = isInteractivelyResizing ^ [(UIWindowSceneGeometry *)v5 isInteractivelyResizing]^ 1;
      }

      else
      {
        LOBYTE(v23) = 0;
      }
    }

    else
    {
      LOBYTE(v23) = 0;
    }
  }

  return v23;
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  os_variant_has_internal_diagnostics();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51__UIWindowSceneGeometry_appendDescriptionToStream___block_invoke;
  v9[3] = &unk_1E70F35B8;
  v5 = streamCopy;
  v10 = v5;
  selfCopy = self;
  [v5 appendProem:self block:v9];
  if ([v5 hasDebugStyle])
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __51__UIWindowSceneGeometry_appendDescriptionToStream___block_invoke_2;
    v6[3] = &unk_1E70F35B8;
    v7 = v5;
    selfCopy2 = self;
    [v7 appendBodySectionWithName:0 block:v6];
  }
}

uint64_t __51__UIWindowSceneGeometry_appendDescriptionToStream___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) hasSuccinctStyle] & 1) != 0 || (result = objc_msgSend(*(a1 + 32), "hasDebugStyle"), (result & 1) == 0))
  {
    v3 = *(a1 + 32);
    [*(*(a1 + 40) + 16) bounds];
    v4 = [v3 appendRect:@"coordinateSpace.bounds" withName:?];
    v5 = *(a1 + 32);
    [*(a1 + 40) interfaceOrientation];
    v6 = BSInterfaceOrientationDescription();
    [v5 appendString:v6 withName:@"interfaceOrientation"];

    return [*(a1 + 32) appendBool:*(*(a1 + 40) + 9) withName:@"isInteractivelyResizing"];
  }

  return result;
}

id __51__UIWindowSceneGeometry_appendDescriptionToStream___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(*(a1 + 40) + 16) bounds];
  v3 = [v2 appendRect:@"coordinateSpace.bounds" withName:?];
  v4 = *(a1 + 32);
  [*(a1 + 40) interfaceOrientation];
  v5 = BSInterfaceOrientationDescription();
  [v4 appendString:v5 withName:@"interfaceOrientation"];

  v6 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isInterfaceOrientationLocked"), @"isInterfaceOrientationLocked"}];
  return [*(a1 + 32) appendBool:*(*(a1 + 40) + 9) withName:@"isInteractivelyResizing"];
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E698E688];
  debugStyle = [MEMORY[0x1E698E690] debugStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:debugStyle];

  return v5;
}

@end
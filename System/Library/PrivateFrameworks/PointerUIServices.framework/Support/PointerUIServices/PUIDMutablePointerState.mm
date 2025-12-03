@interface PUIDMutablePointerState
- (id)description;
- (void)setClientCoordinateSpaceTransformToDisplay:(CATransform3D *)display;
- (void)setContentMatchMoveSource:(id)source;
- (void)setContentSlipValue:(id)value;
- (void)setDebugRequestingClientString:(id)string;
- (void)setPointerPortalSourceCollection:(id)collection;
- (void)setPointerShape:(id)shape;
- (void)setPointerSlipValue:(id)value;
@end

@implementation PUIDMutablePointerState

- (id)description
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  activeMultilinePrefix = [v3 activeMultilinePrefix];
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_1000265B4;
  v11 = &unk_100048A28;
  v12 = v3;
  selfCopy = self;
  v5 = v3;
  [v5 appendBodySectionWithName:@"PUIDPointerState" multilinePrefix:activeMultilinePrefix block:&v8];

  build = [v5 build];

  return build;
}

- (void)setClientCoordinateSpaceTransformToDisplay:(CATransform3D *)display
{
  v3 = *&display->m11;
  v4 = *&display->m13;
  v5 = *&display->m21;
  *&self->super._clientCoordinateSpaceTransformToDisplay.m23 = *&display->m23;
  *&self->super._clientCoordinateSpaceTransformToDisplay.m21 = v5;
  *&self->super._clientCoordinateSpaceTransformToDisplay.m13 = v4;
  *&self->super._clientCoordinateSpaceTransformToDisplay.m11 = v3;
  v6 = *&display->m31;
  v7 = *&display->m33;
  v8 = *&display->m41;
  *&self->super._clientCoordinateSpaceTransformToDisplay.m43 = *&display->m43;
  *&self->super._clientCoordinateSpaceTransformToDisplay.m41 = v8;
  *&self->super._clientCoordinateSpaceTransformToDisplay.m33 = v7;
  *&self->super._clientCoordinateSpaceTransformToDisplay.m31 = v6;
}

- (void)setContentMatchMoveSource:(id)source
{
  self->super._contentMatchMoveSource = [source copy];

  _objc_release_x1();
}

- (void)setContentSlipValue:(id)value
{
  self->super._contentSlipValue = [value copy];

  _objc_release_x1();
}

- (void)setPointerPortalSourceCollection:(id)collection
{
  self->super._pointerPortalSourceCollection = [collection copy];

  _objc_release_x1();
}

- (void)setPointerShape:(id)shape
{
  self->super._pointerShape = [shape copy];

  _objc_release_x1();
}

- (void)setPointerSlipValue:(id)value
{
  self->super._pointerSlipValue = [value copy];

  _objc_release_x1();
}

- (void)setDebugRequestingClientString:(id)string
{
  self->super._debugRequestingClientString = [string copy];

  _objc_release_x1();
}

@end
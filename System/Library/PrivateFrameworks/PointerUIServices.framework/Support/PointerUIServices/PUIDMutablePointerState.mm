@interface PUIDMutablePointerState
- (id)description;
- (void)setClientCoordinateSpaceTransformToDisplay:(CATransform3D *)a3;
- (void)setContentMatchMoveSource:(id)a3;
- (void)setContentSlipValue:(id)a3;
- (void)setDebugRequestingClientString:(id)a3;
- (void)setPointerPortalSourceCollection:(id)a3;
- (void)setPointerShape:(id)a3;
- (void)setPointerSlipValue:(id)a3;
@end

@implementation PUIDMutablePointerState

- (id)description
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  v4 = [v3 activeMultilinePrefix];
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_1000265B4;
  v11 = &unk_100048A28;
  v12 = v3;
  v13 = self;
  v5 = v3;
  [v5 appendBodySectionWithName:@"PUIDPointerState" multilinePrefix:v4 block:&v8];

  v6 = [v5 build];

  return v6;
}

- (void)setClientCoordinateSpaceTransformToDisplay:(CATransform3D *)a3
{
  v3 = *&a3->m11;
  v4 = *&a3->m13;
  v5 = *&a3->m21;
  *&self->super._clientCoordinateSpaceTransformToDisplay.m23 = *&a3->m23;
  *&self->super._clientCoordinateSpaceTransformToDisplay.m21 = v5;
  *&self->super._clientCoordinateSpaceTransformToDisplay.m13 = v4;
  *&self->super._clientCoordinateSpaceTransformToDisplay.m11 = v3;
  v6 = *&a3->m31;
  v7 = *&a3->m33;
  v8 = *&a3->m41;
  *&self->super._clientCoordinateSpaceTransformToDisplay.m43 = *&a3->m43;
  *&self->super._clientCoordinateSpaceTransformToDisplay.m41 = v8;
  *&self->super._clientCoordinateSpaceTransformToDisplay.m33 = v7;
  *&self->super._clientCoordinateSpaceTransformToDisplay.m31 = v6;
}

- (void)setContentMatchMoveSource:(id)a3
{
  self->super._contentMatchMoveSource = [a3 copy];

  _objc_release_x1();
}

- (void)setContentSlipValue:(id)a3
{
  self->super._contentSlipValue = [a3 copy];

  _objc_release_x1();
}

- (void)setPointerPortalSourceCollection:(id)a3
{
  self->super._pointerPortalSourceCollection = [a3 copy];

  _objc_release_x1();
}

- (void)setPointerShape:(id)a3
{
  self->super._pointerShape = [a3 copy];

  _objc_release_x1();
}

- (void)setPointerSlipValue:(id)a3
{
  self->super._pointerSlipValue = [a3 copy];

  _objc_release_x1();
}

- (void)setDebugRequestingClientString:(id)a3
{
  self->super._debugRequestingClientString = [a3 copy];

  _objc_release_x1();
}

@end
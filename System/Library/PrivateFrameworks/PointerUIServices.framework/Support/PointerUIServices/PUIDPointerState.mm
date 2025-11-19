@interface PUIDPointerState
- (CATransform3D)clientCoordinateSpaceTransformToDisplay;
- (CGPoint)modelPointerReferencePosition;
- (CGRect)contentBounds;
- (PUIDPointerState)init;
- (id)_pointerStateCopyWithClass:(Class)a3;
@end

@implementation PUIDPointerState

- (PUIDPointerState)init
{
  v7.receiver = self;
  v7.super_class = PUIDPointerState;
  result = [(PUIDPointerState *)&v7 init];
  if (result)
  {
    v3 = *&CATransform3DIdentity.m33;
    *&result->_clientCoordinateSpaceTransformToDisplay.m31 = *&CATransform3DIdentity.m31;
    *&result->_clientCoordinateSpaceTransformToDisplay.m33 = v3;
    v4 = *&CATransform3DIdentity.m43;
    *&result->_clientCoordinateSpaceTransformToDisplay.m41 = *&CATransform3DIdentity.m41;
    *&result->_clientCoordinateSpaceTransformToDisplay.m43 = v4;
    v5 = *&CATransform3DIdentity.m13;
    *&result->_clientCoordinateSpaceTransformToDisplay.m11 = *&CATransform3DIdentity.m11;
    *&result->_clientCoordinateSpaceTransformToDisplay.m13 = v5;
    v6 = *&CATransform3DIdentity.m23;
    *&result->_clientCoordinateSpaceTransformToDisplay.m21 = *&CATransform3DIdentity.m21;
    *&result->_clientCoordinateSpaceTransformToDisplay.m23 = v6;
    result->_contentHoverInverseScale = 1.0;
    result->_shakeToFindPointerSizeMultiplier = 1.0;
  }

  return result;
}

- (id)_pointerStateCopyWithClass:(Class)a3
{
  v4 = objc_alloc_init(a3);
  v5 = v4;
  if (v4)
  {
    origin = self->_contentBounds.origin;
    *(v4 + 24) = self->_contentBounds.size;
    *(v4 + 8) = origin;
    v7 = *&self->_clientCoordinateSpaceTransformToDisplay.m33;
    v8 = *&self->_clientCoordinateSpaceTransformToDisplay.m41;
    v9 = *&self->_clientCoordinateSpaceTransformToDisplay.m43;
    *(v4 + 104) = *&self->_clientCoordinateSpaceTransformToDisplay.m31;
    *(v4 + 152) = v9;
    *(v4 + 136) = v8;
    *(v4 + 120) = v7;
    v10 = *&self->_clientCoordinateSpaceTransformToDisplay.m11;
    v11 = *&self->_clientCoordinateSpaceTransformToDisplay.m13;
    v12 = *&self->_clientCoordinateSpaceTransformToDisplay.m21;
    *(v4 + 88) = *&self->_clientCoordinateSpaceTransformToDisplay.m23;
    *(v4 + 72) = v12;
    *(v4 + 56) = v11;
    *(v4 + 40) = v10;
    *(v4 + 21) = *&self->_contentHoverInverseScale;
    v13 = [(PSMatchMoveSource *)self->_contentMatchMoveSource copy];
    v14 = *(v5 + 22);
    *(v5 + 22) = v13;

    v15 = [(NSValue *)self->_contentSlipValue copy];
    v16 = *(v5 + 23);
    *(v5 + 23) = v15;

    *(v5 + 35) = *&self->_shakeToFindPointerSizeMultiplier;
    *(v5 + 12) = self->_modelPointerReferencePosition;
    *(v5 + 26) = self->_overlayEffectStyle;
    *(v5 + 264) = self->_pointerAutoHidden;
    *(v5 + 27) = self->_pointerMaterialLuminance;
    v17 = [(PSPointerPortalSourceCollection *)self->_pointerPortalSourceCollection copy];
    v18 = *(v5 + 28);
    *(v5 + 28) = v17;

    v19 = [(PSPointerShape *)self->_pointerShape copy];
    v20 = *(v5 + 29);
    *(v5 + 29) = v19;

    v21 = [(NSValue *)self->_pointerSlipValue copy];
    v22 = *(v5 + 30);
    *(v5 + 30) = v21;

    v23 = [(NSString *)self->_debugRequestingClientString copy];
    v24 = *(v5 + 31);
    *(v5 + 31) = v23;

    *(v5 + 265) = self->_pointerUnderlayingContent;
    *(v5 + 32) = *&self->_pointerVisualIntensity;
    *(v5 + 266) = self->_pressed;
    *(v5 + 267) = self->_suppressPointerMirroring;
    objc_storeStrong(v5 + 34, self->_accessories);
  }

  return v5;
}

- (CGPoint)modelPointerReferencePosition
{
  x = self->_modelPointerReferencePosition.x;
  y = self->_modelPointerReferencePosition.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)contentBounds
{
  x = self->_contentBounds.origin.x;
  y = self->_contentBounds.origin.y;
  width = self->_contentBounds.size.width;
  height = self->_contentBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CATransform3D)clientCoordinateSpaceTransformToDisplay
{
  v3 = *&self->m44;
  *&retstr->m31 = *&self->m42;
  *&retstr->m33 = v3;
  v4 = *&self[1].m14;
  *&retstr->m41 = *&self[1].m12;
  *&retstr->m43 = v4;
  v5 = *&self->m24;
  *&retstr->m11 = *&self->m22;
  *&retstr->m13 = v5;
  v6 = *&self->m34;
  *&retstr->m21 = *&self->m32;
  *&retstr->m23 = v6;
  return self;
}

@end
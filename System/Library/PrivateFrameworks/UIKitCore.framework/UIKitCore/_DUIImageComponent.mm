@interface _DUIImageComponent
- ($1AB5FA073B851C12C2339EC22442E995)size3D;
- (BOOL)isEqual:(id)equal;
- (CGRect)frame;
- (_DUIImageComponent)initWithCoder:(id)coder;
- (id)createSnapshotViewForPreview:(id)preview;
- (id)description;
- (id)portalView;
- (void)_configurePortalLayer:(id)layer;
- (void)encodeWithCoder:(id)coder;
- (void)setFrame:(CGRect)frame;
@end

@implementation _DUIImageComponent

- (_DUIImageComponent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = _DUIImageComponent;
  v5 = [(_DUIImageComponent *)&v13 init];
  if (v5)
  {
    [coderCopy ui_decodeCAPoint3DForKey:@"origin"];
    v5->_origin.x = v6;
    v5->_origin.y = v7;
    v5->_origin.z = v8;
    [coderCopy decodeUISize3DForKey:@"size"];
    v5->_size.width = v9;
    v5->_size.height = v10;
    v5->_size.depth = v11;
    v5->_ignoresAccessibilityFilters = [coderCopy decodeBoolForKey:@"ignoresAccessibilityFilters"];
    v5->_slotID = [coderCopy decodeInt32ForKey:@"slotID"];
    v5->_renderID = [coderCopy decodeInt64ForKey:@"renderID"];
    v5->_contextID = [coderCopy decodeInt32ForKey:@"contextID"];
    v5->_hidesImage = [coderCopy decodeBoolForKey:@"hidesImage"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  x = self->_origin.x;
  y = self->_origin.y;
  z = self->_origin.z;
  coderCopy = coder;
  [coderCopy ui_encodeCAPoint3D:@"origin" forKey:{x, y, z}];
  [coderCopy encodeUISize3D:@"size" forKey:{self->_size.width, self->_size.height, self->_size.depth}];
  [coderCopy encodeBool:self->_ignoresAccessibilityFilters forKey:@"ignoresAccessibilityFilters"];
  [coderCopy encodeInt32:self->_slotID forKey:@"slotID"];
  [coderCopy encodeInt64:self->_renderID forKey:@"renderID"];
  [coderCopy encodeInt32:self->_contextID forKey:@"contextID"];
  [coderCopy encodeBool:self->_hidesImage forKey:@"hidesImage"];
}

- (void)setFrame:(CGRect)frame
{
  self->_origin.x = frame.origin.x;
  self->_origin.y = frame.origin.y;
  self->_origin.z = 0.0;
  self->_size.width = frame.size.width;
  self->_size.height = frame.size.height;
  self->_size.depth = 0.0;
}

- (CGRect)frame
{
  x = self->_origin.x;
  y = self->_origin.y;
  width = self->_size.width;
  height = self->_size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- ($1AB5FA073B851C12C2339EC22442E995)size3D
{
  width = self->_size.width;
  height = self->_size.height;
  depth = self->_size.depth;
  result.var2 = depth;
  result.var1 = height;
  result.var0 = width;
  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  slotID = [(_DUIImageComponent *)self slotID];
  renderID = [(_DUIImageComponent *)self renderID];
  contextID = [(_DUIImageComponent *)self contextID];
  [(_DUIImageComponent *)self frame];
  v8 = NSStringFromCGRect(v12);
  v9 = [v3 stringWithFormat:@"<%@ %p: slotID=%u renderID=%llx contextID:%x frame=%@ hidesImage=%d>", v4, self, slotID, renderID, contextID, v8, -[_DUIImageComponent hidesImage](self, "hidesImage")];

  return v9;
}

- (void)_configurePortalLayer:(id)layer
{
  layerCopy = layer;
  [layerCopy setSourceLayerRenderId:{-[_DUIImageComponent renderID](self, "renderID")}];
  [layerCopy setSourceContextId:{-[_DUIImageComponent contextID](self, "contextID")}];
  [layerCopy setHidesSourceLayer:1];
  [(_DUIImageComponent *)self frame];
  [layerCopy setFrame:?];
}

- (id)portalView
{
  v3 = [_UIPortalView alloc];
  v4 = [(_UIPortalView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  portalLayer = [(_UIPortalView *)v4 portalLayer];
  [(_DUIImageComponent *)self _configurePortalLayer:portalLayer];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v8 = CAPoint3DEqualToPoint() && (self->_size.width == v5[4] ? (v6 = self->_size.height == v5[5]) : (v6 = 0), v6 ? (v7 = self->_size.depth == v5[6]) : (v7 = 0), v7 && self->_ignoresAccessibilityFilters == *(v5 + 56) && self->_slotID == *(v5 + 15) && self->_renderID == *(v5 + 9) && self->_contextID == *(v5 + 16)) && self->_hidesImage == *(v5 + 57);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)createSnapshotViewForPreview:(id)preview
{
  previewCopy = preview;
  imageComponent = [(_DUIImageComponent *)self imageComponent];
  v6 = imageComponent;
  if (imageComponent)
  {
    [imageComponent frame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = [UIView alloc];
    v16 = [(UIView *)v15 initWithFrame:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v12, v14];
    [(UIView *)v16 setBounds:v8, v10, v12, v14];
    if ([v6 representsPortal])
    {
      portalView = [v6 portalView];
      -[_UIDragSlotHostingView setAllowsHitTesting:](portalView, "setAllowsHitTesting:", [previewCopy previewMode] == 4);
    }

    else
    {
      v18 = [_UIDragSlotHostingView alloc];
      [v6 frame];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;
      [v6 size3D];
      portalView = -[_UIDragSlotHostingView initWithFrame:contentSize:slotID:](v18, "initWithFrame:contentSize:slotID:", [v6 slotID], v20, v22, v24, v26, v27, v28, v29);
    }

    [(UIView *)v16 addSubview:portalView];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end
@interface _DUIImageComponent
- ($1AB5FA073B851C12C2339EC22442E995)size3D;
- (BOOL)isEqual:(id)a3;
- (CGRect)frame;
- (_DUIImageComponent)initWithCoder:(id)a3;
- (id)createSnapshotViewForPreview:(id)a3;
- (id)description;
- (id)portalView;
- (void)_configurePortalLayer:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setFrame:(CGRect)a3;
@end

@implementation _DUIImageComponent

- (_DUIImageComponent)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = _DUIImageComponent;
  v5 = [(_DUIImageComponent *)&v13 init];
  if (v5)
  {
    [v4 ui_decodeCAPoint3DForKey:@"origin"];
    v5->_origin.x = v6;
    v5->_origin.y = v7;
    v5->_origin.z = v8;
    [v4 decodeUISize3DForKey:@"size"];
    v5->_size.width = v9;
    v5->_size.height = v10;
    v5->_size.depth = v11;
    v5->_ignoresAccessibilityFilters = [v4 decodeBoolForKey:@"ignoresAccessibilityFilters"];
    v5->_slotID = [v4 decodeInt32ForKey:@"slotID"];
    v5->_renderID = [v4 decodeInt64ForKey:@"renderID"];
    v5->_contextID = [v4 decodeInt32ForKey:@"contextID"];
    v5->_hidesImage = [v4 decodeBoolForKey:@"hidesImage"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  x = self->_origin.x;
  y = self->_origin.y;
  z = self->_origin.z;
  v7 = a3;
  [v7 ui_encodeCAPoint3D:@"origin" forKey:{x, y, z}];
  [v7 encodeUISize3D:@"size" forKey:{self->_size.width, self->_size.height, self->_size.depth}];
  [v7 encodeBool:self->_ignoresAccessibilityFilters forKey:@"ignoresAccessibilityFilters"];
  [v7 encodeInt32:self->_slotID forKey:@"slotID"];
  [v7 encodeInt64:self->_renderID forKey:@"renderID"];
  [v7 encodeInt32:self->_contextID forKey:@"contextID"];
  [v7 encodeBool:self->_hidesImage forKey:@"hidesImage"];
}

- (void)setFrame:(CGRect)a3
{
  self->_origin.x = a3.origin.x;
  self->_origin.y = a3.origin.y;
  self->_origin.z = 0.0;
  self->_size.width = a3.size.width;
  self->_size.height = a3.size.height;
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
  v5 = [(_DUIImageComponent *)self slotID];
  v6 = [(_DUIImageComponent *)self renderID];
  v7 = [(_DUIImageComponent *)self contextID];
  [(_DUIImageComponent *)self frame];
  v8 = NSStringFromCGRect(v12);
  v9 = [v3 stringWithFormat:@"<%@ %p: slotID=%u renderID=%llx contextID:%x frame=%@ hidesImage=%d>", v4, self, v5, v6, v7, v8, -[_DUIImageComponent hidesImage](self, "hidesImage")];

  return v9;
}

- (void)_configurePortalLayer:(id)a3
{
  v4 = a3;
  [v4 setSourceLayerRenderId:{-[_DUIImageComponent renderID](self, "renderID")}];
  [v4 setSourceContextId:{-[_DUIImageComponent contextID](self, "contextID")}];
  [v4 setHidesSourceLayer:1];
  [(_DUIImageComponent *)self frame];
  [v4 setFrame:?];
}

- (id)portalView
{
  v3 = [_UIPortalView alloc];
  v4 = [(_UIPortalView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = [(_UIPortalView *)v4 portalLayer];
  [(_DUIImageComponent *)self _configurePortalLayer:v5];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v8 = CAPoint3DEqualToPoint() && (self->_size.width == v5[4] ? (v6 = self->_size.height == v5[5]) : (v6 = 0), v6 ? (v7 = self->_size.depth == v5[6]) : (v7 = 0), v7 && self->_ignoresAccessibilityFilters == *(v5 + 56) && self->_slotID == *(v5 + 15) && self->_renderID == *(v5 + 9) && self->_contextID == *(v5 + 16)) && self->_hidesImage == *(v5 + 57);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)createSnapshotViewForPreview:(id)a3
{
  v4 = a3;
  v5 = [(_DUIImageComponent *)self imageComponent];
  v6 = v5;
  if (v5)
  {
    [v5 frame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = [UIView alloc];
    v16 = [(UIView *)v15 initWithFrame:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v12, v14];
    [(UIView *)v16 setBounds:v8, v10, v12, v14];
    if ([v6 representsPortal])
    {
      v17 = [v6 portalView];
      -[_UIDragSlotHostingView setAllowsHitTesting:](v17, "setAllowsHitTesting:", [v4 previewMode] == 4);
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
      v17 = -[_UIDragSlotHostingView initWithFrame:contentSize:slotID:](v18, "initWithFrame:contentSize:slotID:", [v6 slotID], v20, v22, v24, v26, v27, v28, v29);
    }

    [(UIView *)v16 addSubview:v17];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end
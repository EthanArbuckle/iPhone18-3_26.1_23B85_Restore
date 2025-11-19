@interface _DUIVisibleDroppedItem
- ($821BAD5B88DA18872EDDEA81553BCF52)targetVelocity3D;
- ($821BAD5B88DA18872EDDEA81553BCF52)velocity3D;
- (CGAffineTransform)appliedTransform;
- (CGPoint)center;
- (CGVector)targetVelocity;
- (CGVector)velocity;
- (_DUIVisibleDroppedItem)init;
- (_DUIVisibleDroppedItem)initWithCoder:(id)a3;
- (id)createSnapshotView;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)setAppliedTransform:(CGAffineTransform *)a3;
- (void)setCenter:(CGPoint)a3;
- (void)setTargetVelocity3D:(id)a3;
- (void)setTargetVelocity:(CGVector)a3;
- (void)setVelocity3D:(id)a3;
- (void)setVelocity:(CGVector)a3;
@end

@implementation _DUIVisibleDroppedItem

- (_DUIVisibleDroppedItem)init
{
  v5.receiver = self;
  v5.super_class = _DUIVisibleDroppedItem;
  result = [(_DUIVisibleDroppedItem *)&v5 init];
  if (result)
  {
    v3 = MEMORY[0x1E695EFD0];
    v4 = *(MEMORY[0x1E695EFD0] + 16);
    *&result->_appliedTransform.a = *MEMORY[0x1E695EFD0];
    *&result->_appliedTransform.c = v4;
    *&result->_appliedTransform.tx = *(v3 + 32);
  }

  return result;
}

- (_DUIVisibleDroppedItem)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = _DUIVisibleDroppedItem;
  v5 = [(_DUIVisibleDroppedItem *)&v18 init];
  if (v5)
  {
    *(v5 + 13) = [v4 decodeIntegerForKey:@"itemIndex"];
    [v4 ui_decodeCAPoint3DForKey:@"center"];
    *(v5 + 1) = v6;
    *(v5 + 2) = v7;
    *(v5 + 3) = v8;
    if (v4)
    {
      [v4 decodeCGAffineTransformForKey:@"appliedTransform"];
      *(v5 + 136) = v15;
      *(v5 + 152) = v16;
      *(v5 + 168) = v17;
      [v4 _uikit_decodeSPVector3DForKey:@"velocity"];
      *(v5 + 2) = v15;
      *(v5 + 3) = v16;
      [v4 _uikit_decodeSPVector3DForKey:@"targetVelocity"];
    }

    else
    {
      *(v5 + 168) = 0u;
      *(v5 + 152) = 0u;
      *(v5 + 136) = 0u;
      *(v5 + 2) = 0u;
      *(v5 + 3) = 0u;
      v15 = 0u;
      v16 = 0u;
    }

    *(v5 + 4) = v15;
    *(v5 + 5) = v16;
    v5[96] = [v4 decodeBoolForKey:{@"constrainSize", v15, v16}];
    v5[97] = [v4 decodeBoolForKey:@"flipped"];
    v5[98] = [v4 decodeBoolForKey:@"precisionMode"];
    [v4 decodeDoubleForKey:@"rotation"];
    *(v5 + 16) = v9;
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"preview"];
    v11 = *(v5 + 15);
    *(v5 + 15) = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"imageComponent"];
    v13 = *(v5 + 14);
    *(v5 + 14) = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  itemIndex = self->_itemIndex;
  v5 = a3;
  [v5 encodeInteger:itemIndex forKey:@"itemIndex"];
  [v5 encodeObject:self->_imageComponent forKey:@"imageComponent"];
  v6 = *&self->_appliedTransform.c;
  v9 = *&self->_appliedTransform.a;
  v10 = v6;
  v11 = *&self->_appliedTransform.tx;
  [v5 encodeCGAffineTransform:&v9 forKey:@"appliedTransform"];
  [v5 ui_encodeCAPoint3D:@"center" forKey:{self->_center.x, self->_center.y, self->_center.z}];
  v7 = *&self->_velocity3D.var0.z;
  v9 = *&self->_velocity3D.var0.x;
  v10 = v7;
  [v5 _uikit_encodeSPVector3D:&v9 forKey:@"velocity"];
  v8 = *&self->_targetVelocity3D.var0.z;
  v9 = *&self->_targetVelocity3D.var0.x;
  v10 = v8;
  [v5 _uikit_encodeSPVector3D:&v9 forKey:@"targetVelocity"];
  [v5 encodeBool:self->_constrainSize forKey:@"constrainSize"];
  [v5 encodeBool:self->_flipped forKey:@"flipped"];
  [v5 encodeBool:self->_precisionMode forKey:@"precisionMode"];
  [v5 encodeDouble:@"rotation" forKey:self->_rotation];
  [v5 encodeObject:self->_preview forKey:@"preview"];
}

- (CGVector)velocity
{
  x = self->_velocity3D.var0.x;
  y = self->_velocity3D.var0.y;
  result.dy = y;
  result.dx = x;
  return result;
}

- (void)setVelocity:(CGVector)a3
{
  self->_velocity3D.var0.x = a3.dx;
  *&self->_velocity3D.var0.y = *&a3.dy;
  self->_velocity3D.var0._padding = 0.0;
}

- (CGVector)targetVelocity
{
  x = self->_targetVelocity3D.var0.x;
  y = self->_targetVelocity3D.var0.y;
  result.dy = y;
  result.dx = x;
  return result;
}

- (void)setTargetVelocity:(CGVector)a3
{
  self->_targetVelocity3D.var0.x = a3.dx;
  *&self->_targetVelocity3D.var0.y = *&a3.dy;
  self->_targetVelocity3D.var0._padding = 0.0;
}

- (CGPoint)center
{
  x = self->_center.x;
  y = self->_center.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)setCenter:(CGPoint)a3
{
  self->_center.x = a3.x;
  self->_center.y = a3.y;
  self->_center.z = 0.0;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v10 = *&self->_itemIndex;
  preview = self->_preview;
  v6 = _NSStringFromCAPoint3D(self->_center.x, self->_center.y, self->_center.z);
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(x = %f, y = %f, z = %f)", *&self->_velocity3D.var0.x, *&self->_velocity3D.var0.y, *&self->_velocity3D.var0.z];
  v8 = [v3 stringWithFormat:@"<%@ %p: itemIndex=%lu imageComponent=%@ preview=%@ center=%@ velocity=%@>", v4, self, v10, preview, v6, v7];

  return v8;
}

- (id)createSnapshotView
{
  v3 = [(_DUIVisibleDroppedItem *)self imageComponent];
  if (v3)
  {
    v4 = [(_DUIVisibleDroppedItem *)self preview];
    v5 = [v3 createSnapshotViewForPreview:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (CGAffineTransform)appliedTransform
{
  v3 = *&self[3].b;
  *&retstr->a = *&self[2].ty;
  *&retstr->c = v3;
  *&retstr->tx = *&self[3].d;
  return self;
}

- (void)setAppliedTransform:(CGAffineTransform *)a3
{
  v3 = *&a3->a;
  v4 = *&a3->c;
  *&self->_appliedTransform.tx = *&a3->tx;
  *&self->_appliedTransform.c = v4;
  *&self->_appliedTransform.a = v3;
}

- ($821BAD5B88DA18872EDDEA81553BCF52)velocity3D
{
  v3 = *&self->_velocity3D.var0.x;
  v4 = *&self->_velocity3D.var0.z;
  *v2 = v3;
  v2[1] = v4;
  result.var0.var1 = *&v4;
  result.var0.var0 = *&v3;
  return result;
}

- (void)setVelocity3D:(id)a3
{
  v4 = v3[1];
  *&self->_velocity3D.var0.x = *v3;
  *&self->_velocity3D.var0.z = v4;
}

- ($821BAD5B88DA18872EDDEA81553BCF52)targetVelocity3D
{
  v3 = *&self->_targetVelocity3D.var0.x;
  v4 = *&self->_targetVelocity3D.var0.z;
  *v2 = v3;
  v2[1] = v4;
  result.var0.var1 = *&v4;
  result.var0.var0 = *&v3;
  return result;
}

- (void)setTargetVelocity3D:(id)a3
{
  v4 = v3[1];
  *&self->_targetVelocity3D.var0.x = *v3;
  *&self->_targetVelocity3D.var0.z = v4;
}

@end
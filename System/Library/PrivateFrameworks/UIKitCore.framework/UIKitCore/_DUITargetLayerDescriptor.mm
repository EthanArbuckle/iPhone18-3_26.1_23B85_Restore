@interface _DUITargetLayerDescriptor
- (BOOL)isEqual:(id)a3;
- (_DUITargetLayerDescriptor)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _DUITargetLayerDescriptor

- (_DUITargetLayerDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _DUITargetLayerDescriptor;
  v5 = [(_DUITargetLayerDescriptor *)&v9 init];
  if (v5)
  {
    v5->_contextID = [v4 decodeInt32ForKey:@"contextID"];
    v5->_renderID = [v4 decodeInt64ForKey:@"renderID"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"systemShellHostingSpaceIdentifier"];
    systemShellHostingSpaceIdentifier = v5->_systemShellHostingSpaceIdentifier;
    v5->_systemShellHostingSpaceIdentifier = v6;

    v5->_setDownAnimationContextID = [v4 decodeInt32ForKey:@"setDownAnimationContextID"];
    v5->_setDownAnimationRenderID = [v4 decodeInt64ForKey:@"setDownAnimationRenderID"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  renderID = self->_renderID;
  v5 = a3;
  [v5 encodeInt64:renderID forKey:@"renderID"];
  [v5 encodeInt32:self->_contextID forKey:@"contextID"];
  [v5 encodeObject:self->_systemShellHostingSpaceIdentifier forKey:@"systemShellHostingSpaceIdentifier"];
  [v5 encodeInt64:self->_setDownAnimationRenderID forKey:@"setDownAnimationRenderID"];
  [v5 encodeInt32:self->_setDownAnimationContextID forKey:@"setDownAnimationContextID"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = v5;
    if (self->_contextID != v5[2] || self->_renderID != *(v5 + 2))
    {
      goto LABEL_14;
    }

    v7 = *(v5 + 3);
    v8 = self->_systemShellHostingSpaceIdentifier;
    v9 = v7;
    v10 = v9;
    if (v8 == v9)
    {
    }

    else
    {
      if (!v8 || !v9)
      {

        goto LABEL_14;
      }

      v11 = [(NSString *)v8 isEqual:v9];

      if (!v11)
      {
        goto LABEL_14;
      }
    }

    if (self->_setDownAnimationContextID == *(v6 + 3))
    {
      v12 = self->_setDownAnimationRenderID == v6[4];
LABEL_15:

      goto LABEL_16;
    }

LABEL_14:
    v12 = 0;
    goto LABEL_15;
  }

  v12 = 0;
LABEL_16:

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  [v4 setContextID:{-[_DUITargetLayerDescriptor contextID](self, "contextID")}];
  [v4 setRenderID:{-[_DUITargetLayerDescriptor renderID](self, "renderID")}];
  v5 = [(_DUITargetLayerDescriptor *)self systemShellHostingSpaceIdentifier];
  v6 = [v5 copy];
  [v4 setSystemShellHostingSpaceIdentifier:v6];

  [v4 setSetDownAnimationContextID:{-[_DUITargetLayerDescriptor setDownAnimationContextID](self, "setDownAnimationContextID")}];
  [v4 setSetDownAnimationRenderID:{-[_DUITargetLayerDescriptor setDownAnimationRenderID](self, "setDownAnimationRenderID")}];
  return v4;
}

@end
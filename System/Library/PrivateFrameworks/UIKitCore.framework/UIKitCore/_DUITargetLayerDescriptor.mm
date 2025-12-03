@interface _DUITargetLayerDescriptor
- (BOOL)isEqual:(id)equal;
- (_DUITargetLayerDescriptor)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _DUITargetLayerDescriptor

- (_DUITargetLayerDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = _DUITargetLayerDescriptor;
  v5 = [(_DUITargetLayerDescriptor *)&v9 init];
  if (v5)
  {
    v5->_contextID = [coderCopy decodeInt32ForKey:@"contextID"];
    v5->_renderID = [coderCopy decodeInt64ForKey:@"renderID"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"systemShellHostingSpaceIdentifier"];
    systemShellHostingSpaceIdentifier = v5->_systemShellHostingSpaceIdentifier;
    v5->_systemShellHostingSpaceIdentifier = v6;

    v5->_setDownAnimationContextID = [coderCopy decodeInt32ForKey:@"setDownAnimationContextID"];
    v5->_setDownAnimationRenderID = [coderCopy decodeInt64ForKey:@"setDownAnimationRenderID"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  renderID = self->_renderID;
  coderCopy = coder;
  [coderCopy encodeInt64:renderID forKey:@"renderID"];
  [coderCopy encodeInt32:self->_contextID forKey:@"contextID"];
  [coderCopy encodeObject:self->_systemShellHostingSpaceIdentifier forKey:@"systemShellHostingSpaceIdentifier"];
  [coderCopy encodeInt64:self->_setDownAnimationRenderID forKey:@"setDownAnimationRenderID"];
  [coderCopy encodeInt32:self->_setDownAnimationContextID forKey:@"setDownAnimationContextID"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  [v4 setContextID:{-[_DUITargetLayerDescriptor contextID](self, "contextID")}];
  [v4 setRenderID:{-[_DUITargetLayerDescriptor renderID](self, "renderID")}];
  systemShellHostingSpaceIdentifier = [(_DUITargetLayerDescriptor *)self systemShellHostingSpaceIdentifier];
  v6 = [systemShellHostingSpaceIdentifier copy];
  [v4 setSystemShellHostingSpaceIdentifier:v6];

  [v4 setSetDownAnimationContextID:{-[_DUITargetLayerDescriptor setDownAnimationContextID](self, "setDownAnimationContextID")}];
  [v4 setSetDownAnimationRenderID:{-[_DUITargetLayerDescriptor setDownAnimationRenderID](self, "setDownAnimationRenderID")}];
  return v4;
}

@end
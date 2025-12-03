@interface _UICollectionViewOutlineCellDisclosureConfiguration
- (_UICollectionViewOutlineCellDisclosureConfiguration)init;
- (_UICollectionViewOutlineCellDisclosureConfiguration)initWithImage:(id)image alignment:(int64_t)alignment animationRotationAngle:(double)angle disclosureColor:(id)color disclosureWasTappedHandler:(id)handler;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation _UICollectionViewOutlineCellDisclosureConfiguration

- (_UICollectionViewOutlineCellDisclosureConfiguration)init
{
  v3 = [UIImage systemImageNamed:@"chevron.forward"];
  v4 = [(_UICollectionViewOutlineCellDisclosureConfiguration *)self initWithImage:v3 alignment:2];

  return v4;
}

- (_UICollectionViewOutlineCellDisclosureConfiguration)initWithImage:(id)image alignment:(int64_t)alignment animationRotationAngle:(double)angle disclosureColor:(id)color disclosureWasTappedHandler:(id)handler
{
  imageCopy = image;
  colorCopy = color;
  handlerCopy = handler;
  v21.receiver = self;
  v21.super_class = _UICollectionViewOutlineCellDisclosureConfiguration;
  v16 = [(_UICollectionViewOutlineCellDisclosureConfiguration *)&v21 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_image, image);
    v17->_alignment = alignment;
    v17->_animationRotationAngle = angle;
    objc_storeStrong(&v17->_disclosureColor, color);
    v18 = [handlerCopy copy];
    disclosureWasTappedHandler = v17->_disclosureWasTappedHandler;
    v17->_disclosureWasTappedHandler = v18;
  }

  return v17;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  image = self->_image;
  alignment = self->_alignment;
  animationRotationAngle = self->_animationRotationAngle;
  disclosureColor = self->_disclosureColor;
  disclosureWasTappedHandler = self->_disclosureWasTappedHandler;

  return [v4 initWithImage:image alignment:alignment animationRotationAngle:disclosureColor disclosureColor:disclosureWasTappedHandler disclosureWasTappedHandler:animationRotationAngle];
}

@end
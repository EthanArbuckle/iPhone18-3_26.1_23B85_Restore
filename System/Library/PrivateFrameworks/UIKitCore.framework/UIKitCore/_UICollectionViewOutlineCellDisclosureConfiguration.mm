@interface _UICollectionViewOutlineCellDisclosureConfiguration
- (_UICollectionViewOutlineCellDisclosureConfiguration)init;
- (_UICollectionViewOutlineCellDisclosureConfiguration)initWithImage:(id)a3 alignment:(int64_t)a4 animationRotationAngle:(double)a5 disclosureColor:(id)a6 disclosureWasTappedHandler:(id)a7;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation _UICollectionViewOutlineCellDisclosureConfiguration

- (_UICollectionViewOutlineCellDisclosureConfiguration)init
{
  v3 = [UIImage systemImageNamed:@"chevron.forward"];
  v4 = [(_UICollectionViewOutlineCellDisclosureConfiguration *)self initWithImage:v3 alignment:2];

  return v4;
}

- (_UICollectionViewOutlineCellDisclosureConfiguration)initWithImage:(id)a3 alignment:(int64_t)a4 animationRotationAngle:(double)a5 disclosureColor:(id)a6 disclosureWasTappedHandler:(id)a7
{
  v13 = a3;
  v14 = a6;
  v15 = a7;
  v21.receiver = self;
  v21.super_class = _UICollectionViewOutlineCellDisclosureConfiguration;
  v16 = [(_UICollectionViewOutlineCellDisclosureConfiguration *)&v21 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_image, a3);
    v17->_alignment = a4;
    v17->_animationRotationAngle = a5;
    objc_storeStrong(&v17->_disclosureColor, a6);
    v18 = [v15 copy];
    disclosureWasTappedHandler = v17->_disclosureWasTappedHandler;
    v17->_disclosureWasTappedHandler = v18;
  }

  return v17;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  image = self->_image;
  alignment = self->_alignment;
  animationRotationAngle = self->_animationRotationAngle;
  disclosureColor = self->_disclosureColor;
  disclosureWasTappedHandler = self->_disclosureWasTappedHandler;

  return [v4 initWithImage:image alignment:alignment animationRotationAngle:disclosureColor disclosureColor:disclosureWasTappedHandler disclosureWasTappedHandler:animationRotationAngle];
}

@end
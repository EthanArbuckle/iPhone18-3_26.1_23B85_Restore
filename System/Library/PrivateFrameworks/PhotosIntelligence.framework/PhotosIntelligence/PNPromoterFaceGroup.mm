@interface PNPromoterFaceGroup
- (PNPromoterFaceGroup)initWithGroupIdentifier:(id)a3 andFaceIdentifiers:(id)a4;
@end

@implementation PNPromoterFaceGroup

- (PNPromoterFaceGroup)initWithGroupIdentifier:(id)a3 andFaceIdentifiers:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PNPromoterFaceGroup;
  v9 = [(PNPromoterFaceGroup *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_groupIdentifier, a3);
    objc_storeStrong(&v10->_faceIdentifiers, a4);
  }

  return v10;
}

@end
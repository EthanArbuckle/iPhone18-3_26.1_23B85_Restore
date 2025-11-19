@interface PNPetPromoterWrapper
- (PNPetPromoterWrapper)initWithLibrary:(id)a3 andDelegate:(id)a4;
@end

@implementation PNPetPromoterWrapper

- (PNPetPromoterWrapper)initWithLibrary:(id)a3 andDelegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = PNPetPromoterWrapper;
  v8 = [(PNPetPromoterWrapper *)&v12 init];
  if (v8)
  {
    v9 = [[PNPetPromoter alloc] initWithPhotoLibrary:v6 andDelegate:v7];
    petPromoter = v8->_petPromoter;
    v8->_petPromoter = v9;
  }

  return v8;
}

@end
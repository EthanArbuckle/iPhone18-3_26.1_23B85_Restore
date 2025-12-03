@interface PNPetPromoterWrapper
- (PNPetPromoterWrapper)initWithLibrary:(id)library andDelegate:(id)delegate;
@end

@implementation PNPetPromoterWrapper

- (PNPetPromoterWrapper)initWithLibrary:(id)library andDelegate:(id)delegate
{
  libraryCopy = library;
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = PNPetPromoterWrapper;
  v8 = [(PNPetPromoterWrapper *)&v12 init];
  if (v8)
  {
    v9 = [[PNPetPromoter alloc] initWithPhotoLibrary:libraryCopy andDelegate:delegateCopy];
    petPromoter = v8->_petPromoter;
    v8->_petPromoter = v9;
  }

  return v8;
}

@end
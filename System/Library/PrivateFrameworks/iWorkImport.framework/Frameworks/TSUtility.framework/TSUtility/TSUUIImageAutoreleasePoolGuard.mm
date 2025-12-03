@interface TSUUIImageAutoreleasePoolGuard
- (TSUUIImageAutoreleasePoolGuard)initWithUIImage:(id)image;
- (void)dealloc;
@end

@implementation TSUUIImageAutoreleasePoolGuard

- (TSUUIImageAutoreleasePoolGuard)initWithUIImage:(id)image
{
  v5.receiver = self;
  v5.super_class = TSUUIImageAutoreleasePoolGuard;
  result = [(TSUUIImageAutoreleasePoolGuard *)&v5 init];
  if (result)
  {
    result->mImage = image;
  }

  return result;
}

- (void)dealloc
{
  mImage = self->mImage;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_277084428;
  v5[3] = &unk_27A701A20;
  v5[4] = mImage;
  [TSUUIImage i_performBlockWithUIImageLock:v5];
  v4.receiver = self;
  v4.super_class = TSUUIImageAutoreleasePoolGuard;
  [(TSUUIImageAutoreleasePoolGuard *)&v4 dealloc];
}

@end
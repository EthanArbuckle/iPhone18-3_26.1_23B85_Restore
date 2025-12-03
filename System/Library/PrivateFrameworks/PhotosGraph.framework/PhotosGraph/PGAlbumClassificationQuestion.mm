@interface PGAlbumClassificationQuestion
- (PGAlbumClassificationQuestion)initWithAlbumUUID:(id)d localFactoryScore:(double)score;
@end

@implementation PGAlbumClassificationQuestion

- (PGAlbumClassificationQuestion)initWithAlbumUUID:(id)d localFactoryScore:(double)score
{
  dCopy = d;
  v12.receiver = self;
  v12.super_class = PGAlbumClassificationQuestion;
  v8 = [(PGAlbumClassificationQuestion *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_entityIdentifier, d);
    v9->_state = 0;
    v9->_localFactoryScore = score;
    additionalInfo = v9->_additionalInfo;
    v9->_additionalInfo = MEMORY[0x277CBEC10];
  }

  return v9;
}

@end
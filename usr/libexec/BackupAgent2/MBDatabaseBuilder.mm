@interface MBDatabaseBuilder
+ (id)databaseBuilderWithEncoder:(id)encoder;
- (MBDatabaseBuilder)initWithEncoder:(id)encoder;
- (void)addFile:(id)file flags:(unint64_t)flags;
- (void)addPlaceholderForFile:(id)file flags:(unint64_t)flags;
@end

@implementation MBDatabaseBuilder

+ (id)databaseBuilderWithEncoder:(id)encoder
{
  encoderCopy = encoder;
  v4 = [[MBDatabaseBuilder alloc] initWithEncoder:encoderCopy];

  return v4;
}

- (MBDatabaseBuilder)initWithEncoder:(id)encoder
{
  encoderCopy = encoder;
  v10.receiver = self;
  v10.super_class = MBDatabaseBuilder;
  v6 = [(MBDatabaseBuilder *)&v10 init];
  if (v6)
  {
    v7 = objc_alloc_init(MBDatabaseIndex);
    index = v6->_index;
    v6->_index = v7;

    objc_storeStrong(&v6->_encoder, encoder);
    [(MBEncoder *)v6->_encoder encodeInt32:1835164770];
    [(MBEncoder *)v6->_encoder encodeVersion:5.0];
    v6->_offsetBase = [(MBEncoder *)v6->_encoder offset];
  }

  return v6;
}

- (void)addFile:(id)file flags:(unint64_t)flags
{
  encoder = self->_encoder;
  fileCopy = file;
  v8 = [(MBEncoder *)encoder offset]- self->_offsetBase;
  index = self->_index;
  v10 = +[MBDatabaseIndex flagsForMode:](MBDatabaseIndex, "flagsForMode:", [fileCopy mode]);
  fileID = [fileCopy fileID];
  [(MBDatabaseIndex *)index setOffset:v8 flags:v10 | flags forFileID:fileID];

  [fileCopy encode:self->_encoder];
  v12 = self->_encoder;

  [(MBEncoder *)v12 flush];
}

- (void)addPlaceholderForFile:(id)file flags:(unint64_t)flags
{
  index = self->_index;
  fileCopy = file;
  v7 = +[MBDatabaseIndex flagsForMode:](MBDatabaseIndex, "flagsForMode:", [fileCopy mode]);
  fileID = [fileCopy fileID];

  [(MBDatabaseIndex *)index setOffset:-1 flags:v7 | flags forFileID:fileID];
}

@end
@interface MBDatabaseBuilder
+ (id)databaseBuilderWithEncoder:(id)a3;
- (MBDatabaseBuilder)initWithEncoder:(id)a3;
- (void)addFile:(id)a3 flags:(unint64_t)a4;
- (void)addPlaceholderForFile:(id)a3 flags:(unint64_t)a4;
@end

@implementation MBDatabaseBuilder

+ (id)databaseBuilderWithEncoder:(id)a3
{
  v3 = a3;
  v4 = [[MBDatabaseBuilder alloc] initWithEncoder:v3];

  return v4;
}

- (MBDatabaseBuilder)initWithEncoder:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = MBDatabaseBuilder;
  v6 = [(MBDatabaseBuilder *)&v10 init];
  if (v6)
  {
    v7 = objc_alloc_init(MBDatabaseIndex);
    index = v6->_index;
    v6->_index = v7;

    objc_storeStrong(&v6->_encoder, a3);
    [(MBEncoder *)v6->_encoder encodeInt32:1835164770];
    [(MBEncoder *)v6->_encoder encodeVersion:5.0];
    v6->_offsetBase = [(MBEncoder *)v6->_encoder offset];
  }

  return v6;
}

- (void)addFile:(id)a3 flags:(unint64_t)a4
{
  encoder = self->_encoder;
  v7 = a3;
  v8 = [(MBEncoder *)encoder offset]- self->_offsetBase;
  index = self->_index;
  v10 = +[MBDatabaseIndex flagsForMode:](MBDatabaseIndex, "flagsForMode:", [v7 mode]);
  v11 = [v7 fileID];
  [(MBDatabaseIndex *)index setOffset:v8 flags:v10 | a4 forFileID:v11];

  [v7 encode:self->_encoder];
  v12 = self->_encoder;

  [(MBEncoder *)v12 flush];
}

- (void)addPlaceholderForFile:(id)a3 flags:(unint64_t)a4
{
  index = self->_index;
  v6 = a3;
  v7 = +[MBDatabaseIndex flagsForMode:](MBDatabaseIndex, "flagsForMode:", [v6 mode]);
  v8 = [v6 fileID];

  [(MBDatabaseIndex *)index setOffset:-1 flags:v7 | a4 forFileID:v8];
}

@end
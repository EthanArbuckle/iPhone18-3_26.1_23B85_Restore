@interface TSTTableDataCustomFormat
- (BOOL)isEqual:(id)a3;
- (id)description;
- (id)initObjectWithCustomFormat:(void *)a3;
- (void)dealloc;
@end

@implementation TSTTableDataCustomFormat

- (id)initObjectWithCustomFormat:(void *)a3
{
  v4.receiver = self;
  v4.super_class = TSTTableDataCustomFormat;
  if ([(TSTTableDataCustomFormat *)&v4 init])
  {
    operator new();
  }

  return 0;
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  mCustomFormat = self->mCustomFormat;
  v6 = *(a3 + 2);

  return TSUCustomFormat::customFormatIsEqual(mCustomFormat, v6);
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  mRefCount = self->super.mRefCount;
  mCustomFormat = self->mCustomFormat;
  if (mCustomFormat)
  {
    v5 = TSUCustomFormat::formatName(mCustomFormat);
  }

  else
  {
    v5 = @"NULL";
  }

  return [v2 stringWithFormat:@"refCount: %d   mCustomFormat: %@", mRefCount, v5];
}

- (void)dealloc
{
  mCustomFormat = self->mCustomFormat;
  if (mCustomFormat)
  {
    v4 = MEMORY[0x26D6A9790](mCustomFormat, a2);
    MEMORY[0x26D6A9A30](v4, 0x10A0C40ADE6F494);
  }

  self->mCustomFormat = 0;
  v5.receiver = self;
  v5.super_class = TSTTableDataCustomFormat;
  [(TSTTableDataCustomFormat *)&v5 dealloc];
}

@end
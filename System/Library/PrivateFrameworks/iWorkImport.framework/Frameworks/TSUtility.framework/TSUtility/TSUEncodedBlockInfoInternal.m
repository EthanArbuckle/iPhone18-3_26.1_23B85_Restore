@interface TSUEncodedBlockInfoInternal
- (BOOL)isEqual:(id)a3;
- (TSUEncodedBlockInfoInternal)initWithEncodedLength:(unint64_t)a3;
@end

@implementation TSUEncodedBlockInfoInternal

- (TSUEncodedBlockInfoInternal)initWithEncodedLength:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = TSUEncodedBlockInfoInternal;
  result = [(TSUEncodedBlockInfoInternal *)&v5 init];
  if (result)
  {
    result->_encodedLength = a3;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v9 = TSUProtocolCast(a3, 1, a3, v3, v4, v5, v6, v7, &unk_2886648E0);
  if (v9)
  {
    v10 = sub_2770F98E4(self, v9);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end
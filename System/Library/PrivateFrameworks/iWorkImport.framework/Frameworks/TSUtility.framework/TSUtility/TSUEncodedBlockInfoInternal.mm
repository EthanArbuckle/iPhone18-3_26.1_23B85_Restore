@interface TSUEncodedBlockInfoInternal
- (BOOL)isEqual:(id)equal;
- (TSUEncodedBlockInfoInternal)initWithEncodedLength:(unint64_t)length;
@end

@implementation TSUEncodedBlockInfoInternal

- (TSUEncodedBlockInfoInternal)initWithEncodedLength:(unint64_t)length
{
  v5.receiver = self;
  v5.super_class = TSUEncodedBlockInfoInternal;
  result = [(TSUEncodedBlockInfoInternal *)&v5 init];
  if (result)
  {
    result->_encodedLength = length;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  v9 = TSUProtocolCast(equal, 1, equal, v3, v4, v5, v6, v7, &unk_2886648E0);
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
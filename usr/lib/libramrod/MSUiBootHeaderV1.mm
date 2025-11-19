@interface MSUiBootHeaderV1
- (BOOL)loadHeaderAtOffset:(unsigned int)a3;
- (id)packStructure;
- (int64_t)compareTo:(id)a3;
@end

@implementation MSUiBootHeaderV1

- (id)packStructure
{
  v4[0] = [(MSUiBootHeader *)self headerGeneration];
  v4[1] = [(MSUiBootHeaderV1 *)self valid];
  return [NSData dataWithBytes:v4 length:8];
}

- (BOOL)loadHeaderAtOffset:(unsigned int)a3
{
  v3 = *&a3;
  v8 = 0;
  v5 = [(IOServiceWriter *)[(MSUiBootHeader *)self serviceWriter] readDataAtOffset:*&a3 ofLength:8];
  v6 = [v5 length];
  if (v6)
  {
    [v5 getBytes:&v8 length:8];
    [(MSUiBootHeader *)self setHeaderGeneration:v8];
    [(MSUiBootHeaderV1 *)self setValid:HIDWORD(v8)];
    [(MSUiBootHeader *)self setStartLocation:v3];
    [(MSUiBootHeader *)self setImageAddress:0];
  }

  return v6 != 0;
}

- (int64_t)compareTo:(id)a3
{
  if ([(MSUiBootHeaderV1 *)self valid]== -1 && [(MSUiBootHeader *)self headerGeneration])
  {
    v6 = [(MSUiBootHeader *)self headerGeneration];
    if (v6 > [a3 headerGeneration] || (objc_msgSend(a3, "isValid") & 1) == 0)
    {
      return 1;
    }

    goto LABEL_11;
  }

  if ([a3 valid] != -1 || !objc_msgSend(a3, "headerGeneration"))
  {
    return 0;
  }

  v13 = [a3 headerGeneration];
  if (v13 <= [(MSUiBootHeader *)self headerGeneration]&& [(MSUiBootHeaderV1 *)self isValid])
  {
LABEL_11:
    iBU_LOG_real(@"Found a prepared header with a smaller generation than the valid header.", "[MSUiBootHeaderV1 compareTo:]", v7, v8, v9, v10, v11, v12, v14);
    return 0;
  }

  return -1;
}

@end
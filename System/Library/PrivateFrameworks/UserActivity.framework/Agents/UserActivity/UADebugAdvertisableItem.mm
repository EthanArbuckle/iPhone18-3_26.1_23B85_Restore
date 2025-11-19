@interface UADebugAdvertisableItem
- (UADebugAdvertisableItem)initWithType:(unint64_t)a3 manager:(id)a4;
- (id)advertisingBytes;
@end

@implementation UADebugAdvertisableItem

- (UADebugAdvertisableItem)initWithType:(unint64_t)a3 manager:(id)a4
{
  v6 = a4;
  if (!a3)
  {
    v7 = @"AAAAAAAA-BBBB-CCCC-DDDD-EEEEEEEEEEEE";
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v7 = @"EEEEEEEE-DDDD-CCCC-BBBB-AAAAAAAAAAAA";
LABEL_5:
    v8 = [[NSUUID alloc] initWithUUIDString:v7];
    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:
  v12.receiver = self;
  v12.super_class = UADebugAdvertisableItem;
  v9 = [(UADebugAdvertisableItem *)&v12 initWithUUID:v8 type:1 options:0];
  v10 = v9;
  if (v9)
  {
    [(UADebugAdvertisableItem *)v9 setType:5];
    [(UADebugAdvertisableItem *)v10 setDebugType:a3];
  }

  return v10;
}

- (id)advertisingBytes
{
  if ([(UADebugAdvertisableItem *)self debugType]> 1)
  {
    v3 = 0;
  }

  else
  {
    [(UADebugAdvertisableItem *)self type];
    v3 = _LSCreateHashedBytesForAdvertisingFromString();
  }

  return v3;
}

@end
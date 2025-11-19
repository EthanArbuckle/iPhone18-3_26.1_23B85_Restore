@interface SAAuxiliaryData
+ (id)auxiliaryDataForTimestamp:(id)a3;
@end

@implementation SAAuxiliaryData

+ (id)auxiliaryDataForTimestamp:(id)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = +[SATimestamp timestamp];
  }

  v4 = v3;
  v5 = objc_alloc_init(SAAuxiliaryData);
  v7 = [[SAFanSpeed alloc] initWithTimestamp:v4];
  if (v5)
  {
    objc_setProperty_atomic(v5, v6, v7, 8);
  }

  v8 = CopyMountStatusData();
  v10 = v8;
  if (v5)
  {
    objc_setProperty_atomic(v5, v9, v8, 16);

    objc_setProperty_atomic(v5, v11, v4, 24);
  }

  else
  {
  }

  return v5;
}

@end
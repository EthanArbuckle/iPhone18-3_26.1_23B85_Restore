@interface BYDeviceForTest
- (BYDeviceForTest)init;
@end

@implementation BYDeviceForTest

- (BYDeviceForTest)init
{
  v7.receiver = self;
  v7.super_class = BYDeviceForTest;
  v2 = [(BYDevice *)&v7 init];
  if (v2)
  {
    v2->_hasSolidStateHomeButton = MGGetSInt32Answer() == 1;
    v3 = 1;
    v4 = MGGetProductType();
    if (v4 > 2311900305)
    {
      if (v4 != 2311900306 && v4 != 3242623367)
      {
        v5 = 3402870384;
        goto LABEL_9;
      }
    }

    else if (v4 != 502329937 && v4 != 896202454)
    {
      v5 = 2270970153;
LABEL_9:
      if (v4 != v5 && [(BYDevice *)v2 size]!= 3 && [(BYDevice *)v2 size]!= 6 && [(BYDevice *)v2 size]!= 5)
      {
        v3 = [(BYDevice *)v2 size]== 4;
      }
    }

    v2->_supportsTrueTone = v3;
  }

  return v2;
}

@end
@interface DataComparisonByBytes
+ (id)dataComparisonByBytesWithData1:(id)data1 data2:(id)data2 reference:(id)reference;
@end

@implementation DataComparisonByBytes

+ (id)dataComparisonByBytesWithData1:(id)data1 data2:(id)data2 reference:(id)reference
{
  data1Copy = data1;
  data2Copy = data2;
  referenceCopy = reference;
  v11 = [[self alloc] initWithObj1:data1Copy obj2:data2Copy reference:referenceCopy];
  if (v11)
  {
    v12 = [data1Copy length];
    v13 = [data2Copy length];
    if (v12 >= v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      v15 = 0;
      do
      {
        bytes = [data1Copy bytes];
        bytes2 = [data2Copy bytes];
        [v11 incrementTokensWith:*(bytes + v15) == *(bytes2 + v15)];
        v18 = *(bytes + v15);
        v19 = *(bytes2 + v15);
        v20 = v19 - v18;
        v21 = v18 >= v19;
        v22 = v18 - v19;
        if (!v21)
        {
          v22 = v20;
        }

        [v11 incrementDistanceWith:v22];
        ++v15;
        v23 = [data1Copy length];
        v24 = [data2Copy length];
        if (v23 >= v24)
        {
          v25 = v24;
        }

        else
        {
          v25 = v23;
        }
      }

      while (v15 < v25);
    }

    [v11 accountForadditionalLength];
    v26 = v11;
  }

  return v11;
}

@end
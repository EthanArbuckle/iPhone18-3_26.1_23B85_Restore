@interface DataComparisonByBytes
+ (id)dataComparisonByBytesWithData1:(id)a3 data2:(id)a4 reference:(id)a5;
@end

@implementation DataComparisonByBytes

+ (id)dataComparisonByBytesWithData1:(id)a3 data2:(id)a4 reference:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [[a1 alloc] initWithObj1:v8 obj2:v9 reference:v10];
  if (v11)
  {
    v12 = [v8 length];
    v13 = [v9 length];
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
        v16 = [v8 bytes];
        v17 = [v9 bytes];
        [v11 incrementTokensWith:*(v16 + v15) == *(v17 + v15)];
        v18 = *(v16 + v15);
        v19 = *(v17 + v15);
        v20 = v19 - v18;
        v21 = v18 >= v19;
        v22 = v18 - v19;
        if (!v21)
        {
          v22 = v20;
        }

        [v11 incrementDistanceWith:v22];
        ++v15;
        v23 = [v8 length];
        v24 = [v9 length];
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
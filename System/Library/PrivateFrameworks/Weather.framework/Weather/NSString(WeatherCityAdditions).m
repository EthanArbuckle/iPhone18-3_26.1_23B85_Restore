@interface NSString(WeatherCityAdditions)
+ (void)stringWithFormat:()WeatherCityAdditions andArguments:;
@end

@implementation NSString(WeatherCityAdditions)

+ (void)stringWithFormat:()WeatherCityAdditions andArguments:
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 count];
  if (v7 < 1)
  {
    v14 = 0;
    goto LABEL_35;
  }

  v8 = 0;
  v22 = v5;
  if (v7 <= 6)
  {
    if (v7 <= 3)
    {
      if (v7 == 1)
      {
        v25 = 0;
        v26 = 0;
        v16 = 0;
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v23 = 0;
        v24 = 0;
LABEL_33:
        v15 = v8;
        v8 = [v6 objectAtIndexedSubscript:0];
        goto LABEL_34;
      }

      if (v7 == 2)
      {
        v16 = 0;
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v24 = 0;
        v25 = 0;
        v13 = 0;
        v23 = 0;
        goto LABEL_32;
      }

      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v24 = 0;
      v25 = 0;
      v13 = 0;
      v23 = 0;
LABEL_31:
      v16 = v8;
      v8 = [v6 objectAtIndexedSubscript:2];
LABEL_32:
      v26 = v8;
      v8 = [v6 objectAtIndexedSubscript:1];
      goto LABEL_33;
    }

    if (v7 == 4)
    {
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v24 = 0;
      v25 = 0;
      v13 = 0;
      v23 = 0;
LABEL_30:
      v9 = v8;
      v8 = [v6 objectAtIndexedSubscript:3];
      goto LABEL_31;
    }

    if (v7 == 5)
    {
      v11 = 0;
      v12 = 0;
      v24 = 0;
      v25 = 0;
      v13 = 0;
      v23 = 0;
      goto LABEL_29;
    }

    v12 = 0;
    v24 = 0;
    v25 = 0;
    v13 = 0;
    v23 = 0;
LABEL_28:
    v11 = v8;
    v8 = [v6 objectAtIndexedSubscript:5];
LABEL_29:
    v10 = v8;
    v8 = [v6 objectAtIndexedSubscript:4];
    goto LABEL_30;
  }

  if (v7 <= 9)
  {
    if (v7 == 7)
    {
      v24 = 0;
      v25 = 0;
      v13 = 0;
      v23 = 0;
LABEL_27:
      v12 = v8;
      v8 = [v6 objectAtIndexedSubscript:6];
      goto LABEL_28;
    }

    if (v7 == 8)
    {
      v13 = 0;
      v23 = 0;
      v24 = 0;
      goto LABEL_26;
    }

    v23 = 0;
    v24 = 0;
LABEL_25:
    v13 = v8;
    v8 = [v6 objectAtIndexedSubscript:8];
LABEL_26:
    v25 = v8;
    v8 = [v6 objectAtIndexedSubscript:7];
    goto LABEL_27;
  }

  if (v7 == 10)
  {
    v23 = 0;
    goto LABEL_24;
  }

  if (v7 == 11)
  {
LABEL_19:
    v23 = v8;
    v8 = [v6 objectAtIndexedSubscript:10];
LABEL_24:
    v24 = v8;
    v8 = [v6 objectAtIndexedSubscript:9];
    goto LABEL_25;
  }

  v15 = 0;
  v25 = 0;
  v26 = 0;
  v16 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v23 = 0;
  v24 = 0;
  if (v7 == 12)
  {
    v8 = [v6 objectAtIndexedSubscript:11];
    goto LABEL_19;
  }

LABEL_34:
  v20 = v15;
  v21 = v15;
  v5 = v22;
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:v22, v8, v20, v26, v16, v9, v10, v11, v12, v25, v13, v24, v23];

LABEL_35:
  if (v14)
  {
    v17 = v14;
  }

  else
  {
    v17 = v5;
  }

  v18 = v17;

  return v17;
}

@end
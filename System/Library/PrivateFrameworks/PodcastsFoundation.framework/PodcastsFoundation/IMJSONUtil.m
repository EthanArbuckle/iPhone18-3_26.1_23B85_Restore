@interface IMJSONUtil
+ (id)fromJSONData:(id)a3;
+ (id)fromJSONString:(id)a3;
+ (id)toJSONString:(id)a3;
@end

@implementation IMJSONUtil

+ (id)fromJSONString:(id)a3
{
  if (a3)
  {
    v4 = [a3 dataUsingEncoding:4];
    v5 = [a1 fromJSONData:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)fromJSONData:(id)a3
{
  if (a3)
  {
    v7 = 0;
    v3 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:1 error:&v7];
    v4 = v3;
    v5 = 0;
    if (!v7)
    {
      v5 = v3;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)toJSONString:(id)a3
{
  v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:a3 options:1 error:0];
  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v3 encoding:4];

  return v4;
}

@end
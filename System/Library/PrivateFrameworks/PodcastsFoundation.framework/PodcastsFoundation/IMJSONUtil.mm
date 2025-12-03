@interface IMJSONUtil
+ (id)fromJSONData:(id)data;
+ (id)fromJSONString:(id)string;
+ (id)toJSONString:(id)string;
@end

@implementation IMJSONUtil

+ (id)fromJSONString:(id)string
{
  if (string)
  {
    v4 = [string dataUsingEncoding:4];
    v5 = [self fromJSONData:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)fromJSONData:(id)data
{
  if (data)
  {
    v7 = 0;
    v3 = [MEMORY[0x1E696ACB0] JSONObjectWithData:data options:1 error:&v7];
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

+ (id)toJSONString:(id)string
{
  v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:string options:1 error:0];
  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v3 encoding:4];

  return v4;
}

@end
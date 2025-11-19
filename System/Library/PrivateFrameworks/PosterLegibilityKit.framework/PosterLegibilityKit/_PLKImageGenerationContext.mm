@interface _PLKImageGenerationContext
+ (id)contextWithStartDate:(id)a3 endDate:(id)a4 numberOfBytes:(unint64_t)a5 userInfo:(id)a6;
@end

@implementation _PLKImageGenerationContext

+ (id)contextWithStartDate:(id)a3 endDate:(id)a4 numberOfBytes:(unint64_t)a5 userInfo:(id)a6
{
  v9 = a6;
  v10 = a4;
  v11 = a3;
  v12 = objc_opt_new();
  v13 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v11 endDate:v10];

  v14 = v12[1];
  v12[1] = v13;

  v12[2] = a5;
  v15 = [v9 copy];

  v16 = v12[3];
  v12[3] = v15;

  return v12;
}

@end
@interface _PLKImageGenerationContext
+ (id)contextWithStartDate:(id)date endDate:(id)endDate numberOfBytes:(unint64_t)bytes userInfo:(id)info;
@end

@implementation _PLKImageGenerationContext

+ (id)contextWithStartDate:(id)date endDate:(id)endDate numberOfBytes:(unint64_t)bytes userInfo:(id)info
{
  infoCopy = info;
  endDateCopy = endDate;
  dateCopy = date;
  v12 = objc_opt_new();
  v13 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:dateCopy endDate:endDateCopy];

  v14 = v12[1];
  v12[1] = v13;

  v12[2] = bytes;
  v15 = [infoCopy copy];

  v16 = v12[3];
  v12[3] = v15;

  return v12;
}

@end
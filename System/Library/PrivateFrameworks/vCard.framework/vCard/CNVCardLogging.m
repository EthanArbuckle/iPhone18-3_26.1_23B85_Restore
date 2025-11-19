@interface CNVCardLogging
+ (OS_os_log)meCard;
+ (OS_os_log)vCard;
@end

@implementation CNVCardLogging

+ (OS_os_log)vCard
{
  if (vCard_cn_once_token_1 != -1)
  {
    +[CNVCardLogging vCard];
  }

  v3 = vCard_cn_once_object_1;

  return v3;
}

uint64_t __23__CNVCardLogging_vCard__block_invoke()
{
  vCard_cn_once_object_1 = os_log_create("com.apple.contacts", "vcard");

  return MEMORY[0x2821F96F8]();
}

+ (OS_os_log)meCard
{
  if (meCard_cn_once_token_2 != -1)
  {
    +[CNVCardLogging meCard];
  }

  v3 = meCard_cn_once_object_2;

  return v3;
}

uint64_t __24__CNVCardLogging_meCard__block_invoke()
{
  meCard_cn_once_object_2 = os_log_create("com.apple.contacts", "mecard");

  return MEMORY[0x2821F96F8]();
}

@end
@interface NSURL
@end

@implementation NSURL

id __44__NSURL_UCNSURLExtras__padPayloadToV1Length__block_invoke(int a1, id a2)
{
  v2 = a2;
  v3 = [&stru_28803DBC8 stringByPaddingToLength:32 - objc_msgSend(v2 withString:"length") startingAtIndex:{@"0", 0}];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v3, v2];

  return v4;
}

@end
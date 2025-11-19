@interface CNContactStore(NanoPhone)
+ (id)nph_shared;
@end

@implementation CNContactStore(NanoPhone)

+ (id)nph_shared
{
  if (nph_shared_onceToken != -1)
  {
    +[CNContactStore(NanoPhone) nph_shared];
  }

  v1 = nph_shared_sharedContactStore;

  return v1;
}

@end
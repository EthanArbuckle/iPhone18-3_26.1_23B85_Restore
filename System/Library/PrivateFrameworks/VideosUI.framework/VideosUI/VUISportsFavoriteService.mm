@interface VUISportsFavoriteService
+ (NSString)UserConsentDidChangeNotification;
+ (void)modifyUserConsentWithModification:(_TtC8VideosUI26VUIUserConsentModification *)a3 completionHandler:(id)a4;
@end

@implementation VUISportsFavoriteService

+ (NSString)UserConsentDidChangeNotification
{
  v2 = static VUISportsFavoriteService.UserConsentDidChangeNotification.getter();

  return v2;
}

+ (void)modifyUserConsentWithModification:(_TtC8VideosUI26VUIUserConsentModification *)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = a1;
  v8 = a3;

  sub_1E38364EC(&unk_1E42BEBB8, v7);
}

@end
@interface VUISportsFavoriteService
+ (NSString)UserConsentDidChangeNotification;
+ (void)modifyUserConsentWithModification:(_TtC8VideosUI26VUIUserConsentModification *)modification completionHandler:(id)handler;
@end

@implementation VUISportsFavoriteService

+ (NSString)UserConsentDidChangeNotification
{
  v2 = static VUISportsFavoriteService.UserConsentDidChangeNotification.getter();

  return v2;
}

+ (void)modifyUserConsentWithModification:(_TtC8VideosUI26VUIUserConsentModification *)modification completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  v7[2] = modification;
  v7[3] = v6;
  v7[4] = self;
  modificationCopy = modification;

  sub_1E38364EC(&unk_1E42BEBB8, v7);
}

@end
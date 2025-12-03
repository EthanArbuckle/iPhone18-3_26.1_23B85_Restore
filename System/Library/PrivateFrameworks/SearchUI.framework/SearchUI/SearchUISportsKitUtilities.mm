@interface SearchUISportsKitUtilities
+ (id)sportsFollowStatusDidChangeNotificaitonName;
+ (void)checkForSessionWithCanonicalId:(id)id completionBlock:(id)block;
+ (void)createSessionWithCanonicalId:(id)id completionBlock:(id)block;
+ (void)destroySessionWithCanonicalId:(id)id completionBlock:(id)block;
+ (void)liveActivitiesEnabledWithCompletionBlock:(id)block;
+ (void)postUpdateNotification;
- (_TtC8SearchUI26SearchUISportsKitUtilities)init;
@end

@implementation SearchUISportsKitUtilities

+ (void)liveActivitiesEnabledWithCompletionBlock:(id)block
{
  v3 = _Block_copy(block);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  sub_1DA25F0C4();
  v5 = sub_1DA25F0B4();
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1DA2397A0;
  *(v6 + 24) = v4;
  sub_1DA25DB94();
  sub_1DA25F0A4();
}

+ (void)checkForSessionWithCanonicalId:(id)id completionBlock:(id)block
{
  v5 = sub_1DA25F064();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _Block_copy(block);
  sub_1DA25F244();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  sub_1DA25F0C4();
  v11 = sub_1DA25F0B4();
  (*(v6 + 104))(v8, *MEMORY[0x1E69D3988], v5);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1DA239788;
  *(v12 + 24) = v10;
  sub_1DA25DB94();
  sub_1DA25F094();

  (*(v6 + 8))(v8, v5);
}

+ (void)createSessionWithCanonicalId:(id)id completionBlock:(id)block
{
  v5 = sub_1DA25F064();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _Block_copy(block);
  sub_1DA25F244();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  ObjCClassMetadata = swift_getObjCClassMetadata();
  sub_1DA25F0C4();
  v12 = sub_1DA25F0B4();
  (*(v6 + 104))(v8, *MEMORY[0x1E69D3988], v5);
  v13 = swift_allocObject();
  v13[2] = ObjCClassMetadata;
  v13[3] = sub_1DA23979C;
  v13[4] = v10;
  sub_1DA25DB94();
  sub_1DA25F074();

  (*(v6 + 8))(v8, v5);
}

+ (void)destroySessionWithCanonicalId:(id)id completionBlock:(id)block
{
  v5 = sub_1DA25F064();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _Block_copy(block);
  sub_1DA25F244();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  ObjCClassMetadata = swift_getObjCClassMetadata();
  sub_1DA25F0C4();
  v12 = sub_1DA25F0B4();
  (*(v6 + 104))(v8, *MEMORY[0x1E69D3988], v5);
  v13 = swift_allocObject();
  v13[2] = ObjCClassMetadata;
  v13[3] = sub_1DA23976C;
  v13[4] = v10;
  sub_1DA25DB94();
  sub_1DA25F084();

  (*(v6 + 8))(v8, v5);
}

+ (void)postUpdateNotification
{
  defaultCenter = [objc_opt_self() defaultCenter];
  v3 = sub_1DA25F234();
  [defaultCenter postNotificationName:v3 object:0];
}

+ (id)sportsFollowStatusDidChangeNotificaitonName
{
  v2 = sub_1DA25F234();

  return v2;
}

- (_TtC8SearchUI26SearchUISportsKitUtilities)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SearchUISportsKitUtilities();
  return [(SearchUISportsKitUtilities *)&v3 init];
}

@end
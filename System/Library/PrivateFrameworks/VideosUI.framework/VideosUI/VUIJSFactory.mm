@interface VUIJSFactory
+ (void)exposeObjectsInJSContext:(id)a3;
@end

@implementation VUIJSFactory

+ (void)exposeObjectsInJSContext:(id)a3
{
  v3 = a3;
  v19 = +[VUIAppContext currentAppContext];
  v4 = [[VUIJSNetworkInterface alloc] initWithAppContext:v19];
  [v3 setObject:v4 forKeyedSubscript:@"wlNetworkInterface"];

  v5 = [[VUIJSNotificationCenter alloc] initWithAppContext:v19];
  [v3 setObject:v5 forKeyedSubscript:@"wlNotifications"];

  v6 = [[VUIJSSettingsInterface alloc] initWithAppContext:v19];
  [v3 setObject:v6 forKeyedSubscript:@"wlSettings"];

  v7 = [[VUIJSMetricsInterface alloc] initWithAppContext:v19];
  [v3 setObject:v7 forKeyedSubscript:@"videoMetrics"];

  v8 = [(VUIJSObject *)[VUIJSURLRouterInterface alloc] initWithAppContext:v19];
  [v3 setObject:v8 forKeyedSubscript:@"VideoURLRouterInterface"];

  v9 = [(VUIJSObject *)[VUIJSVideosNativeInterface alloc] initWithAppContext:v19];
  [v3 setObject:v9 forKeyedSubscript:@"videosNative"];

  v10 = [[VUIJSSportsInterface alloc] initWithAppContext:v19];
  [v3 setObject:v10 forKeyedSubscript:@"SportsInterface"];

  v11 = [(VUIJSObject *)[VUIJSOfferInterface alloc] initWithAppContext:v19];
  [v3 setObject:v11 forKeyedSubscript:@"offersInterface"];

  v12 = [(VUIJSObject *)[VUIJSPostPlayItemInterface alloc] initWithAppContext:v19];
  [v3 setObject:v12 forKeyedSubscript:@"PostPlayItemInterface"];

  v13 = [[IKJSAccountInfo alloc] initWithAppContext:v19];
  [v3 setObject:v13 forKeyedSubscript:@"tvAccountInfo"];

  v14 = [(VUIJSObject *)[VUIJSBookmarkInterface alloc] initWithAppContext:v19];
  [v3 setObject:v14 forKeyedSubscript:@"BookmarkCache"];

  v15 = [(VUIJSObject *)[VUIJSPlayerTabsInterface alloc] initWithAppContext:v19];
  [v3 setObject:v15 forKeyedSubscript:@"PlayerTabsInterface"];

  v16 = [(VUIJSObject *)[VUIJSExitUpsellInterface alloc] initWithAppContext:v19];
  [v3 setObject:v16 forKeyedSubscript:@"ExitUpsellInterface"];

  v17 = [[VUIJSSportsKitInterface alloc] initWithAppContext:v19];
  [v3 setObject:v17 forKeyedSubscript:@"SportsKitInterface"];

  v18 = [(VUIJSObject *)[VUIJSKeyPlaysInterface alloc] initWithAppContext:v19];
  [v3 setObject:v18 forKeyedSubscript:@"KeyPlaysInterface"];
}

@end
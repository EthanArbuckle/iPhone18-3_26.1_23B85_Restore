@interface _WKRemoteObjectInterface(SafariSharedExtras)
+ (uint64_t)safari_javaScriptClasses;
@end

@implementation _WKRemoteObjectInterface(SafariSharedExtras)

+ (uint64_t)safari_javaScriptClasses
{
  v0 = MEMORY[0x1E695DFD8];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  return [v0 setWithObjects:{v1, v2, v3, v4, objc_opt_class(), 0}];
}

@end
@interface __SwiftNull
- (id)description;
@end

@implementation __SwiftNull

- (id)description
{
  __s = 0;
  v3 = objc_opt_class();
  Name = class_getName(v3);
  swift_asprintf(&__s, v5, Name, self, self->depth);
  v6 = __s;
  v7 = strlen(__s);
  v8 = swift_stdlib_NSStringFromUTF8(__s, v7);
  free(v6);
  return v8;
}

@end
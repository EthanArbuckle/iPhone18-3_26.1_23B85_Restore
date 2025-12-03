@interface VFXImageSource
- (id)textureSource;
- (void)connectToProxy:(__CFXImageProxy *)proxy;
@end

@implementation VFXImageSource

- (id)textureSource
{
  v3 = sub_1AF0D5194();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDF3CE8(a2);
  }

  return 0;
}

- (void)connectToProxy:(__CFXImageProxy *)proxy
{
  sub_1AF27679C(proxy, self, 0);
  v4[0] = xmmword_1F24EBEA8;
  v4[1] = *&off_1F24EBEB8;
  sub_1AF276824(proxy, v4);
}

@end
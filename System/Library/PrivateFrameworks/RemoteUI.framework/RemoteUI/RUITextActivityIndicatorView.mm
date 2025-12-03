@interface RUITextActivityIndicatorView
- (_TtC8RemoteUI28RUITextActivityIndicatorView)initWithCoder:(id)coder;
@end

@implementation RUITextActivityIndicatorView

- (_TtC8RemoteUI28RUITextActivityIndicatorView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC8RemoteUI28RUITextActivityIndicatorView_activityIndicator;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  v5 = OBJC_IVAR____TtC8RemoteUI28RUITextActivityIndicatorView_label;
  *(&self->super.super.super.isa + v5) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  result = sub_21BA886DC();
  __break(1u);
  return result;
}

@end
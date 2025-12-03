@interface _UIOutlineItemRendererInternal
- (_UIOutlineItemRendererInternal)initWithIdentifier:(id)identifier cellClass:(Class)class handler:(id)handler;
@end

@implementation _UIOutlineItemRendererInternal

- (_UIOutlineItemRendererInternal)initWithIdentifier:(id)identifier cellClass:(Class)class handler:(id)handler
{
  v6.receiver = self;
  v6.super_class = _UIOutlineItemRendererInternal;
  return [(_UIOutlineItemRenderer *)&v6 initWithIdentifier:identifier cellClass:class handler:handler];
}

@end
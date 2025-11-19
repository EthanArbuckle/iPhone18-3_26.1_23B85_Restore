@interface _UIOutlineItemRendererInternal
- (_UIOutlineItemRendererInternal)initWithIdentifier:(id)a3 cellClass:(Class)a4 handler:(id)a5;
@end

@implementation _UIOutlineItemRendererInternal

- (_UIOutlineItemRendererInternal)initWithIdentifier:(id)a3 cellClass:(Class)a4 handler:(id)a5
{
  v6.receiver = self;
  v6.super_class = _UIOutlineItemRendererInternal;
  return [(_UIOutlineItemRenderer *)&v6 initWithIdentifier:a3 cellClass:a4 handler:a5];
}

@end
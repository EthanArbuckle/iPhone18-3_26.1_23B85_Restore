@interface VRXSnippetRenderingContext
- (VRXSnippetRenderingContext)initWithRenderingEvent:(int64_t)event;
@end

@implementation VRXSnippetRenderingContext

- (VRXSnippetRenderingContext)initWithRenderingEvent:(int64_t)event
{
  v8.receiver = self;
  v8.super_class = VRXSnippetRenderingContext;
  v4 = [(VRXSnippetRenderingContext *)&v8 init];
  if (v4)
  {
    v5 = [[_TtC9SnippetUI25RFSnippetRenderingContext alloc] initWithEvent:event];
    snippetRenderingContext = v4->_snippetRenderingContext;
    v4->_snippetRenderingContext = v5;
  }

  return v4;
}

@end
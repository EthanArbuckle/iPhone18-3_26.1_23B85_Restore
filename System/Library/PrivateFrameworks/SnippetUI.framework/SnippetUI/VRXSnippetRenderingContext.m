@interface VRXSnippetRenderingContext
- (VRXSnippetRenderingContext)initWithRenderingEvent:(int64_t)a3;
@end

@implementation VRXSnippetRenderingContext

- (VRXSnippetRenderingContext)initWithRenderingEvent:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = VRXSnippetRenderingContext;
  v4 = [(VRXSnippetRenderingContext *)&v8 init];
  if (v4)
  {
    v5 = [[_TtC9SnippetUI25RFSnippetRenderingContext alloc] initWithEvent:a3];
    snippetRenderingContext = v4->_snippetRenderingContext;
    v4->_snippetRenderingContext = v5;
  }

  return v4;
}

@end
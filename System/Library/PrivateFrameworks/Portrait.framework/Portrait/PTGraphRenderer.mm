@interface PTGraphRenderer
- (PTGraphRenderer)initWithMetalContext:(id)context range:(int)range samples:(int)samples sequences:(id)sequences title:;
- (void)updateWithSequenceId:(int)id value:(float)value frameIndex:(int)index;
@end

@implementation PTGraphRenderer

- (PTGraphRenderer)initWithMetalContext:(id)context range:(int)range samples:(int)samples sequences:(id)sequences title:
{
  contextCopy = context;
  v9 = [(PTGraphRenderer *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_metalContext, context);
    v11 = v10;
  }

  return v10;
}

- (void)updateWithSequenceId:(int)id value:(float)value frameIndex:(int)index
{
  v8 = [(NSMutableArray *)self->_buffers objectAtIndexedSubscript:id];
  contents = [v8 contents];

  *(contents + 4 * (index % self->_samples)) = value;
}

@end
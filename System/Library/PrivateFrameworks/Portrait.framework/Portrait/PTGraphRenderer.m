@interface PTGraphRenderer
- (PTGraphRenderer)initWithMetalContext:(id)a3 range:(int)a4 samples:(int)a5 sequences:(id)a6 title:;
- (void)updateWithSequenceId:(int)a3 value:(float)a4 frameIndex:(int)a5;
@end

@implementation PTGraphRenderer

- (PTGraphRenderer)initWithMetalContext:(id)a3 range:(int)a4 samples:(int)a5 sequences:(id)a6 title:
{
  v8 = a3;
  v9 = [(PTGraphRenderer *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_metalContext, a3);
    v11 = v10;
  }

  return v10;
}

- (void)updateWithSequenceId:(int)a3 value:(float)a4 frameIndex:(int)a5
{
  v8 = [(NSMutableArray *)self->_buffers objectAtIndexedSubscript:a3];
  v9 = [v8 contents];

  *(v9 + 4 * (a5 % self->_samples)) = a4;
}

@end
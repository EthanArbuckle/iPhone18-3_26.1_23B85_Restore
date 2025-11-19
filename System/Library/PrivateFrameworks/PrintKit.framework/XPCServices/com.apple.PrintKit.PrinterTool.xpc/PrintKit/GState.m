@interface GState
- (void)dealloc;
@end

@implementation GState

- (void)dealloc
{
  [(GState *)self setStrokeColorspace:0];
  [(GState *)self setNonStrokeColorspace:0];
  v3.receiver = self;
  v3.super_class = GState;
  [(GState *)&v3 dealloc];
}

@end
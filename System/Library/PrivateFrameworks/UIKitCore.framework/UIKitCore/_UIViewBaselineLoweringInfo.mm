@interface _UIViewBaselineLoweringInfo
- (id)description;
@end

@implementation _UIViewBaselineLoweringInfo

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p baselineOffset = %f, baselineView = %@>", NSStringFromClass(v4), self, *&self->_baselineOffset, self->_baselineView];
}

@end
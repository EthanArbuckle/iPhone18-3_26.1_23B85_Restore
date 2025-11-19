@interface WFHandoffRunDescriptor
- (WFHandoffRunDescriptor)initWithContext:(id)a3;
@end

@implementation WFHandoffRunDescriptor

- (WFHandoffRunDescriptor)initWithContext:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"WFHandoffRunDescriptor.m" lineNumber:16 description:{@"Invalid parameter not satisfying: %@", @"context"}];
  }

  v12.receiver = self;
  v12.super_class = WFHandoffRunDescriptor;
  v7 = [(WFHandoffRunDescriptor *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_context, a3);
    v9 = v8;
  }

  return v8;
}

@end
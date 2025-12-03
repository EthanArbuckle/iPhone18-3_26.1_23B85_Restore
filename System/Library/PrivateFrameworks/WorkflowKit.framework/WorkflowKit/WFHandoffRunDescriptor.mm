@interface WFHandoffRunDescriptor
- (WFHandoffRunDescriptor)initWithContext:(id)context;
@end

@implementation WFHandoffRunDescriptor

- (WFHandoffRunDescriptor)initWithContext:(id)context
{
  contextCopy = context;
  if (!contextCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFHandoffRunDescriptor.m" lineNumber:16 description:{@"Invalid parameter not satisfying: %@", @"context"}];
  }

  v12.receiver = self;
  v12.super_class = WFHandoffRunDescriptor;
  v7 = [(WFHandoffRunDescriptor *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_context, context);
    v9 = v8;
  }

  return v8;
}

@end
@interface TSKMockUIAlert
- (TSKMockUIAlert)initWithTitle:(id)a3 message:(id)a4 cancelButtonTitle:(id)a5 otherButtonTitle:(id)a6;
@end

@implementation TSKMockUIAlert

- (TSKMockUIAlert)initWithTitle:(id)a3 message:(id)a4 cancelButtonTitle:(id)a5 otherButtonTitle:(id)a6
{
  v7.receiver = self;
  v7.super_class = TSKMockUIAlert;
  return [(TSKAbstractAlert *)&v7 init:a3];
}

@end
@interface MTLHUDConfigViewControllerMessageEntry
- (MTLHUDConfigViewControllerMessageEntry)initWithMessage:(id)message color:(unsigned int)color;
@end

@implementation MTLHUDConfigViewControllerMessageEntry

- (MTLHUDConfigViewControllerMessageEntry)initWithMessage:(id)message color:(unsigned int)color
{
  v6.receiver = self;
  v6.super_class = MTLHUDConfigViewControllerMessageEntry;
  result = [(MTLHUDConfigViewControllerEntry *)&v6 initWithTitle:message envVar:0 enabled:1 representedObject:0 type:5 didChange:0];
  if (result)
  {
    result->_color = color;
  }

  return result;
}

@end
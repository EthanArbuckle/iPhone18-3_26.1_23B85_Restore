@interface MTLHUDConfigViewControllerMessageEntry
- (MTLHUDConfigViewControllerMessageEntry)initWithMessage:(id)a3 color:(unsigned int)a4;
@end

@implementation MTLHUDConfigViewControllerMessageEntry

- (MTLHUDConfigViewControllerMessageEntry)initWithMessage:(id)a3 color:(unsigned int)a4
{
  v6.receiver = self;
  v6.super_class = MTLHUDConfigViewControllerMessageEntry;
  result = [(MTLHUDConfigViewControllerEntry *)&v6 initWithTitle:a3 envVar:0 enabled:1 representedObject:0 type:5 didChange:0];
  if (result)
  {
    result->_color = a4;
  }

  return result;
}

@end
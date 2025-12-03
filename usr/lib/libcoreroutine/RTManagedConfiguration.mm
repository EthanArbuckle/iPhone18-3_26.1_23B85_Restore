@interface RTManagedConfiguration
+ (id)allocWithZone:(_NSZone *)zone;
- (RTManagedConfigurationObserver)delegate;
@end

@implementation RTManagedConfiguration

+ (id)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {

    return [RTManagedConfiguration_Embedded allocWithZone:zone];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___RTManagedConfiguration;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, zone);
  }
}

- (RTManagedConfigurationObserver)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
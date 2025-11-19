@interface RTManagedConfiguration
+ (id)allocWithZone:(_NSZone *)a3;
- (RTManagedConfigurationObserver)delegate;
@end

@implementation RTManagedConfiguration

+ (id)allocWithZone:(_NSZone *)a3
{
  if (objc_opt_class() == a1)
  {

    return [RTManagedConfiguration_Embedded allocWithZone:a3];
  }

  else
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___RTManagedConfiguration;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, a3);
  }
}

- (RTManagedConfigurationObserver)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
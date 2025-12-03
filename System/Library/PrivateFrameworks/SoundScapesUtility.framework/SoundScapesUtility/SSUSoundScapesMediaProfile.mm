@interface SSUSoundScapesMediaProfile
- (HMAccessory)backingAccessory;
- (HMHome)home;
- (SSUSoundScapesMediaProfile)initWithAccessory:(id)accessory forHome:(id)home;
@end

@implementation SSUSoundScapesMediaProfile

- (SSUSoundScapesMediaProfile)initWithAccessory:(id)accessory forHome:(id)home
{
  accessoryCopy = accessory;
  homeCopy = home;
  v11.receiver = self;
  v11.super_class = SSUSoundScapesMediaProfile;
  v8 = [(SSUSoundScapesMediaProfile *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(SSUSoundScapesMediaProfile *)v8 setBackingAccessory:accessoryCopy];
    [(SSUSoundScapesMediaProfile *)v9 setHome:homeCopy];
  }

  return v9;
}

- (HMAccessory)backingAccessory
{
  WeakRetained = objc_loadWeakRetained(&self->_backingAccessory);

  return WeakRetained;
}

- (HMHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

@end
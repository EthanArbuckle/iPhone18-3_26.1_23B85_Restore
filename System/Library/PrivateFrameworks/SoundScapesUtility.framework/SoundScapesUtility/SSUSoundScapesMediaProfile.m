@interface SSUSoundScapesMediaProfile
- (HMAccessory)backingAccessory;
- (HMHome)home;
- (SSUSoundScapesMediaProfile)initWithAccessory:(id)a3 forHome:(id)a4;
@end

@implementation SSUSoundScapesMediaProfile

- (SSUSoundScapesMediaProfile)initWithAccessory:(id)a3 forHome:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = SSUSoundScapesMediaProfile;
  v8 = [(SSUSoundScapesMediaProfile *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(SSUSoundScapesMediaProfile *)v8 setBackingAccessory:v6];
    [(SSUSoundScapesMediaProfile *)v9 setHome:v7];
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